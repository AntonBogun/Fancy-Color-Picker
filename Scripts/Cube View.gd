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
func Move(where:Vector2,type:=0):
	xrot=wrapf(xrot+where.x,0,2*PI)
	yrot=clamp(yrot-where.y,-PI/2,PI/2)
	xrotbasis=Basis(Vector3(cos(xrot),0,-sin(xrot)),
	Vector3(0,1,0),
	Vector3(sin(xrot),0,cos(xrot)))
	yrotbasis=Basis(Vector3(1,0,0),
	Vector3(0,cos(yrot),-sin(yrot)),
	Vector3(0,sin(yrot),cos(yrot)))
	cam3d.transform.origin=xrotbasis*(yrotbasis*Vector3(0,0,400))
	#print(cam3d.transform.basis)
	cam3d.transform.basis=xrotbasis*(yrotbasis)
	#print(yrotbasis*(xrotbasis*Basis(Vector3(1,1,1))))
	pass

func ChangeActive(value:=false):
	visible=value
	if value:
		cam3d.transform.origin=Vector3(0,0,400)
		cam3d.transform.basis=Basis()
		xrot=0.0
		yrot=0.0
		get_node("../Cam")._cube_offset_reset()


#func _process(d):
##	var fps=Engine.get_frames_per_second()
##	if fps<60:
##		#print(fps)
#		pass


