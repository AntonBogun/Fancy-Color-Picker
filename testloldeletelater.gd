extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func circle1(pos,size):
	var circle = funcref(influence,"pogger1")
	return influence.forinbox(pos,size,circle)
# Called when the node enters the scene tree for the first time.
func _ready():
	#polygon=[Vector2(-1,1),Vector2(1,1),Vector2(0,-1)]
	var circle = funcref(self,"circle1")
	#print(circle1(Vector2(0,-20),9))
	
	
	
	
	
	print()
	
	var ok = influence.new(Vector2(),27,circle)
	ok=influence.expand(ok,circle,27)
	ok = influence.divid(ok,27)
	ok=influence.expand(ok,circle,9)
	ok=influence.divid(ok,9)
	ok=influence.expand(ok,circle,3)
	print(ok)
#	var ok1=[]
#	for i in (ok.size()-ok.size()%2)/2:
#		ok1.append(ok[i])
#	var ok2=[]
#	for i in ok.size()-(ok.size()-ok.size()%2)/2:
#		ok2.append(ok[(ok.size()-ok.size()%2)/2+i])

	
	pass # Replace with function body.

func Dot(a,b):
	return a.dot(b)/(a.length()*b.length())

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
