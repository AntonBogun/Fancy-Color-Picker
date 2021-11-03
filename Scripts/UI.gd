extends CanvasLayer

#Current color:
#RGB=[url=vec](128,128,128)[/url] [url=code]#808080[/url]

#Closest color:
#[url=code]#808080[/url] [url=name]Gray[/url]


#General Functions

#Clamps vector
func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))
#Subtracts position-limit from vector if position is outside limit
func remove_inbound(vector,position,limit1,limit2):
	return Vector2(
	(abs(vector.x)-max(position.x-limit2.x,0)*int(sign(vector.x)<0)
	-max(limit1.x-position.x,0)*int(sign(vector.x)>0))*sign(vector.x),
	(abs(vector.y)-max(position.y-limit2.y,0)*int(sign(vector.y)<0)
	-max(limit1.y-position.y,0)*int(sign(vector.y)>0))*sign(vector.y))
#Get position-limit if absolute value is above 0, else 0
func get_extra(position,limit1,limit2):
	return Vector2(max(max(limit1.x-position.x,position.x-limit2.x),0)*(1-2*int(position.x<limit1.x)),
	max(max(limit1.y-position.y,position.y-limit2.y),0)*(1-2*int(position.y<limit1.y)))

#General Variables
var InteractFocus=false
var _justenter=false
var view:=0
#Axis Variables
var type=0
var cubemode=0
#General Events
#fullscreen
func _input(event):
	if Input.is_action_just_pressed("f11"):
		OS.window_fullscreen=!OS.window_fullscreen
	if Input.is_action_pressed("quit"):
		get_tree().quit()

func _on_ClosestColorLabel_meta_clicked(meta):
	OS.set_clipboard($MinimumSize/LabelCont/ClosestColorLabel.info[int(meta)])

func _on_ColorLabel_meta_clicked(meta):
	OS.set_clipboard($MinimumSize/LabelCont/ColorLabel.info[int(meta)])

func _on_Interact_focus_entered():
	InteractFocus=true
	_justenter=true
	#print("enter")
	$MinimumSize/Interact.border_color=Color8(15,155,185)

func _on_Interact_focus_exited():
	InteractFocus=false
	$MinimumSize/Interact.border_color=Color8(7,6,100)




func _resized():
	var a=$MinimumSize.rect_min_size
	var b=get_viewport().size
	$TooSmall.visible=a.x>b.x or a.y>b.y
	if a.x<b.x and a.y<b.y:
		get_node("../Cam").ViewportChange()




func _on_Interact_gui_input(event):
	var borders=$MinimumSize/Interact.rect_size
	var off=$MinimumSize/Interact.rect_position
	if Input.is_action_pressed("mouse_left"):
		if Input.is_action_just_pressed("mouse_left") or event is InputEventMouseMotion:
			if view==0:
				get_node("../Axis View").MousePressed()
	if Input.is_action_pressed("mouse_right"):
		if event is InputEventMouseMotion:
			var pos=event.position
			var rel=event.relative
			var rem=remove_inbound(rel,pos,Vector2(),borders)
			if view==0:
				get_node("../Axis View").Move(-(rem+get_extra(pos,Vector2(),borders)),2)
			if view==1:
				get_node("../Cube View").Move(-(rem+get_extra(pos,Vector2(),borders))*0.005)
			var clmp=forceinbox(pos,Vector2(),borders)
			if !(pos.x>=0 and pos.y>=0 and pos.x<=borders.x and pos.y<=borders.y):
				get_viewport().warp_mouse(clmp+off)
	if event is InputEventMouseButton:
		var i=event.button_index 
		var pos=(forceinbox(event.position,Vector2(),borders)-borders/2)/borders*2
		if i==4 or i==5:
			if view==0:
				get_node("../Axis View").Zoom(1+0.05*(9-i*2),pos)
	if event is InputEventKey:
		var arrn=event.scancode-16777231
		var zoomn=event.scancode-43
		if 0<=arrn and arrn<=3 or abs(zoomn)==1:
			_justenter=false
			$MinimumSize/Interact.accept_event()
		

