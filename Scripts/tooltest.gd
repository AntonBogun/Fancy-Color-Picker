tool
extends Polygon2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var hmm=[Vector2(129.5,113.5),Vector2(132.5,112.5),Vector2(133,112.5),Vector2(133.5,112),Vector2(133.5,111.5),Vector2(134.5,111.5),Vector2(134.5,111.5),Vector2(135.5,111.5),Vector2(135.5,112),Vector2(136,112.5),Vector2(136.5,112.5),Vector2(136.5,112.5),Vector2(138.5,112.5),Vector2(138.5,113),Vector2(139,113.5),Vector2(139.5,113.5),Vector2(139.5,113.5),Vector2(140.5,113.5),Vector2(140.5,114),Vector2(141,114.5),Vector2(141.5,114.5),Vector2(141.5,114.5),Vector2(142.5,114.5),Vector2(142.5,115),Vector2(143,115.5),Vector2(143.5,115.5),Vector2(144,116.5),Vector2(144.5,116.5),Vector2(144.5,117.5),Vector2(144.5,119),Vector2(145,119.5),Vector2(145.5,119.5),Vector2(145.5,120.5),Vector2(145.5,128.5),Vector2(144.5,128.5),Vector2(144.5,128),Vector2(144,127.5),Vector2(143.5,127.5),Vector2(143.5,127.5),Vector2(142.5,127.5),Vector2(142.5,127),Vector2(142,126.5),Vector2(141.5,126.5),Vector2(141.5,126.5),Vector2(140.5,126.5),Vector2(140.5,126),Vector2(140,125.5),Vector2(139.5,125.5),Vector2(139.5,125.5),Vector2(138.5,125.5),Vector2(138.5,125),Vector2(138,124.5),Vector2(137.5,124.5),Vector2(137.5,124.5),Vector2(136.5,124.5),Vector2(136.5,124),Vector2(136,123.5),Vector2(135.5,123.5),Vector2(135.5,123.5),Vector2(134.5,123.5),Vector2(134.5,123),Vector2(134,122.5),Vector2(133.5,122.5),Vector2(133.5,122.5),Vector2(132.5,122.5),Vector2(132.5,121),Vector2(132,120.5),Vector2(131.5,120.5),Vector2(131.5,119.5),Vector2(131.5,115.5),Vector2(132,115.5)]
var once=1
# Called when the node enters the scene tree for the first time.
func _ready():
	polygon=hmm
	pass # Replace with function body.

func _process(_delta):
	#warning-ignore:integer_division
	var m=fmod(OS.get_ticks_msec(),3000)/1000
	var r=int(m<1.0)*cos(m*PI/2)+int(m>2.0)*sin((m-2)*PI/2)
	var g=int(m>1.0&&m<2.0)*cos((m-1)*PI/2)+int(m<1.0)*sin((m)*PI/2)
	var b=int(m>2.0)*cos((m-2)*PI/2)+int(m>1.0&&m<2.0)*sin((m-1)*PI/2)
	color=Color(r,g,b)
	if once==1:
		polygon=hmm
		once=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
