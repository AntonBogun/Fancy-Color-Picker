extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func circle1(pos,size,args):
	
	var circle = funcref(influence,"pogger")
	return influence.forinbox(pos,size,circle,args)
# Called when the node enters the scene tree for the first time.
var rng = RandomNumberGenerator.new()


#Plan:
#3d view + cross-section
#1. make 3d cube in 2d
#2. add rotate method (two angle)
#3. make semi-transparent mode (easy if use planes)
#4. allow a point to be dragged anywhere "on" the cube you are looking at
#5. display where point is
#6. attach plane to point
#7. add control method for plane (two angle)
#8. figure out how to get projection of cross-section onto a parallel plane in terms of a polygon
#9. die trying to get a shader to work with all of this and draw colors on cross section separately

#Useful funcs:
#prints(a,b,c)="a b c"
#
#smoothstep()
#step_decimals
#modpos()
#sign()
#stepify()
#
#get_children()
#typename.new()
#set_owner() [need to be child]
#set_script(load("res://"))
#instance_from_id()
#get_instance_id()
#is_instance_valid()
#
#signal nameofsignal(args)
#node_with_signal.connect("signalname",node_with_func,"func")
#emit_signal("signame",args)






#Useful info:

#Editor:
#Tool script for stuff (didn't test myself so far)
#Ctrl+click saves lives
#C+S+f11 = fancy code mode
#Ctrl+K = fast comment/uncomment

#___Flow and Performance___

#call_deferred(): does in idle frame


#threads: desync from main thread

#errors inside are not lethal and breakpoints do nothing, thus making debugging harder
#for troubleshooting run thread func inside main
#(which can be problematic for loops, in which case separate function inside loop)

#__need to wait_to_finish() if thread no longer needed__

#only 1 running thread per variable

#to not be able to enter thread madness, start() is disabled in a running thread

#calling yield from main causes thread to dissolve into main

#info exchange is done via common variables or signals

#mutex common variable to avoid issues
#i.e.: variable edited during read by thread
#Array edited during read by thread
#Multiple threads edit same variable

#semaphore is for letting thread sleep till you semaphore.post()
#info on threads:
#https://docs.godotengine.org/en/stable/tutorials/threads/using_multiple_threads.html?


#signals: useful for telling something has happened
#without constant checking using process(). However, requires connection via code

#Hierarchy (how to deal with subscenes): Because a subscene starts with a node,
#the normal $nameofsubscene will work fine. However, this also means you should
#include sanity checks depending on interactions.

#Signals should work fine, as long as you wire them up correctly
#(they are their own sanity check)

#Also, the subscene will rely compeltely on parent, so either create project docs
#or go big brain and use tool script to make alarm (info in scene organization)

#Btw can not change stuff (virtual func) on node if node has no script

#Performance: set and destroy vars as little as possible - thats a lot of operation.

#___Specific Types___

#Label: Simple control over text. Not best for use in complex arrangements

#RichTextLabel: Advanced control over text. Use in custom controls.
#Most use comes out of BBCode 



func _ready():
	
	#var bruh =[Vector2(161,222),Vector2(162,221),Vector2(162,220),Vector2(163,219),Vector2(163,218),Vector2(164,217),Vector2(164,216),Vector2(165,215),Vector2(165,214),Vector2(166,213),Vector2(166,211),Vector2(167,210),Vector2(167,209),Vector2(168,208),Vector2(169,208),Vector2(170,209),Vector2(173,209),Vector2(174,210),Vector2(176,210),Vector2(177,211),Vector2(180,211),Vector2(181,212),Vector2(183,212),Vector2(184,213),Vector2(185,213),Vector2(185,221),Vector2(186,222),Vector2(186,230),Vector2(187,231),Vector2(187,236),Vector2(186,236),Vector2(185,237),Vector2(184,237),Vector2(183,238),Vector2(182,238),Vector2(181,239),Vector2(180,239),Vector2(179,238),Vector2(177,238),Vector2(176,237),Vector2(175,237),Vector2(174,236),Vector2(172,236),Vector2(171,235),Vector2(169,235),Vector2(168,234),Vector2(166,234),Vector2(165,233),Vector2(163,233),Vector2(162,232),Vector2(161,232),Vector2(160,231),Vector2(158,231),Vector2(158,229),Vector2(159,228),Vector2(159,227),Vector2(160,226),Vector2(160,225),Vector2(161,224)]
	#print(colr.Neatify(bruh))
	
#	var bruh=colr.ColorSearchBoxMaker(Vector3(1,1,1),[3,3,3],1,-1)
#	for n in bruh.size():
#		var pos=colr.Arr3ToV(bruh[n][0])-Vector3(1,1,1)
#		#temp: 52,240,176, type 0 = 240,176,52, col = #F7A233 Lightning Yellow
#		prints(pos,colr.ColorIf(Vector2(pos.x+240,pos.y+176),[pos.z+52,"#F7A233 Lightning Yellow",0]))
#
	#print(colr.HighestBit(1))
	#var info = colr.ColorNameToColor(colr.color(0,0,0)[6])
	#print(colr.HighestBit(6<<24))#|info.r8<<16|info.g8<<8|info.b8))
	#print(colr.WhileHighestBit(6<<24))
	var arr=[1,2,3,4,1,5]
	#print(colr.ArrToStr(arr))
	#print(colr.HighestBit(9<<24))
	#print(colr.IntToHex(8<<24))
	print(char(65)+char(92))
	#colr.editcols()
	rng.randomize()
	#print(colr.Dot(Vector2(-1,-1),Vector2(1,-1)))
	#var pog=funcref(influence,"pogger")
	#print(colr.Neatify(colr.TraceShape(Vector2(20,5),pog,[0])))
	#print(colr.ColorInfluence(Vector2(175,225),5))
	#print(range(1,3))

	#print(OS.get_ticks_usec()) #how to get time passed


#	var start = OS.get_ticks_usec()
#	for _i in 100000:
#		_i=colr.HighestBit(_i)
#
#	var bruh = OS.get_ticks_usec()-start
#	print (bruh)
#	start = OS.get_ticks_usec()
#	for _i in 100000:
#		_i=colr.LogHighestBit(_i)
#	var end = OS.get_ticks_usec()
#	print (end-start)
#	pass
func ifinbox(pos, pos1, pos2):
	return (pos2.x>=pos.x && pos.x>=pos1.x && pos2.y>=pos.y && pos.y>=pos1.y);

func colorsize(pos,size,args):
	var colorif = funcref(self,"colorif")
	return influence.forinbox(pos,size,colorif,args)


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
