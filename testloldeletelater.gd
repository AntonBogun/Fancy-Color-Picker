extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func circle1(pos,size,args):
	
	var circle = funcref(influence,"pogger")
	return influence.forinbox(pos,size,circle,args)
# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()

func _ready():
	rng.randomize()
	#print(colr.Dot(Vector2(-1,-1),Vector2(1,-1)))
	var pog=funcref(influence,"pogger")
	print(colr.Neatify(colr.TraceShape(Vector2(20,5),pog,[0])))
	#print(OS.get_ticks_usec()) #how to get time passed
	
	
#	var start = OS.get_ticks_usec()
#	for _i in 100000:
#		var i1=Vector2(rng.randf(),rng.randf())
#		var i2=Vector2(rng.randf(),rng.randf())
#		var k=i1.dot(i2)/sqrt((pow(i1.x,2)+pow(i1.y,2))*(pow(i2.x,2)+pow(i2.y,2)))
#	var bruh = OS.get_ticks_usec()-start
#	print (bruh)
#	start = OS.get_ticks_usec()
#	for _i in 100000:
#		var i1=Vector2(rng.randf(),rng.randf())
#		var i2=Vector2(rng.randf(),rng.randf())
#		var k =cos(i1.angle_to(i2))
#	var end = OS.get_ticks_usec()
#	print (end-start)
	pass
func ifinbox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y);

func colorsize(pos,size,args):
	var colorif = funcref(self,"colorif")
	return influence.forinbox(pos,size,colorif,args)

func colorif(pos,args):
	var _slider = args[0]
	var prevname=args[1]
	#var type = args[2]
	#colorarray = smh and search for change, then add and shit and yeah
	var iff=colr.colorclosestsearch(pos.x,pos.y,_slider)==prevname
	var inbox=ifinbox(Vector2(int(pos.x),int(pos.y)),Vector2(),Vector2(255,255))
	#bruh
	return inbox and iff


func test():
	#polygon=[Vector2(-1,1),Vector2(1,1),Vector2(0,-1)]
	var circle = funcref(self,"circle1")
	#print(circle1(Vector2(0,-20),9))
	
	var mousepos=Vector2(105,215)
	var slider = 5
	var x=int(mousepos.y)
	var y=int(mousepos.x)
	
	var name =colr.colorclosestsearch(x,y,slider)
	var colorsize = funcref(self,"colorsize")
	var arr=[]
	var col_i=0.0
	
	for _col_i in 2:
		
		col_i=float(pow(3,2-_col_i))
		arr = influence.new(Vector2(x,y),col_i,colorsize,[slider,name])
		
		if arr[0]==null:
			pass
		else:
			break
		
	while col_i>2:
		arr=influence.expand(arr,colorsize,col_i,[slider,name])
		if col_i>4:
			arr=influence.divid(arr,col_i)
		col_i=col_i/3
	$Polygon2D.color=colr.ColorNameToColor(name)
	$Polygon2D.polygon=arr
	
	
	print()
	
	var ok = influence.new(Vector2(),1,circle,[0])
	ok = influence.expand(ok,circle,1,[0])
	
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
