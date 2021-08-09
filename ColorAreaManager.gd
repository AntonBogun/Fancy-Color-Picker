extends Node2D

var thread:Thread


var torun:Semaphore
var mutex:Mutex
var sliderpath:String="../VSlider"
var colorpath:String=".."

#0 - Start rg, 1 - b, 2 - Type, 3 - Color Node, 4 - Slider Node
var enterinfo:Array=[Vector2(),0,0,null,null]
var typearr:=Array()
#[0]=[colors],[ready polygons]
#[1]=[pending colors],[first/last points]
var globalinfo:Array=[[[],[]],[[],[]]]

#0 - Online, 1 - Running, 2 - Finished, 3 - Visible, 4 - Slider not offset
var status:Array=[false,false,false,true,true]
var lastchange:=false

var prevsize:int=0
var processinfo:Array
var prevstatus:Array=status
var sliderdiff:bool=false


func _ready():
	torun=Semaphore.new()
	mutex=Mutex.new()
	enterinfo[3]=get_node(colorpath)
	enterinfo[4]=get_node(sliderpath)


func ChangeArgs(rg:Vector2,b:int,type:int) -> void:
	mutex.lock()
	enterinfo[0]=rg
	enterinfo[1]=b
	enterinfo[2]=type
	typearr=[rg.x,rg.y,b]
	typearr=[typearr[posmod(-type,3)],typearr[posmod(1-type,3)],typearr[2-type]]
	mutex.unlock()



func Unpause() -> void:
	mutex.lock()
	status[1]=false
# warning-ignore:return_value_discarded
	torun.post()
	mutex.unlock()

func Pause() -> void:
	mutex.lock()
	status[1]=true
	mutex.unlock()



func ThreadStart() -> void:
	status[0]=true
	status[1]=false
	thread=Thread.new()
	var err:int=thread.start(self,"ThreadFunc")
	if err==ERR_CANT_CREATE:
		print("Error: Can't create ColorThread")
	UpdateStatus()


func KillThread() -> void:
	if is_instance_valid(thread) and thread.is_active():
		mutex.lock()
		status[0]=false
# warning-ignore:return_value_discarded
		torun.post()
		status[1]=false
		mutex.unlock()
		thread.wait_to_finish()
		status[2]=false



#Warning: only use after KillThread()
func ClearPolys() -> void:
	globalinfo=[[[],[]],[[],[]]]
	for poly in ($Polygons as Node2D).get_children():
		poly.queue_free()


func ThreadDebug()->void:
# warning-ignore:return_value_discarded
	ThreadLogic()
	lastchange=true


func ThreadFunc(_null) -> void: #apparently without an arg it refuses to start
	while ThreadLogic():
		pass
	#print_debug("Debug: ColorThread finished")
	mutex.lock()
	status[1]=false
	status[2]=true
	lastchange=true
	mutex.unlock()


func ThreadLogic()->bool:
	#print_debug("Debug: Thread Initialized")
	mutex.lock()
	var _pause:bool=!status[1]
	mutex.unlock()
	if _pause:
# warning-ignore:return_value_discarded
		#print_debug("Debug: Thread Paused")
		torun.wait()
		#print_debug("Debug: Thread Unpaused")
	#print_debug("Debug: Thread Running")
	var _start:bool
	var _die:bool
	var _slider:int
	var _type:int
	var _inputarr:Array
	var _bad:=true
	mutex.lock()
	_die=!status[0]
	_start=globalinfo[0][0].empty()
	_inputarr=typearr
	_type=enterinfo[2]
	_slider=_inputarr[2]
	mutex.unlock()
	if _die:
		#print_debug("Debug: Thread exited")
		return false
	var _yx:Vector2
	if _start:
		#print_debug("Debug: Enter Start Pos")
		mutex.lock()
		_yx=Vector2(_inputarr[0],_inputarr[1])
		mutex.unlock()
		_bad=false
	else:
		#print_debug("Debug: Enter Pick Pos")
		mutex.lock()
		#print(globalinfo[0][1])
		for n in globalinfo[1][0].size():
			if !globalinfo[1][0][0] in globalinfo[0][0]:
				_yx=globalinfo[1][1][0]
				globalinfo[1][0].remove(0)
				globalinfo[1][1].remove(0)
				_bad=false
				break
			globalinfo[1][0].remove(0)
			globalinfo[1][1].remove(0)
		mutex.unlock()
	#print_debug("Debug: Passed Pos Pick")
