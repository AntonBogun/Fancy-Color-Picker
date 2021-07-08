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

#lower left
#top right
#(in cartesian, in bad computer scale top left, bottom right 
func ifinbox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y);

func colorsize(pos,size,args):
	var colorif = funcref(self,"colorif")
	return influence.forinbox(pos,size,colorif,args)

func colorif(pos,args):
	var _slider = args[0]
	var prevname=args[1]
	#var type = args[2]
	#colorarray = smh and search for change, then add and shit and yeah
	var iff=colr.colorclosestsearch(pos.x,pos.y,_slider)==prevname
	var inbox=ifinbox(Vector2(int(pos.x),int(pos.y)),Vector2(),Vector2(255,255))
	#bruh
	return inbox and iff





var mouseraw=Vector2()
var mousepos=Vector2()


var r = 128
var g = 128
var b = 10
var interntype=0
var slider=40



func _process(_delta):
	i-=int(i>0)
	#positions on viewport
	var pos1=vertconv(polygon[0]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var pos2=vertconv(polygon[2]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	#get positions on slider - pointless
	#var sliderpos1=vertconv($VSlider.rect_position+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	#var sliderpos2=vertconv($VSlider.rect_size*$VSlider.rect_scale+$VSlider.rect_position++position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var ok = ifinbox(get_viewport().get_mouse_position(),pos1,pos2)
	#var ok2 = ifinbox(get_viewport().get_mouse_position(),sliderpos1,sliderpos2)
	
	#provides shader with viewport info
	material.set_shader_param("viewport",get_viewport_rect().size)
	#if change in color
	var ok2 =(slider!=$VSlider.value)
	slider =$VSlider.value
	#and with slider info
	material.set_shader_param("slider",slider)
	
	#if change detected (run color find algorithm)
	if((ok or ok2)&&Input.is_action_pressed("mouse_left") or interntype!=type):
		interntype=type
		#if change in slider - run slider to rgb conversion depending on type
		if ok2:
			if type==1:
				r=slider
			if type==2:
				g=slider
			if type==0:
				b=slider
		elif(ok):
			#if mouse in box - run position to color conversion
			mouseraw=(get_viewport().get_mouse_position()-pos1)*get_node("..").zoom.x
			mousepos=Vector2(mouseraw.x,256-mouseraw.y)
			r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
			g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
			b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
		else:
			#change includes button press
			var _r=r
			r=b
			b=g
			g=_r
		r=floor(r)
		g=floor(g)
		b=floor(b)
		#move the color picker+set color+ display current closest color
		$Colorpick.position=mouseraw-Vector2(128,128)
		$Colorpick.color=Color(r/256,g/256,b/256,1)
		$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
		$ClosestColorLabel.text="Closest color: "+colr.colorclosestsearch(r,g,b)
		#give slider's shader info
		var _col=colr.colorclosestsearch(r,g,b)
		var col = colr.colhextopos(_col)
		$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
		$VSlider/picksmol.color=Color(r/256,g/256,b/256,1)
		$VSlider.material.set_shader_param("red",r)
		$VSlider.material.set_shader_param("gre",g)
		$VSlider.material.set_shader_param("blu",b)
		
		if(i==0 && ok &&Input.is_action_pressed("mouse_left"))and false:
			$Polygon2D.test()
		
		
		
#		if(i==0 && ok &&Input.is_action_pressed("mouse_left")):
#			i=10
#			var x=int(mousepos.y)
#			var y=int(mousepos.x)
#
#			var name =colr.colorclosestsearch(x,y,slider)
#			var colorsize = funcref(self,"colorsize")
#			var arr=[]
#			var col_i=0.0
#
#			for _col_i in 2:
#
#				col_i=float(pow(3,2-_col_i))
#				arr = influence.new(Vector2(x,y),col_i,colorsize,[slider,name])
#
#				if arr[0]==null:
#					pass
#				else:
#					break
#
#			while col_i>2:
#				arr=influence.expand(arr,colorsize,col_i,[slider,name])
#				if col_i>4:
#					arr=influence.divid(arr,col_i)
#				col_i=col_i/3
#			$Polygon2D.color=colr.ColorNameToColor(name)
#			$Polygon2D.polygon=arr
			
#
#				pass
			#-1.do when Slider or type changed value
			#0. repeat 1-4 for every 32 pixels
			#1.Find color at point
			#2.new() until size=1
			#3.loop divid(3n)>expand(n) until n=1
			#4.outline() and neatify()
			#5.use fail revenge system to do 3 (without divid, and starting at 1) and 4 for all fails
			
			
			
			
	
	#print(OS.get_ticks_usec()) #how to get time passed
