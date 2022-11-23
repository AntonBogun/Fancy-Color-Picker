extends Node2D

var xrot:=0.0
var yrot:=0.0
var xrotbasis=Basis(Vector3(cos(xrot),0,-sin(xrot)),
	Vector3(0,1,0),
	Vector3(sin(xrot),0,cos(xrot)))
var yrotbasis=Basis(Vector3(1,0,0),
	Vector3(0,cos(yrot),-sin(yrot)),
	Vector3(0,sin(yrot),cos(yrot)))
var psize:=3
func col_to_vec3(col:Color)->Vector3:
	return Vector3(col.r8,col.g8,col.b8)

func _cent_conv(p:Vector3)->Vector3:#convert rgb 0-255 to actual coords
	return p*Vector3(1,1,-1)+Vector3(-255/2,-255/2,255/2)
#Matrix Magic
func _point_3_rot(p:Vector3)->Vector3:
#	var xrotbasis=Basis(Vector3(cos(xrot),-sin(xrot),0),
#	Vector3(sin(xrot),cos(xrot),0),
#	Vector3(0,0,1))
	xrotbasis=Basis(Vector3(cos(xrot),0,-sin(xrot)),
	Vector3(0,1,0),
	Vector3(sin(xrot),0,cos(xrot)))
	yrotbasis=Basis(Vector3(0,0,0),
	Vector3(0,cos(yrot),-sin(yrot)),
	Vector3(0,sin(yrot),cos(yrot)))
	return xrotbasis*(yrotbasis*p)

func bts(b:bool=false)->int:#bool to sign
	return 2*int(b)-1
func _line_make(P1:Vector3,P2:Vector3,_wide:=1,col:Color=Color(1,1,1))->Polygon2D:
	P1=_point_3_rot(P1)
	P2=_point_3_rot(P2)
	var _dir=Vector2(P1.y-P2.y,P1.z-P2.z)
	var poly=Polygon2D.new()
	poly.color=col
	if _dir.length_squared()==0:
		return poly
	_dir=Vector2(-_dir.y,_dir.x).normalized()
	var arr=PoolVector2Array([])
	for n in range(4):#NOTE: AAAAAAAAAA its not a reference
		arr.append((Vector2(P1.y,P1.z) if n==0 or n==3 else Vector2(P2.y,P2.z))
		+_dir*bts(n<2))
	poly.polygon=arr
	return poly
	pass
func _line_rot(Poly:Polygon2D,P1:Vector3,P2:Vector3,_wide:=1)->void:
	P1=_point_3_rot(P1)
	P2=_point_3_rot(P2)
	var _dir=Vector2(P1.y-P2.y,P1.z-P2.z)
	Poly.polygon=PoolVector2Array([])
	if _dir.length_squared()==0:
		return
	_dir=Vector2(-_dir.y,_dir.x).normalized()
	var arr=PoolVector2Array([])
	for n in range(4):#NOTE: AAAAAAAAAA its not a reference
		arr.append((Vector2(P1.y,P1.z) if n==0 or n==3 else Vector2(P2.y,P2.z))
		+_dir*bts(n<2))
	Poly.polygon=arr
var lines=[
	[Vector3(-128,-128,128),Vector3(128,-128,128),Color(1,0,0)],
	[Vector3(-128,-128,128),Vector3(-128,128,128),Color(0,1,0)],
	[Vector3(-128,-128,128),Vector3(-128,-128,-128),Color(0,0,1)]
	]
var custom_shapes={}
var points=[]
func _ready():
	for n1 in range(8):
		for n2 in range(8):
			for n3 in range(8):
				for n in colr.colorsector(n1,n2,n3)[0]:
					points.append([_cent_conv(colr.InfoToVec3(n)),colr.InfoToCol(n)])
	$ViewportContainer/Viewport/MultiMesh._add_points(points)
	test()



onready var cam3d=$ViewportContainer/Viewport/Camera
func Rotate(where:=Vector2(),type:=0)->void:
	xrot=wrapf(xrot+where.x,0,2*PI)
	yrot=clamp(yrot+where.y,-PI/2,PI/2)
	yrotbasis=Basis(
		Vector3(cos(xrot),0,-sin(xrot)),
		Vector3(0,1,0),
		Vector3(sin(xrot),0,cos(xrot)))
	xrotbasis=Basis(
		Vector3(1,0,0),
		Vector3(0,cos(yrot),-sin(yrot)),
		Vector3(0,sin(yrot),cos(yrot)))
	cam3d.transform.basis=yrotbasis*(xrotbasis)
	if movetype==0:
		cam3d.transform.origin=yrotbasis*(xrotbasis*Vector3(0,0,400))
	#print(cam3d.transform.basis)
	#print(yrotbasis*(xrotbasis*Basis(Vector3(1,1,1))))
	pass
var prevpos
var movetype=0
func ChangeMode(value)->void:
	movetype=value
	if value==0:
		xrot=prevpos.x
		yrot=prevpos.y
		Rotate()
		pass
	elif value==1:
		prevpos=Vector2(xrot,yrot)
