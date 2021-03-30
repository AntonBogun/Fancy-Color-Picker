extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	polygon=[Vector2(-1, 1), Vector2(-1, 0), Vector2(-1, -1), Vector2(0, -1), Vector2(1, -1), Vector2(1, 0), Vector2(1, 1), Vector2(-1, 7), Vector2(-1, 6), Vector2(-1, 5), Vector2(0, 5), Vector2(1, 5), Vector2(-2, 4), Vector2(-3, 4), Vector2(-4, 4), Vector2(-4, 3), Vector2(-4, 2), Vector2(-3, 2), Vector2(-2, 2)]
	#polygon=[Vector2(-1,1),Vector2(1,1),Vector2(0,-1)]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
