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
var mouseraw=Vector2()
var mousepos=Vector2()
func _process(delta):
	i-=int(i>0)
	var pos1=vertconv(polygon[0]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var pos2=vertconv(polygon[2]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var ok = ifinbox(get_viewport().get_mouse_position(),pos1,pos2)
	material.set_shader_param("viewport",get_viewport_rect().size)
	var slider =$VSlider.value
	material.set_shader_param("slider",slider)
	if(ok&&Input.is_action_pressed("mouse_left")):
		mouseraw=(get_viewport().get_mouse_position()-pos1)*get_node("..").zoom.x
		mousepos=Vector2(mouseraw.x,256-mouseraw.y)
		
	var r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
	var g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
	var b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
	$Colorpick.position=mouseraw-Vector2(128,128)
	$Colorpick.color=Color(r/256,g/256,b/256,1)
	$VSlider/picksmol.color=Color(r/256,g/256,b/256,1)
	$VSlider.material.set_shader_param("red",r)
	$VSlider.material.set_shader_param("gre",g)
	$VSlider.material.set_shader_param("blu",b)
	#print(ok)
	if(i==0):
		i=6
		#rng.randomize()
		#material.set_shader_param("color",Color(rng.randf(),rng.randf(),rng.randf(),1));
		