func Move(where:=Vector3(),type:=0)->void:
	where*=Vector3(1,1,-1)
	if movetype==1:
		if type==0:
			var move=yrotbasis*(xrotbasis*where)
			
			cam3d.transform.origin+=move
		else:
			cam3d.transform.origin=where



func ChangeActive(value:=false)->void:
	visible=value
	if value:
		#cam3d.transform.origin=Vector3(0,0,400)
		#cam3d.transform.basis=Basis()
		#xrot=0.0
		#yrot=0.0
		get_node("../Cam")._cube_offset_reset()

func BloomToggle(toggle)->void:
	cam3d.environment.glow_enabled=toggle
func BloomValue(value)->void:
	cam3d.environment.glow_bloom=value

class Line:
	extends Reference
	var dir:=Vector3()
	var dir_inv:=Vector3()
	var pos:=Vector3()
	var zeros:=0
	var zeroid:=0
	func _init(_dir:=Vector3(1,1,1),_pos:=Vector3()):
		if _dir==Vector3():
			_dir=Vector3(1,1,1)
		self.pos=_pos
		self.dir=_dir.normalized()
#		self.zeros=int(_dir.x==0)+int(_dir.y==0)+int(_dir.z==0)
#		self.zeroid=(int(_dir.x==0)<<2)+(int(_dir.y==0)<<1)+(int(_dir.z==0))
#		if self.zeros==0:
#			self.dir_inv=(Vector3(1,1,1)/_dir)
#		elif self.zeros==1:
#			var vec:=Vector3(
#				(1/_dir.x if _dir.x!=0 else 1.0),
#				(1/_dir.y if _dir.y!=0 else 1.0),
#				(1/_dir.z if _dir.z!=0 else 1.0))
#			self.dir_inv=vec
#		else:
#			self.dir_inv=Vector3(int(_dir.x==0),int(_dir.y==0),int(_dir.z==0))
	func _to_string():
		#return "["+str(self.dir)+" {"+str(self.zeros)+":"+str(self.zeroid)+"} "+str(self.dir_inv)+"]+"+str(self.pos)
		return str(self.dir)+","+str(self.pos)
	func PlaneIntersect(p:=Plane())->Vector3:
		var tmp:=p.intersects_ray(self.pos,self.dir)
		if tmp==null:
			tmp=p.intersects_ray(self.pos,-self.dir)
			if tmp==null:
				tmp=Vector3(1<<63,1<<63,1<<63)
		return tmp
		#return (tmp if tmp!=null else p.intersects_ray(self.pos,-self.dir))
	func RayPlane(p:=Plane.PLANE_XZ):
		p=p.normalized()
		var tmp:=p.intersects_ray(self.pos,self.dir)
		if tmp==null:
			tmp=Vector3(1<<63,1<<63,1<<63)
		return tmp
#		var d:=p.d-p.normal.dot(self.pos)
#		var L:=self.dir_inv
#		var zeroadj:=(Vector3(self.zeroid!=4,self.zeroid!=2,self.zeroid!=1) if self.zeros==1 else Vector3(1,1,1))
#		var K:float=(p.x*L.y*L.z*zeroadj.x
#					+p.y*L.x*L.z*zeroadj.y
#					+p.z*L.x*L.y*zeroadj.z)
#		if K==0:
#			return Vector3(1<<63,1<<63,1<<63)
#		else:
#			return Vector3(
#				L.y*L.z*zeroadj.x,
#				L.x*L.z*zeroadj.y,
#				L.x*L.y*zeroadj.z)*d/K+self.pos
	func PointProject(p:=Vector3())->Vector3:
		return (p-self.pos).project(self.dir)+self.pos
		#return self.dir*((self.dir*p).dot(Vector3(1,1,1))/self.dir.length_squared())
		#Vector3(2,0,0)*((Vector3(2,0,0)*Vector3(2,4,5)).dot(Vector3(1,1,1))/Vector3(2,0,0).length_squared())
		#Vector3(2,4,5).project(Vector3(2,0,0))
		#return (p-self.pos).project(self.dir)+self.pos
		#return (p-self.pos)

