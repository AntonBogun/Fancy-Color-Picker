extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func circle1(pos,size,args):
	
	var circle = funcref(influence,"pogger")
	return influence.forinbox(pos,size,circle,args)
# Called when the node enters the scene tree for the first time.
var rng := RandomNumberGenerator.new()

func info():
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
#
#bitwise:
#0b01
#0xff
#| or
#& and
#^ xor
#~ not
#<< move >>





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

	return true

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
	#var arr=[1,2,3,4,1,5]
	#print(colr.ArrToStr(arr))
	#print(colr.HighestBit(9<<24))
	#print(colr.IntToHex(8<<24))
	
	#var regex:=RegEx.new()
	#regex.compile("[#\"][A-Fa-f0-9]{6}")
	#print(regex.search("ssss \"bb1234 #231321").get_start())
	#var bruh = "	bruhhhhh 	    "
	#bruh =bruh.dedent().rstrip(" 	")
	#colr.editfile("res://Colors.txt")
	#print(colr.InfoToCol(93027714))
	#var m=[Vector2(133,116),Vector2(133,117),Vector2(134,117),Vector2(135,118),Vector2(135,119),Vector2(136,119),Vector2(137,119),Vector2(136,118),Vector2(137,117),Vector2(136,117),Vector2(136,116),Vector2(135,116),Vector2(134,116)]
	#m.invert()
	#print(colr.IntToHex(colr.Vec2ToInfo(Vector2(148,132),128)))
	#print(.length(),("└│├")) # TO DO LATER - GOOD ARRAY PRINTER
	
	#print(colr.InfoToVec3(colr.SectorChecker(138,222,128)))
	#colr.AreaCheck(138,222,128,1)
	#print(colr.InfoToVec3(colr.AllCheck(138,222,128)[0]))
	var cols=[]
	for n1 in 8:
		for n2 in 8:
			for n3 in 8:
				for col in colr.colorsector(n1,n2,n3)[0]:
					cols.append(colr.InfoToCol(col))
	
	#cols.sort_custom(colr.colsort,"sort_red")
	#cols.sort_custom(colr.colsort,"sort_lum")
	cols.sort_custom(colr.colsort,"sort_dumb")
	var i=Image.new()
	i.create(len(cols),len(cols),false,4)
	i.lock()
	for x in range(len(cols)):
		for y in range(len(cols)):
			i.set_pixel(x,y,cols[rng.randi_range(max(x-20,0),min(x+20,len(cols)-1))])
	i.save_png("test1.png")
	i.unlock()
	pass
	
	#print(colr.ColorInfluence(0xda4980,0)[0][1])
	#print(colr.TraceShape(0x253639,0,0x32a3439))
	#OS.print_all_resources("res://test.txt")
#	var uhoh=1
#	if uhoh==1:
#		for n in 1000000:
#			var n1=rng.randi_range(0,255)
#			var n2=rng.randi_range(0,255)
#			var n3=rng.randi_range(0,255)
#			var a=colr.AllCheck(n1,n2,n3)
#			var b=colr.SectorChecker(n1,n2,n3)
#			if !(b in a):
#				prints(a,b,n1,n2,n3)
#				for col in a:
#					col=colr.InfoToHex(col)
#				prints(a,colr.InfoToHex(b))
#				assert(b in a)
	#print("stuff from godottipsandtricks")
	#colr.AllCheck(130,200,0,500)
	#print(colr.InfoToHex(colr.SectorChecker(130,200,0)))
	
	
	
#	var leng=0
#	var N=0
#	var k=Vector3(7,7,6)
#	for n in colr.colorsector(k.x,k.y,k.z)[0]:
#		var temp=colr.InfoToVec3(n)
#		var sum=0
#		for n1 in colr.colorsector(k.x,k.y,k.z)[0]:
#			sum+=temp.distance_squared_to(colr.InfoToVec3(n1))
#		if sum>leng:
#			leng=sum
#			N=n
#	prints(colr.InfoToVec3(N),colr.colorsector(k.x,k.y,k.z).size(),"\n")
#	var toprint=""
#	var temp=colr.InfoToVec3(N)
#	for n in colr.colorsector(k.x,k.y,k.z)[0]:
#		if (toprint+str(colr.InfoToVec3(n))+" "+str(temp.distance_squared_to(colr.InfoToVec3(n)))+", ").length():
#			print(toprint)
#			toprint=""
#		toprint+=str(colr.InfoToVec3(n))+" "+str(temp.distance_squared_to(colr.InfoToVec3(n)))+", "
#	print(toprint)
	#print(instance_from_id())
	#227,221,57 (157, 172, 57)
	
	#(73,63,92,1) !!!
	#132, 110,128
	
	#print(colr.Dot(Vector2(-1,-1),Vector2(1,-1)))
	#var pog=funcref(influence,"pogger")
	#print(colr.Neatify(colr.TraceShape(Vector2(20,5),pog,[0])))
	#print(colr.ColorInfluence(Vector2(175,225),5))
	#print(range(1,3))

	#print(OS.get_ticks_usec()) #how to get time passed
#
#	var start = OS.get_ticks_usec()
#	for _i in 100000:
#		_i=colr.IntToHex(_i)
#
#	var bruh = OS.get_ticks_usec()-start
#	print (bruh)
#	start = OS.get_ticks_usec()
#	for _i in 100000:
#		_i=colr.BuiltinIntToHex(133)
#	var end = OS.get_ticks_usec()
#	print (end-start)
	
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

	
	# Replace with function body.

func Dot(a,b):
	return a.dot(b)/(a.length()*b.length())


# DECONTAMINATION
#
#func FitNumber(n,leng,minzer=-1):
#	minzer=max(-1,minzer)
#	var minzero=(leng-str(floor(n)).length())*int(minzer==-1)+(minzer)*int(minzer!=-1)
#	if str(n).length()<leng:
#		minzero=str(n).length()-str(floor(n)).length()
#	var e=str(floor(n)).length()
#	if leng>=e:
#		if str(n).length()>leng and minzer==-1:
#			#minzer not defined, n larger than leng
#			return ("%0."+str(leng-e-1*int(leng!=e))+"f")%n
#		elif minzer==-1:
#			#minzer not defined, n smaller than leng
#			return ("%0."+str(minzero-1)+"f")%n
#		else:
#			#minzer defined
#			return ("%0."+str(min(minzer,leng-str(floor(n)).length()-1) )+"f")%n
#	var E = str(e-1).length()+2
#	var n2=n/pow(10,e-1)
#	var final = str((("%0."+str(max(leng-E-1,0))+"f")%n2)+"E"+str(e-1))
#	if minzero>=0:
#		return ("%0."+str(int(minzero))+"f")%n
#	else:
#		return final
#

