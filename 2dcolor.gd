extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var type =0



# Called when the node enters the scene tree for the first time.
func _ready():
	#thats how you pass info to a shader
	material.set_shader_param("vertex0",polygon[0]+position);
	material.set_shader_param("vertex1",polygon[1]+position);
	material.set_shader_param("vertex2",polygon[2]+position);
	material.set_shader_param("vertex3",polygon[3]+position);
	material.set_shader_param("zoom",1/get_node("..").zoom.x);
# warning-ignore:return_value_discarded
	$Button.connect("pressed",self,"_update")
	
	#var strin="["
#	for n in v3:
#		strin+="Vector2"+str(n)+","
#	strin[strin.length()-1]=""
#	strin+="]"
	#var v3=influence.expand(bruharray,circle,3)
	#print(influence.pogger1(Vector2(0,0),9))
	
	
var i=6
var rng=RandomNumberGenerator.new()



func _update():
	#function to update shader (mode)
	type=(type+1)%3
	material.set_shader_param("mode",type)
	$VSlider.material.set_shader_param("mode",type)
# Called every frame. 'delta' is the elapsed time since the previous frame.




func vertconv(vert,viewpoort,zooom):
	#converts point in on the grid to point in viewport
	#adds viewport/2 because the center is in the center (so view/2)
	#then multiplies vert by zoom (for obvious reasons)
	return Vector2(viewpoort.x/2.0+vert.x*zooom,viewpoort.y/2.0+vert.y*zooom)

#pos1=0,0
#pos2=max,max
#(bottom left, top right in cartesian; in bad computer scale top left, bottom right 
func ifinbox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y)
#essentially Vec2(clamp(),clamp())
func forceinbox(pos,pos1,pos2):
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))










var r = 128
var g = 128
var b = 10
var interntype=0
var slider=40
var prevmouseorigin=Vector2()
var prevmouse=Vector2()
var mouseraw=Vector2()
var mousepos=Vector2()

var colorthread
var id=get_instance_id()
var cols=[]
var colsinfo=[]
func ToInt(flot):
	return int(round(flot))

func _process(_delta):
	i-=int(i>0)
	#positions on viewport
	var pos1=vertconv(polygon[0]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var pos2=vertconv(polygon[2]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	
	#get positions on slider - pointless
	#var sliderpos1=vertconv($VSlider.rect_position+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	#var sliderpos2=vertconv($VSlider.rect_size*$VSlider.rect_scale+$VSlider.rect_position++position,get_viewport_rect().size,1/get_node("..").zoom.x)
	
	#get mouse pos + check if pos changed
	
	
	#if mouse pos changed
	var msif = prevmouseorigin!=get_viewport().get_mouse_position()
	msif=msif and Input.is_action_pressed("mouse_left")
	
	
	if msif:
		prevmouseorigin=get_viewport().get_mouse_position()
		mouseraw=(prevmouseorigin-pos1)*get_node("..").zoom.x
		msif=msif and ifinbox(Vector2(mouseraw.x,255-mouseraw.y),Vector2(-100,-100),Vector2(355,355))
		if msif:
			
			mousepos=forceinbox(Vector2(mouseraw.x,255-mouseraw.y),Vector2(),Vector2(255,255))
			msif=mousepos!=prevmouse #and 
			prevmouse=mousepos
	
	
	
	#var ok2 = ifinbox(get_viewport().get_mouse_position(),sliderpos1,sliderpos2)
	
	#provides shader with viewport info
	material.set_shader_param("viewport",get_viewport_rect().size)
	#if change in slider
	var ok2 =(slider!=$VSlider.value)
	
	slider =$VSlider.value
	#and with slider info
	material.set_shader_param("slider",slider)
	
	#if change detected (run color find algorithm)
	if((msif or ok2)&&Input.is_action_pressed("mouse_left") or interntype!=type):
		interntype=type
		#if change in slider - run slider to rgb conversion depending on type
		if ok2:
			if type==1:
				r=slider
			if type==2:
				g=slider
			if type==0:
				b=slider
		elif(msif and interntype==type and !ok2):
			#if mouse in box - run position to color conversion
			
			
			r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
			g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
			b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
		else:
			#change includes button press
			var _r=r
			r=b
			b=g
			g=_r
		r=round(r)
		g=round(g)
		b=round(b)
		#move the color picker+set color+ display current closest color
		$Colorpick.position=Vector2(mousepos.x,255-mousepos.y)-Vector2(128,128)
		$Colorpick.color=Color(r/255,g/255,b/255,1)
		$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
		$ClosestColorLabel.text="Closest color: "+colr.ColorClosestSearch(r,g,b)
		#give slider's shader info
		var _col=colr.ColorClosestSearch(r,g,b)
		var col = colr.ColHexToPos(_col)
		$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
		$VSlider/picksmol.color=Color(r/255,g/255,b/255,1)
		$VSlider.material.set_shader_param("red",r)
		$VSlider.material.set_shader_param("gre",g)
		$VSlider.material.set_shader_param("blu",b)
		
		
		
		
		if(i==0 && msif &&Input.is_action_pressed("mouse_left")):
			i=30
			var _x=round(r)
			var _y=round(g)
			var _slider=round(b)
			
			var name = colr.ColorClosestSearch(_x,_y,_slider)
			var arr=colr.ColorInfluence(Vector2(_x,_y),_slider,[id])
			$Polygon2D.color=Color(0,0,1,1)#colr.ColorNameToColor(name)
#			var _arr =[]
#			for n in floor(arr.size()/2):
#				_arr.append(arr[n])
#			print(_arr)
#			_arr.clear()
#			for n in ceil(arr.size()/2):
#				_arr.append(arr[n+floor(arr.size()/2)])
#			_arr.clear()
			for pos in arr.size():
				
				arr[pos]=Vector2(arr[pos].y,arr[pos].x)
			print(cols)
			print(colsinfo)
			$Polygon2D.polygon=arr
	#print(OS.get_ticks_usec()) #how to get time passed