class AxisPlane:
	extends Reference
	var plane:=Plane.PLANE_XZ
	var pos:=Vector3()
	var z0:=Vector3(0,0,1)
	func _init(_plane:=Plane.PLANE_XZ,_pos:=Vector3(),_z0:=Vector3(0,0,1))->void:
		_plane=_plane.normalized()
		self.plane=_plane
		self.pos=_pos
		_plane.d=0
		self.z0=_plane.project(_z0).normalized()
		if self.z0==Vector3():
			var tmp=_plane.project(Vector3(0,0,1))
			if tmp==Vector3():
				self.z0=_plane.project(Vector3(1,0,0))
			else:
				self.z0=tmp
			#self.z0=_plane.project(_z0.rotated(Vector3(1,0,0),PI/2)).normalized()
	func ToPlane()->Plane:
		var tmp:=self.plane
		tmp.d+=tmp.normal.dot(self.pos)
		return tmp
		#Plane(0,1,1,0).normalized().project(Vector3(0,1,0))
	func ToGeo(v,type="point"):
		if type=="point":
			print("(%f,%f,%f)"%[v.x,v.y,v.z])
		if type=="vector":
			print("Vector((%f,%f,%f))"%[v.x,v.y,v.z])
		if type=="plane":
			print("%fx+%fy+%fz=%f"%[v.x,v.y,v.z,v.d])
		if type=="rel":
			print("Vector((%f,%f,%f),(%f,%f,%f))"%[v[0].x,v[0].y,v[0].z,v[1].x,v[1].y,v[1].z])
	func RotateWith(p:=Vector3())->Vector3:
		p-=self.pos
		var v:=self.z0
		var tmplane:=self.plane
		p-=tmplane.normal*tmplane.d
		var a:=atan2(v.y,sqrt(pow(v.x,2)+pow(v.z,2)))
		var rot:=Vector3(v.z,0,-v.x)
		if rot!=Vector3(0,0,0):
			rot=rot.normalized()
		if rot==Vector3():
			rot=Vector3(1,0,0) #CHECK THIS!!!
		v=v.rotated(rot,a)
		p=p.rotated(rot,a)
		tmplane.normal=tmplane.normal.rotated(rot,a)
		a=atan2(v.x,v.z)
		rot=Vector3(0,-1,0)#WHYY??????
		v=v.rotated(rot,a)
		p=p.rotated(rot,a)
		#ToGeo(Plane(tmplane.normal,0),"plane")
		#ToGeo(p)
		#print(a)
		tmplane.normal=tmplane.normal.rotated(rot,a)
		#ToGeo(p)
		a=atan2(tmplane.normal.x,tmplane.normal.y)
		rot=Vector3(0,0,1)
		#ToGeo(rot,"vector")
		#ToGeo(Plane(tmplane.normal.rotated(rot,a),0),"plane")
		#ToGeo(v,"vector")
		return p.rotated(rot,a)
	func _to_string():
		return "(%fx+%fy+%fz=%f)+(%f,%f,%f) {z0=%f,%f,%f}"%[self.plane.x,
		self.plane.y,self.plane.z,self.plane.d,self.pos.x,self.pos.y,self.pos.z,
		self.z0.x,self.z0.y,self.z0.z]

func LineFromCam(cam:=Camera.new(),point:=Vector2())->Line:
	return Line.new(cam.project_ray_normal(point),cam.transform.origin)

func test():
	#TODO:
	#Axis plane - transformation of xz into some plane in 3d, keeps coordinates

	#Function to detect if point is inside a polygon defined by PoolVector2Array
	#(cast ray and see amount of intersects with sides)

	#2D Line with offset, should support intersect

	#Combine to see if an intersection is within shape bounds
	print("make sure to remove this after testing (Cube View)")
	#print(colr.get_dist_sum())
	print("ALSO REMOVE TESTING FUNCS")
	var z=Vector3(1,0,0)
	var p=AxisPlane.new(Plane(-1,0,0,0),Vector3(0,0,0),z)
	var l=p.plane.normal*p.plane.d
	var L=p.ToPlane().normal*p.ToPlane().d
	var point=p.ToPlane().project(Vector3(-5,-4,4))
	ToGeo(p.plane,"plane")
	ToGeo(l,"vector")
	ToGeo(p.ToPlane(),"plane")
	print("plane->Plane")
	ToGeo([l,p.pos+l],"rel")
	print("Plane->z0")
	ToGeo([p.pos+l,p.pos+l+p.z0],"rel")
	print("Plane->_z0")
	ToGeo([p.pos+l,p.pos+l+z],"rel")
	ToGeo(point)
	#print("BSSSSS")
	ToGeo(p.RotateWith(point))
	#ToGeo(Vector3(1,-2,-3))#p.RotateWith(point))
	#p.ToPlane().project(Vector3(-1,3,4))
	#get_tree().quit()
	
#responsible for projection onto plane
func MousePressed()->void:
	var pos=get_global_mouse_position()
	var i=LineFromCam($ViewportContainer/Viewport/Camera,
		pos+Vector2(1344,756)/2).PlaneIntersect(Plane(0,0,1,0))
	$ViewportContainer/Viewport/Test.transform.origin=i
	

func ToGeo(v,type="point"):
	if type=="point":
		print("(%f,%f,%f)"%[v.x,v.y,v.z])
	if type=="vector":
		print("Vector((%f,%f,%f))"%[v.x,v.y,v.z])
	if type=="plane":
		print("%fx+%fy+%fz=%f"%[v.x,v.y,v.z,v.d])
	if type=="rel":
		print("Vector((%f,%f,%f),(%f,%f,%f))"%[v[0].x,v[0].y,v[0].z,v[1].x,v[1].y,v[1].z])