#		print(globalinfo[0][1])
#		print(_pos)
	if !_bad:
		var result:Array=colr.ColorInfluence(_yx,_slider,_type) #issue
		if result[0]==null:
			return true
	#print_debug("Debug: Picked Color")
		mutex.lock()
		globalinfo[0][0].append(result[0][0]) #result col
		globalinfo[0][1].append(result[0][1]) #result info
		globalinfo[1][0].append_array(result[1][0]) #pending cols
		globalinfo[1][1].append_array(result[1][1]) #pending infos
		mutex.unlock()
		return true
	else:
		return false



func _process(_delta:float)->void:
	if status[0]:
		mutex.lock()
		var _lastchange:=lastchange
		mutex.unlock()
		if status[1] or lastchange:
			mutex.lock()
			processinfo=globalinfo
			mutex.unlock()
			var currsize:int=processinfo[0][0].size()
			if currsize!=prevsize:
				for n in currsize-prevsize:
					var poly:Polygon2D=Polygon2D.new()
					$Polygons.add_child(poly)
					#poly.set_owner($Polygons)
					poly.color=colr.ColorNameToColor(processinfo[0][0][prevsize+n])
					poly.polygon=processinfo[0][1][prevsize+n]
					poly.set_script(load("res://colorpick.gd")) #change later for dedicated
					poly.update() #outline script
			prevsize=currsize
			if _lastchange:
				mutex.lock()
				lastchange=false
				mutex.unlock()
		mutex.lock()
		
		sliderdiff=status[4]==(enterinfo[3].slider==typearr[2])
		status[4]=enterinfo[3].slider==typearr[2]
		mutex.unlock()
		
	else:
		ChangeArgs(Vector2(enterinfo[3].r,enterinfo[3].g),enterinfo[3].b,enterinfo[3].type)
	
	
	if prevstatus!=status or sliderdiff:
		UpdateStatus()
	prevstatus=status




#0 - Online, 1 - Running, 2 - Finished, 3 - Visible, 4 - Slider not offset
func _StartButton() -> void: #starts/pauses
#	mutex.lock()
#	if !status[2]:
#		if !status[0]:
#			ThreadStart()
#			status[0]=true
#			status[1]=false
#		elif status[1]:
#			Pause()
#			status[1]=false
#		else:
#			Unpause()
#			status[1]=true
#	mutex.unlock()
#	UpdateStatus()
#	return
	#DEBUG SECTION
	status[0]=true
	status[1]=true
	ThreadDebug()

#0 - Online, 1 - Running, 2 - Finished, 3 - Visible, 4 - Slider not offset
func _ResetButton() -> void: #Reset/Return to slider
	mutex.lock()
	if status[0]:
		if !status[1] and status[4]:
			mutex.unlock()
			KillThread()
			mutex.lock()
			ClearPolys()
		else:
			status[4]=true
			SetSlider(typearr[2],enterinfo[4])
	mutex.unlock()
	UpdateStatus()
	return
func _VisibleButton() -> void: #Toggle visible
	mutex.lock()
	status[3]=!status[3]
	($Polygons as Node2D).visible=status[3]
	mutex.unlock()
	UpdateStatus()
	return
#Color Influence status:
#Offline/running/paused/finished
#Visible/hidden
#Slider Off-center
func UpdateStatus() -> void: #text
	var text:String="Color Influence status:\n"
	mutex.lock()
	($ResetButton as Button).disabled=false
	($VisibleButton as Button).disabled=false
	($StartButton as Button).disabled=false
	if status[0]:
		if status[2]:
			text+="Finished\n"
			($StartButton as Button).disabled=true
			($StartButton as Button).text="Finished"
		elif status[1]:
			text+="Running\n"
			($StartButton as Button).text="Pause"
		else:
			text+="Paused\n"
			($StartButton as Button).text="Continue"
		
		if status[3]:
			text+="Visible\n"
			($VisibleButton as Button).text="Hide"
		else:
			text+="Hidden\n"
			($VisibleButton as Button).text="Show"
		
		if !status[4]:
			text+="Slider Offset"
			($ResetButton as Button).text="Reset Slider"
		else:
			($ResetButton as Button).text="Reset"
	else:
		($ResetButton as Button).disabled=true
		($VisibleButton as Button).disabled=true
		($StartButton as Button).text="Initialize"
		text+="Offline"
	($ThreadStatus as Label).text=text
	mutex.unlock()
	return

func SetSlider(value:int,node)->void:
	node.SetValue(value)

func _exit_tree():
	KillThread()
