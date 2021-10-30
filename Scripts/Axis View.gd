extends Polygon2D

#func viewtogrid(p:Vector2,vsize:Vector2,z:float)->Vector2:
#	return p*z+vsize/2 #Vector2(vsize.x/2.0+p.x*z,vsize.y/2.0+p.y*z)
#func ifinbox(pos:Vector2, pos1:Vector2, pos2:Vector2)->bool:
#	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y)

#essentially Vec2(clamp(),clamp())
func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))

var type:=0
var r := 128
var g := 128
var b := 128
var slider:=128
var prevmouseorigin:=Vector2()
var prevmouse:=Vector2()
var mouseraw:=Vector2()
var mousepos:=Vector2(128,128)
var performedupdate:=false
var outline:=false
var fill_in:=false
func _TypeButton():
	#function to update shader (type)
	type=(type+1)%3
	PerformUpdate()

func _ready():
	connect("UpdateUI",get_node("../UI"),"UpdateUI")

func SliderChange(value:float)->void:
	slider=int(value)
	PerformUpdate()


func TypeChange(newtype:int)->void:
	type=newtype
	PerformUpdate()
func OutlineChange(state:bool)->void:
	outline=state
	PerformUpdate()
func FillInChange(state:bool)->void:
	fill_in=state
	PerformUpdate()

#Current Color, Found Color, Color Name
signal UpdateUI(col,colfound,colname)
func PerformUpdate()->void:
	if !performedupdate:
		performedupdate=true
		set_deferred("performedupdate",false)#Example of how to collapse signals to 1/frame
		#get rgb depending on mousepos,slider and type
		r =int(min(mousepos.x*float(type==1)+mousepos.y*float(type==0)+slider*float(type==2),255))
		g =int(min(mousepos.x*float(type==0)+mousepos.y*float(type==2)+slider*float(type==1),255))
		b =int(min(mousepos.x*float(type==2)+mousepos.y*float(type==1)+slider*float(type==0),255))
		
		var col:Color=Color8(r,g,b)
		var colinfo:int=colr.InfoClosestSearch(r,g,b)
		var colfound:Color= colr.InfoToCol(colinfo)
		var colname:String=colr.InfoToName(colinfo)
		
		emit_signal("UpdateUI",col,colfound,colname)
		
		($Colorpick as Polygon2D).position=Vector2(mousepos.x-128,128-mousepos.y)
		($Colorpick as Polygon2D).color=col
		$Plane.material.set_shader_param("type",type)
		$Plane.material.set_shader_param("slider",slider)
		$ColorFindPort/Shader.material.set_shader_param("slider",slider)
		$ColorFindPort/Shader.material.set_shader_param("type",type)
		
		
		#get_node("ColorFindPort").get_texture().get_data().save_png("test1.png")
		#printt(Vector3(r,g,b))
		$Shader.material.set_shader_param("textre",get_node("ColorFindPort").get_texture())
		$Shader.material.set_shader_param("fill_in",fill_in)
		$Shader.material.set_shader_param("online",outline)
		#var i= $ColorFindPort.get_texture().get_data()
		#i.resize(512,512)
		#i.save_png("test1.png")

func MousePressed(globalmouse:Vector2)->void:
	if visible==true:
		
		var _newmouse=forceinbox(Vector2(128+globalmouse.x,128-globalmouse.y),Vector2(),Vector2(256,256))
		#printt(globalmouse,_newmouse)
		var _performupd=mousepos!=_newmouse
		mousepos=_newmouse
		if _performupd:
			PerformUpdate()

func Active()->void:
	pass
func Inactive()->void:
	pass
#func _process(_delta):
#	get_node("ColorFindPort/Shader").material.set_shader_param("slider",[r,g,b][2-type])
#	get_node("ColorFindPort/Shader").material.set_shader_param("type",type)
#	$Shader.texture=get_node("ColorFindPort").get_texture()


#func _process(_delta): #NOTHING should be in the process
	
	#positions on viewport
	#var posedge:Vector2=vertconv(polygon[0]+position,get_viewport_rect().size,1/(get_node("..")as Camera2D).zoom.x)
	#material.set_shader_param("slider",slider)
	
	
	#if change detected (run color find algorithm)
	
	
	#add this under update
	
#		$Colorpick.position=Vector2(mousepos.x,255-mousepos.y)-Vector2(128,128)
#		$Colorpick.color=Color(r/255,g/255,b/255,1)
#		$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
#		$ClosestColorLabel.text="Closest color: "+colr.ColorClosestSearch(r,g,b)
#		$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
#		$VSlider/picksmol.color=Color(r/255,g/255,b/255,1)
#		$VSlider.material.set_shader_param("red",r)
#		$VSlider.material.set_shader_param("gre",g)
#		$VSlider.material.set_shader_param("blu",b)





