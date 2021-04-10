extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var type =0

func circle1(pos,size):
	var circle = funcref(influence,"pogger")
	return influence.forinbox(pos,size,circle)

func colorif(pos,size,col):
	var colorif=funcref(colr,"color")
	influence.expand(influence.new(Vector2(),9,colorif)[0],colorif,9)

# Called when the node enters the scene tree for the first time.
func _ready():
	material.set_shader_param("vertex0",polygon[0]+position);
	material.set_shader_param("vertex1",polygon[1]+position);
	material.set_shader_param("vertex2",polygon[2]+position);
	material.set_shader_param("vertex3",polygon[3]+position);
	material.set_shader_param("zoom",1/get_node("..").zoom.x);
	$Button.connect("pressed",self,"_update")
	
	#print(circle1(Vector2(),9))
	#print("huetest")
	#print(7/2)
#	var circle = funcref(self,"circle1")
#	#print(circle1(Vector2(0,-20),9))
#	var v9=influence.expand(influence.new(Vector2(),9,circle)[0],circle,9)
#	#var v9=influence.expand(bruharray,circle,9)
#	var v3=influence.divid(v9,9)
#	v3=influence.expand(v3,circle,3)
#	var v1=influence.divid(v3,3)
#	v1=influence.expand(v1,circle,1)
#	print(influence.outline(v1,1))
	
	#var strin="["
#	for n in v3:
#		strin+="Vector2"+str(n)+","
#	strin[strin.length()-1]=""
#	strin+="]"
	#var v3=influence.expand(bruharray,circle,3)
	#print(influence.pogger1(Vector2(0,0),9))
	
	
var i=6
var rng=RandomNumberGenerator.new()

func test(_r,_g,_b,size):
	print("\n --------------------- \n"+str(influence.iff(Vector2(r,g),size,colr.colorclosestsearch(r,g,b),b))+"=iff\n")
	print(colr.colorclosestsearch(r,g,b)+" at point"+str(Vector3(r,g,b))+"\n")
	var box = [Vector2(4,4),Vector2(4,-4),Vector2(-4,4),Vector2(-4,-4)]
	for i in box:
		print(str(r+i.x)+" "+str(g+i.y)+colr.closestcolorsearch(r+i.x,g+i.y,b))

func _update():
	type=(type+1)%3
	material.set_shader_param("mode",type)
	$VSlider.material.set_shader_param("mode",type)
# Called every frame. 'delta' is the elapsed time since the previous frame.


	

func vertconv(vert,viewpoort,zooom):
	return Vector2(viewpoort.x/2.0+vert.x*zooom,viewpoort.y/2.0+vert.y*zooom)


func ifinbox(pos, pos1, pos2):
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y);








var mouseraw=Vector2()
var mousepos=Vector2()


var r = 128
var g = 128
var b = 10
var interntype=0
func _process(_delta):
	i-=int(i>0)
	var pos1=vertconv(polygon[0]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var pos2=vertconv(polygon[2]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var sliderpos1=vertconv($VSlider.rect_position+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var sliderpos2=vertconv($VSlider.rect_size*$VSlider.rect_scale+$VSlider.rect_position++position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var ok = ifinbox(get_viewport().get_mouse_position(),pos1,pos2)
	var ok2 = ifinbox(get_viewport().get_mouse_position(),sliderpos1,sliderpos2)
	material.set_shader_param("viewport",get_viewport_rect().size)
	var slider =$VSlider.value
	material.set_shader_param("slider",slider)
	if((ok or ok2)&&Input.is_action_pressed("mouse_left") or interntype!=type):
		interntype=type
		if ok2:
			if type==1:
				r=slider
			if type==2:
				g=slider
			if type==0:
				b=slider
		elif(ok):
			mouseraw=(get_viewport().get_mouse_position()-pos1)*get_node("..").zoom.x
			mousepos=Vector2(mouseraw.x,256-mouseraw.y)
			r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
			g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
			b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
		else:
			var _r=r
			r=b
			b=g
			g=_r
		r=floor(r)
		g=floor(g)
		b=floor(b)
		$Colorpick.position=mouseraw-Vector2(128,128)
		$Colorpick.color=Color(r/256,g/256,b/256,1)
		$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
		$ClosestColorLabel.text="Closest color: "+colr.colorclosestsearch(r,g,b)
		var _col=colr.colorclosestsearch(r,g,b)
		var col = colr.colhextopos(_col)
		#print(str(r)+" "+str(g)+" "+str(b))
		
		$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
		$VSlider/picksmol.color=Color(r/256,g/256,b/256,1)
		$VSlider.material.set_shader_param("red",r)
		$VSlider.material.set_shader_param("gre",g)
		$VSlider.material.set_shader_param("blu",b)
		#print(ok)
		if(i==0 && Input.is_action_pressed("ui_accept")):
			i=10
			#print(test(r,g,b,9))
			#var arr=influence.arrcreate(Vector2(r,g),3,colr.closestcolorsearch(r,g,b),b)
			var arr = [[Vector2(0,0)],true]
#			print(arr[0])
			if arr[1]:
				print(influence.divid(arr[0],3))
			else:
				print("bruv")
			#print(influence.arrcreate(Vector2(r,g),9,colr.colorclosestsearch(r,g,b),b))
			
	
	
	

