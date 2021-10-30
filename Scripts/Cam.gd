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
var offlim:=[Vector2(-128,-128),Vector2(128,128)]
var defaultzoom:=0.5
#zoom limit for views
var zoomlim:=[0.04,0.5]
var view:=0

func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))

func _ready():
	prevview=get_viewport().size
	#offset=center*prevview/2*zoom
	#_move(Vector2(-128,-128))
	pass
func _offset_reset():
	zoom=Vector2(defaultzoom,defaultzoom)
	offset=center*prevview/2*zoom
	if view==0:
		get_node("../Colorpick").scale=zoom
func _viewport_change():
	offset=offset-center*prevview/2*zoom
	prevview=get_viewport().size
	offset=offset+center*prevview/2*zoom

func _zoom(ratio,where:=Vector2()):
	var real:=offset-center*prevview/2*zoom
	ratio=clamp(ratio,zoom.x/zoomlim[1],zoom.x/zoomlim[0])
	real+=ratiosize/2*where*zoom*(ratio-1)
	zoom/=ratio
	offset=center*prevview/2*zoom+real
	if view==0:
		get_node("../Colorpick").scale=zoom
func _move(where,type=0):
	var real =offset-center*prevview/2*zoom
	
	if type==0:#direct
		real+=where
	elif type==1:#ratio
		real+=where*zoom
		if view==0:
			get_node("../Plane").MousePressed(real)
	elif type==2:#mouserel
		real+=where*zoom
	real=forceinbox(real,offlim[0],offlim[1])
	offset=center*prevview/2*zoom+real


#deprecated
func set_new_view(_view):
	view=_view
	zoom=Vector2(defaultzoom,defaultzoom)
	offset=center*prevview/2*zoom
	if view==0:
		get_node("../Colorpick").scale=zoom