func _process(_delta):
	var left=Input.is_action_pressed("ui_left")
	var right=Input.is_action_pressed("ui_right")
	var up=Input.is_action_pressed("ui_up")
	var down=Input.is_action_pressed("ui_down")
	var zoomin=Input.is_action_pressed("ui_zoom_in")
	var zoomout=Input.is_action_pressed("ui_zoom_out")
	if (left or right or up or down)and not _justenter and InteractFocus:
		#print("Aaaa")
		if view==0:
			get_node("../Axis View").Move(Vector2(int(right)-int(left),int(down)-int(up))*4,1)
		if view==1:
			get_node("../Cube View").Move(Vector2(int(right)-int(left),int(down)-int(up))*0.015)
	if zoomin or zoomout:
		if view==0:
			get_node("../Axis View").Zoom(1+0.025*(int(zoomin)-int(zoomout)))




func _on_Type_pressed():
	type=(type+1)%3
	($MinimumSize/AxisView/VSlider/Shader as Polygon2D).material.set_shader_param("type",type)
	$MinimumSize/AxisView/GridContainer/Type.text=("R" if type==2 else ("G" if type==1 else "B"))
	get_node("../Axis View").TypeChange(type)


func _on_ClosestColor_toggled(button_pressed):
	$MinimumSize/AxisView/GridContainer/ClosestColor.text="CC:"+("On" if button_pressed else "Off")
	get_node("../Axis View").FillInChange(button_pressed)


func _on_Outline_toggled(button_pressed):
	$MinimumSize/AxisView/GridContainer/Outline.text="OL:"+("On" if button_pressed else "Off")
	get_node("../Axis View").OutlineChange(button_pressed)

func _on_VSlider_value_changed(value):
	get_node("../Axis View").SliderChange(value)

func _on_OptionButton_item_selected(index):
	get_node("../Axis View").ChangeActive(index==0)
	$MinimumSize/AxisView.visible=index==0
	get_node("../Cube View").ChangeActive(index==1)
	view=index

#CAM EVENTS:
#ViewportChange
#SHARED EVENTS:
#ChangeActive()

#AXIS EVENTS:
#MousePressed(useglobal=true,where=Vector2()), Move(where,type), Zoom(value,where), ViewportChanged()
#OutlineChange(value), FillInChange(value), TypeChange(type), SliderChange(value)

#CUBE EVENTS:
#Move(where,type)
#Current Color, Found Color, Color Name, Type
func UpdateUIAxis(col:Color,colfound:Color,colname:String)->void:
	var cl=$MinimumSize/LabelCont/ColorLabel
	cl.info=["%d,%d,%d"%[col.r8,col.g8,col.b8],
	colr.IntToHexR(colr.Int3ToInfo(col.r8,col.g8,col.b8),6)]
	cl.bbcode_text=(
		"Current color:\nRGB=[url=0](%s)[/url] [url=1]%s[/url]"%[cl.info[0],cl.info[1]])
	var ccl=$MinimumSize/LabelCont/ClosestColorLabel
	ccl.info=[colr.IntToHexR(colr.Int3ToInfo(colfound.r8,colfound.g8,colfound.b8),6),colname]
	($MinimumSize/LabelCont/ClosestColorLabel as RichTextLabel).bbcode_text=(
		"Current color:\n[url=0]%s[/url] [url=1]%s[/url]"%[ccl.info[0],ccl.info[1]])
	
	($MinimumSize/ColorShow as ColorRect).color=colfound
	($MinimumSize/AxisView/VSlider/picksmol as Polygon2D).color=col
	($MinimumSize/AxisView/VSlider/Shader as Polygon2D).material.set_shader_param("r",col.r8)
	($MinimumSize/AxisView/VSlider/Shader as Polygon2D).material.set_shader_param("g",col.g8)
	($MinimumSize/AxisView/VSlider/Shader as Polygon2D).material.set_shader_param("b",col.b8)

#TODO:
# -List all events
# -Change UI to work based on type_index array system ([0]=main view, [1]=all view modifiers
# -Change Axis View to support events and limit all interactions to be handled by main node
# -Change Axis View camera to not be retarded
# -Come up with a good UI switch system based on type_index
# -Start working on Cube View 


func _on_CubeModeButton_pressed():
	cubemode=(cubemode+1)%2
	if cubemode==0:
		$MinimumSize/CubeView/CubeModeButton.text="Orbit Mode"
	else:
		$MinimumSize/CubeView/CubeModeButton.text="Free Mode"
	get_node("../Cube View").ChangeMode(cubemode)
	
	pass # Replace with function body.
