extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func circle1(pos,size):
	var circle = funcref(influence,"pogger")
	return influence.forinbox(pos,size,circle)
# Called when the node enters the scene tree for the first time.
func _ready():
	#polygon=[Vector2(-1,1),Vector2(1,1),Vector2(0,-1)]
	var circle = funcref(self,"circle1")
	#print(circle1(Vector2(0,-20),9))
	var v9=influence.expand(influence.new(Vector2(),9,circle)[0],circle,9)
	#var v9=influence.expand(bruharray,circle,9)
	var v3=influence.divid(v9,9)
	v3=influence.expand(v3,circle,3)
	var v1=influence.divid(v3,3)
	v1=influence.expand(v1,circle,1)
	polygon=influence.outline(v1,1)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
