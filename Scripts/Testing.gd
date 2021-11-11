extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var cols=[]
var bad=[]
var count=0
var rng
func IntToHex(i:int,minleng:int=0)->String:
	return "0x%0*x"%[minleng,i]
# Called when the node enters the scene tree for the first time.
func filestuff():
	var file=File.new()
	file.open("test.txt",1)
	while !file.eof_reached():
		var line=file.get_line()
		var com=line.find(",")
		var first=line.substr(1,com-1).hex_to_int()&0xffffff
		var second=line.substr(com+2,line.length()-com-2-1).hex_to_int()&0xffffff
		var col=file.get_line()
		cols.append([[first,second],col])
	file.close()
	$PolyLeft.color=Color8((cols[0][0][0]>>16)&0xff,(cols[0][0][0]>>8)&0xff,cols[0][0][0]&0xff)
	$PolyRight.color=Color8((cols[0][0][1]>>16)&0xff,(cols[0][0][1]>>8)&0xff,cols[0][0][1]&0xff)
	text=IntToHex(cols[0][0][0]).substr(2).to_upper()+" and "+IntToHex(cols[0][0][1]).substr(2).to_upper()+" ("+cols[0][1]+")"


class Line:
	extends Reference
	var dir:=Vector3()
	var dir_inv:=Vector3()
	var pos:=Vector3()
	var zeros:=0
	var zeroid:=0
	func _init(_dir:=Vector3(),_pos:=Vector3()):
		if _dir.length_squared()!=0:
			self.pos=_pos
			self.dir=_dir
			self.zeros=int(_dir.x==0)+int(_dir.y==0)+int(_dir.z==0)
			self.zeroid=(int(_dir.x==0)<<2)+(int(_dir.y==0)<<1)+(int(_dir.z==0))
			if self.zeros==0:
				self.dir_inv=(Vector3(1,1,1)/_dir)
			elif self.zeros==1:
				var vec:=Vector3(
					(1/_dir.x if _dir.x!=0 else 1.0),
					(1/_dir.y if _dir.y!=0 else 1.0),
					(1/_dir.z if _dir.z!=0 else 1.0))
				self.dir_inv=vec
			else:
				self.dir_inv=Vector3(int(_dir.x==0),int(_dir.y==0),int(_dir.z==0))
#	func _get(property):
#		if len(property)==1 and ord(property)>=120 and ord(property)<=122:
#			return self.dir[ord(property)-120]
#		elif len(property)==2 and ord(property[0])>=120 and ord(property[0])<=122:
#			return self.pos[ord(property[0])-120]
#		elif property in self:
#			return self.property
#		else:
#			return null
	func _to_string():
		return "["+str(self.dir)+" {"+str(self.zeros)+":"+str(self.zeroid)+"} "+str(self.dir_inv)+"]+"+str(self.pos)
	func PlaneIntersect(p:=Plane())->Vector3:
		var d:=p.d-p.normal.dot(self.pos)
		var L:=self.dir_inv
		var zeroadj:=(Vector3(self.zeroid!=4,self.zeroid!=2,self.zeroid!=1) if self.zeros==1 else Vector3(1,1,1))
		var K:float=(p.x*L.y*L.z*zeroadj.x
					+p.y*L.x*L.z*zeroadj.y
					+p.z*L.x*L.y*zeroadj.z)
		#print(K)
		if K==0:
			return Vector3(1<<63,1<<63,1<<63)
		else:
			return Vector3(
				L.y*L.z*zeroadj.x,
				L.x*L.z*zeroadj.y,
				L.x*L.y*zeroadj.z
			)*d/K+self.pos
#	K=afg+beg+cef
#	a,b,c=p.xyz
#	e,f,g=l.xyz
#	fg; eg; ef * d / K 

func _ready():
	var l=Line.new(Vector3(0,4,-7),Vector3(13,-4,-5))
	#print(l.x)
	#print(l.x0)
	#print(l.dir) 
	var p=Plane(Vector3(-3,-4,2),8)
	print(l)
	print(p)
	print(l.PlaneIntersect(p))
	#filestuff()
	#draw_circle(Vector2(),2000,Color8(255,0,255,255))
	rng=RandomNumberGenerator.new()
	for n in range(len(poly)):
		poly[n]=poly[n]*3
	pass # Replace with function body.
var justpressed=0

func _process(delta):
	#if Input.is_action_just_pressed("mouse_left"):
	#	print(get_viewport().size)
	text=str(Engine.get_frames_per_second())
#	print_tree_pretty()
	pass
func _Right():
	bad.append(cols[count][0][0])
	printraw(IntToHex(cols[count][0][0])+",")
	count+=1
	text=IntToHex(cols[count][0][0]).substr(2).to_upper()+" and "+IntToHex(cols[count][0][1]).substr(2).to_upper()+" ("+cols[count][1]+")"
	$PolyLeft.color=Color8((cols[count][0][0]>>16)&0xff,(cols[count][0][0]>>8)&0xff,cols[count][0][0]&0xff)
	$PolyRight.color=Color8((cols[count][0][1]>>16)&0xff,(cols[count][0][1]>>8)&0xff,cols[count][0][1]&0xff)
	pass
var k=0
var poly=PoolVector2Array([Vector2(1,0),Vector2(0.7,0.7),Vector2(0,1),
Vector2(-0.7,0.7),Vector2(-1,0),Vector2(-0.7,-0.7),Vector2(0,-1),Vector2(0.7,-0.7)])
func polyadd():
	get_viewport().set_clear_mode(1)
	for n in $YSort.get_children():
		remove_child(n)
		n.queue_free()
	for n in 3000:
		var p=Polygon2D.new()
		p.polygon=poly
		p.position=Vector2(rng.randi_range(-200,200),rng.randi_range(-200,200))
		p.color=Color(randf(),0.5,1)
		#p.visible=rng.randi_range(0,k)==0
		$YSort.add_child(p)
		#draw_circle(Vector2(rng.randi_range(-200,200),rng.randi_range(-200,200)),2,Color(0.5,0.5,1))

func _draw():
	draw_circle(Vector2(k,50),3,Color(1,0,1))
	draw_circle(Vector2(100,k),3,Color(1,0,1))
	draw_primitive(PoolVector2Array([Vector2(k,k)]),PoolColorArray([Color(0,1,0)]),PoolVector2Array([Vector2()]))
func _Left():
	update()
	polyadd()
	k+=10
#	bad.append(cols[count][0][1])
#	printraw(IntToHex(cols[count][0][1])+",")
#	count+=1
#	text=IntToHex(cols[count][0][0]).substr(2).to_upper()+" and "+IntToHex(cols[count][0][1]).substr(2).to_upper()+" ("+cols[count][1]+")"
#	$PolyLeft.color=Color8((cols[count][0][0]>>16)&0xff,(cols[count][0][0]>>8)&0xff,cols[count][0][0]&0xff)
#	$PolyRight.color=Color8((cols[count][0][1]>>16)&0xff,(cols[count][0][1]>>8)&0xff,cols[count][0][1]&0xff)
	pass
func _Copy():
	OS.set_clipboard(cols[count][1]+" color hex")
	pass

#this was done in half an hour
