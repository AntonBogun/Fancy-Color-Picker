extends Camera2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var offset=0
var border=[Vector2(0.025,0.044),Vector2(0.7,0.85)]
var center=Vector2(1,1)-border[0]-border[1]
var prevview=Vector2()
var ratiosize=Vector2(1344,756)
var offlim=[Vector2(-128,-128),Vector2(128,128)]
# Called when the node enters the scene tree for the first time.
func forceinbox(pos:Vector2,pos1:Vector2,pos2:Vector2)->Vector2:
	return Vector2(min(max(pos.x,pos1.x),pos2.x),min(max(pos.y,pos1.y),pos2.y))
func _ready():
	prevview=get_viewport().size
	offset=center*prevview/2*zoom
	#_move(Vector2(-128,-128))
	pass # Replace with function body.

func _viewport_change():
	offset=offset-center*prevview/2*zoom
	prevview=get_viewport().size
	offset=offset+center*prevview/2*zoom

func _zoom(ratio,where=Vector2()):
	var vp=get_viewport().size
	var real=offset-center*vp/2*zoom
	ratio=clamp(ratio,zoom.x/0.5,zoom.x/0.1)
	real+=ratiosize/2*where*zoom*(ratio-1)
	zoom/=ratio
	offset=center*vp/2*zoom+real
	get_node("../2dcolor/Colorpick").scale=zoom

func _move(where,type=0):
	var vp=get_viewport().size
	var real =offset-center*vp/2*zoom
	if type==0:#direct
		real+=where
	elif type==1:#ratio
		real+=where*zoom
		get_node("../2dcolor").MousePressed(real)
	elif type==2:#mouserel
		real+=where*zoom
	real=forceinbox(real,offlim[0],offlim[1])
	offset=center*vp/2*zoom+real

