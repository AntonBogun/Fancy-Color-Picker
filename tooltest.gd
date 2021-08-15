tool
extends Polygon2D



# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var hmm=[Vector2(132.5,113.5),Vector2(132.5,112.5),Vector2(133,112.5),Vector2(133.5,112),Vector2(133.5,111.5),Vector2(134.5,111.5),Vector2(134.5,111.5),Vector2(135.5,111.5),Vector2(135.5,112),Vector2(136,112.5),Vector2(136.5,112.5),Vector2(136.5,112.5),Vector2(138.5,112.5),Vector2(138.5,113),Vector2(139,113.5),Vector2(139.5,113.5),Vector2(139.5,113.5),Vector2(140.5,113.5),Vector2(140.5,114),Vector2(141,114.5),Vector2(141.5,114.5),Vector2(141.5,114.5),Vector2(142.5,114.5),Vector2(142.5,115),Vector2(143,115.5),Vector2(143.5,115.5),Vector2(144,116.5),Vector2(144.5,116.5),Vector2(144.5,117.5),Vector2(144.5,119),Vector2(145,119.5),Vector2(145.5,119.5),Vector2(145.5,120.5),Vector2(145.5,128.5),Vector2(144.5,128.5),Vector2(144.5,128),Vector2(144,127.5),Vector2(143.5,127.5),Vector2(143.5,127.5),Vector2(142.5,127.5),Vector2(142.5,127),Vector2(142,126.5),Vector2(141.5,126.5),Vector2(141.5,126.5),Vector2(140.5,126.5),Vector2(140.5,126),Vector2(140,125.5),Vector2(139.5,125.5),Vector2(139.5,125.5),Vector2(138.5,125.5),Vector2(138.5,125),Vector2(138,124.5),Vector2(137.5,124.5),Vector2(137.5,124.5),Vector2(136.5,124.5),Vector2(136.5,124),Vector2(136,123.5),Vector2(135.5,123.5),Vector2(135.5,123.5),Vector2(134.5,123.5),Vector2(134.5,123),Vector2(134,122.5),Vector2(133.5,122.5),Vector2(133.5,122.5),Vector2(132.5,122.5),Vector2(132.5,121),Vector2(132,120.5),Vector2(131.5,120.5),Vector2(131.5,119.5),Vector2(131.5,115.5),Vector2(132,115.5)]
var once=1
# Called when the node enters the scene tree for the first time.
func _ready():
	polygon=hmm
	pass # Replace with function body.

func _process(delta):
	var m=fmod(round(OS.get_ticks_usec()/10000),200)/100
	color=Color(clamp(fposmod(m,2),0,1),clamp(fposmod(m-(2/3),2),0,1),clamp(fposmod(m-(4/3),2),0,1))
	if once==1:
		polygon=hmm
		once=0

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
