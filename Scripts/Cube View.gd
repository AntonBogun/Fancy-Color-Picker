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
	var xrotbasis=Basis(Vector3(cos(xrot),0,-sin(xrot)),
	Vector3(0,1,0),
	Vector3(sin(xrot),0,cos(xrot)))
	var yrotbasis=Basis(Vector3(0,0,0),
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
	var pos:=Vector3()
	func _init(dir:=Vector3(),pos:=Vector3()):
		self.dir=dir
		self.pos=pos
	func _get(property):
		if len(property)==1 and ord(property)>=120 and ord(property)<=122:
			return self.dir[ord(property)-120]
		elif len(property)==2 and ord(property[0])>=120 and ord(property[0])<=122:
			return self.pos[ord(property[0])-120]
		elif property in self:
			return self.property
		else:
			return null

func LineFromCam(cam:=Camera.new(),point:=Vector2())->Line:

	var fov:=point*cam.fov/2
	var fovx=Basis(
		Vector3(cos(fov.x),0,-sin(fov.x)),
		Vector3(0,1,0),
		Vector3(sin(fov.x),0,cos(fov.x)))
	var fovy=Basis(
		Vector3(1,0,0),
		Vector3(0,cos(fov.y),-sin(fov.y)),
		Vector3(0,sin(fov.y),cos(fov.y)))
	return Line.new(cam.transform.basis*fovy*fovx*Vector3(0,0,1),cam.transform.origin)

func LinePlaneIntersect(l:=Line.new(),p:=Plane())->Vector3:
	var n:=l.pos*p.normal.abs()
	if n==p.normal*p.d:
		p.d=0
	else:
		p.normal-=n/p.d
		var norm=p.normal.normalized()
		p.d=p.normal/norm
		p.normal=norm
#	afg+beg+cef
#	a,b,c=p.xyz
#	e,f,g=l.xyz
#	fg; eg; ef
	var K=p.x*l.y*l.z+p.y*l.x*l.z+p.z*l.x*l.z
	if K==0:
		return Vector3(-0xfffffffffffffff,-0xfffffffffffffff,-0xfffffffffffffff)
	else:
		return Vector3(
			l.y*l.z,
			l.x*l.z,
			l.x*l.y
		)/K*p.d

#func _process(d):
##	var fps=Engine.get_frames_per_second()
##	if fps<60:
##		#print(fps)
#		pass


#	#funni version:
#	#afg+beg+cef
#	#a,b,c=p.xyz
#	#e,f,g=l.xyz
#	#h,i,j=l.x0y0z0
#	var K=p.x*l.y*l.z+p.y*l.x*l.z+p.z*l.x*l.z
#	if K==0:
#		return null
#	else:
#		return Vector3(
#
#
#
#		)
