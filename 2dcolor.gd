extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var type =0

# Called when the node enters the scene tree for the first time.
func _ready():
	material.set_shader_param("vertex0",polygon[0]+position);
	material.set_shader_param("vertex1",polygon[1]+position);
	material.set_shader_param("vertex2",polygon[2]+position);
	material.set_shader_param("vertex3",polygon[3]+position);
	material.set_shader_param("zoom",1/get_node("..").zoom.x);
	$Button.connect("pressed",self,"_update")
	
	var array3=[1,2,3]
	var array2=[array3,2]
	var array1 = [array2,1 ]
	array2.insert(1,2)
	print(array1[0])
var i=6
var rng=RandomNumberGenerator.new()

func _update():
	type=(type+1)%3
	material.set_shader_param("mode",type)
	$VSlider.material.set_shader_param("mode",type)
# Called every frame. 'delta' is the elapsed time since the previous frame.


func vertconv(vert,viewpoort,zooom):
	return Vector2(viewpoort.x/2.0+vert.x*zooom,viewpoort.y/2.0+vert.y*zooom)


func ifinbox(pos, pos1, pos2):
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y);


func getinfluence(col,_pos,type):
	#col=string,_pos=vector3(int 0-255),type=int 0-2
	var sizearray=[9,3,1]
	var pos = Vector2(_pos[0],_pos[1])
	var slider = _pos[2]
	var pointarr=[]
	
	
	
	#*sizearray - old implementation





var mouseraw=Vector2()
var mousepos=Vector2()


var r = 128
var g = 128
var b = 10

func _process(delta):
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
	if((ok or ok2)&&Input.is_action_pressed("mouse_left")):
		if ok2:
			if type==1:
				r=slider
			if type==2:
				g=slider
			if type==0:
				b=slider
		else:
			mouseraw=(get_viewport().get_mouse_position()-pos1)*get_node("..").zoom.x
			mousepos=Vector2(mouseraw.x,256-mouseraw.y)
			r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
			g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
			b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
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
	
	if(i==0):
		i=6
		#rng.randomize()
		#material.set_shader_param("color",Color(rng.randf(),rng.randf(),rng.randf(),1));
		
	

