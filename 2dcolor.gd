extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"










func vertconv(vert:Vector2,viewpoort:Vector2,zooom:float)->Vector2:
	#converts point in on the grid to point in viewport
	#adds viewport/2 because the center is in the center (so view/2)
	#then multiplies vert by zoom (for obvious reasons)
	return Vector2(viewpoort.x/2.0+vert.x*zooom,viewpoort.y/2.0+vert.y*zooom)

#pos1=0,0
#pos2=max,max
#(bottom left, top right in cartesian; in bad computer scale top left, bottom right 
func ifinbox(pos:Vector2, pos1:Vector2, pos2:Vector2)->bool:
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y)
#essentially Vec2(clamp(),clamp())
func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))









var type:=0
var interntype:=0
var r := 128
var g := 128
var b := 128
var slider:=128
var prevmouseorigin:=Vector2()
var prevmouse:=Vector2()
var mouseraw:=Vector2()
var mousepos:=Vector2(128,128)


func _TypeButton():
	#function to update shader (mode)
	type=(type+1)%3
	material.set_shader_param("mode",type)
	$VSlider.material.set_shader_param("mode",type)

# Called when the node enters the scene tree for the first time.
func _ready():
	#thats how you pass info to a shader
	material.set_shader_param("vertex0",polygon[0]+position);
	material.set_shader_param("vertex1",polygon[1]+position);
	material.set_shader_param("vertex2",polygon[2]+position);
	material.set_shader_param("vertex3",polygon[3]+position);
	material.set_shader_param("zoom",1/get_node("..").zoom.x);
# warning-ignore:return_value_discarded
	
	
	$VSlider.material.set_shader_param("red",r)
	$VSlider.material.set_shader_param("gre",g)
	$VSlider.material.set_shader_param("blu",b)



func _process(_delta):
	#positions on viewport
	var posedge:Vector2=vertconv(polygon[0]+position,get_viewport_rect().size,1/(get_node("..")as Camera2D).zoom.x)
	material.set_shader_param("slider",slider)
	material.set_shader_param("viewport",get_viewport_rect().size)
	#if mouse pos changed
	var msif:bool = prevmouseorigin!=get_viewport().get_mouse_position()
	msif=msif and Input.is_action_pressed("mouse_left")
	
	
	if msif:
		prevmouseorigin=get_viewport().get_mouse_position()
		mouseraw=(prevmouseorigin-posedge)*(get_node("..")as Camera2D).zoom.x
		msif=msif and ifinbox(Vector2(mouseraw.x,255-mouseraw.y),Vector2(-100,-100),Vector2(355,355))
		if msif:
			mousepos=forceinbox(Vector2(mouseraw.x,255-mouseraw.y),Vector2(),Vector2(255,255))
			msif=mousepos!=prevmouse #and 
			prevmouse=mousepos
	#if change in slider
	var ok2:bool =(slider!=($VSlider as VSlider).value)
	slider =($VSlider as VSlider).value
	
	
	
	#and with slider info
	
	#if change detected (run color find algorithm)
	if((msif or ok2)&&Input.is_action_pressed("mouse_left") or interntype!=type):
		
		r =int(round(mousepos.x*float(type==1)+mousepos.y*float(type==0)+slider*float(type==2)))
		g =int(round(mousepos.x*float(type==0)+mousepos.y*float(type==2)+slider*float(type==1)))
		b =int(round(mousepos.x*float(type==2)+mousepos.y*float(type==1)+slider*float(type==0)))
		interntype=type
		
		
		var col:Color=Color8(r,g,b)
		var colinfo:int=colr.InfoClosestSearch(r,g,b)
		var colfound:Color= colr.InfoToCol(colinfo)
		var colname:String=colr.InfoToName(colinfo)
		UpdateChildren(mousepos,col,colfound,colinfo,colname)
		
#		$Colorpick.position=Vector2(mousepos.x,255-mousepos.y)-Vector2(128,128)
#		$Colorpick.color=Color(r/255,g/255,b/255,1)
#		$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
#		$ClosestColorLabel.text="Closest color: "+colr.ColorClosestSearch(r,g,b)
#		$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
#		$VSlider/picksmol.color=Color(r/255,g/255,b/255,1)
#		$VSlider.material.set_shader_param("red",r)
#		$VSlider.material.set_shader_param("gre",g)
#		$VSlider.material.set_shader_param("blu",b)

func UpdateChildren(pos:Vector2,col:Color,colfound:Color,colinfo:int,colname:String)->void:
	($Colorpick as Polygon2D).position=Vector2(pos.x,255-pos.y)-Vector2(128,128)
	($Colorpick as Polygon2D).color=col
	($ColorLabel as RichTextLabel).text="Current color:\n("+str(col.r8)+","+str(col.g8)+","+str(col.b8)+")"
	var info="(%d,%d,%d) [%d,%d,%d] "%[colfound.r8,colfound.g8,colfound.b8,colfound.r8/32,colfound.g8/32,colfound.b8/32]
	($ClosestColorLabel as RichTextLabel).text="Closest color: "+info+colname
	($ColorShow as Polygon2D).color=colfound
	($VSlider/picksmol as Polygon2D).color=col
	($VSlider as VSlider).material.set_shader_param("red",col.r8)
	($VSlider as VSlider).material.set_shader_param("gre",col.g8)
	($VSlider as VSlider).material.set_shader_param("blu",col.b8)



