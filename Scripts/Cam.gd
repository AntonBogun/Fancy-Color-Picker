extends Camera2D


#ui section
var border:=[Vector2(0.025,0.044),Vector2(0.7,0.85)]
#center of ui section
var center:Vector2=Vector2(1,1)-border[0]-border[1]
#previous viewport size, needed to not offset everything when window changes (i think)
var prevview:=Vector2(1344,756)
#default size at zoom=1
onready var ratiosize:=Vector2(
	ProjectSettings.get_setting("display/window/size/width"),
	ProjectSettings.get_setting("display/window/size/height"))

#offset limit (real) for views
var axis_offlim:=[Vector2(-128,-128),Vector2(128,128)]

var axis_defaultzoom:=0.5
var cube_defaultzoom:=1
#zoom limits for views
var axis_zoomlim:=[0.04,0.5]
#??? idk man current system more verbose but understandable
var view:=0

func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))

func _ready():
	prevview=get_viewport().size
	#offset=center*prevview/2*zoom
	#_move(Vector2(-128,-128))
	pass

func _axis_offset_reset():
	zoom=Vector2(1,1)*axis_defaultzoom
	offset=center*prevview/2*zoom
	
	get_node("../Axis View/Colorpick").scale=zoom
func ViewportChange():
	offset=offset-center*prevview/2*zoom
	prevview=get_viewport().size
	offset=offset+center*prevview/2*zoom

func _axis_zoom(ratio,where):
	var real:=offset-center*prevview/2*zoom
	ratio=clamp(ratio,zoom.x/axis_zoomlim[1],zoom.x/axis_zoomlim[0])
	real+=ratiosize/2*where*zoom*(ratio-1)
	zoom/=ratio
	offset=center*prevview/2*zoom+real
	get_node("../Axis View/Colorpick").scale=zoom
func _axis_move(where,type):
	var real =offset-center*prevview/2*zoom
	
	if type==0:#direct
		real+=where
	elif type==1:#ratio
		real+=where*zoom
		get_node("../Axis View").MousePressed(false,real)
	elif type==2:#mouserel
		real+=where*zoom
	real=forceinbox(real,axis_offlim[0],axis_offlim[1])
	offset=center*prevview/2*zoom+real

func _cube_offset_reset():
	zoom=Vector2(1,1)*cube_defaultzoom#*(1/(border[1].y-border[0].y))
	offset=center*prevview/2*zoom
	pass
#deprecated
#func set_new_view(_view):
#	view=_view
#	zoom=Vector2(1,1)*axis_defaultzoom
#	offset=center*prevview/2*zoom
#	if view==0:
#		get_node("../Axis View/Colorpick").scale=zoom
