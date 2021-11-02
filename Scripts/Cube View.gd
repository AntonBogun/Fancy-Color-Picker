extends Node2D

var xrot:=0.0
var zrot:=0.0
var c1=cos(xrot)
var c2=cos(zrot)
var s1=sin(xrot)
var s2=sin(zrot)
var _circle:=PoolVector2Array([
	Vector2(0.0,1.0),Vector2(0.5,0.866025),Vector2(0.866025,0.5),
	Vector2(1.0,0.0),Vector2(0.866025,-0.5),Vector2(0.5,-0.866025),
	Vector2(0.0,-1.0),Vector2(-0.5,-0.866025),Vector2(-0.866025,-0.5),
	Vector2(-1.0,0.0),Vector2(-0.866025,0.5),Vector2(-0.5,0.866025)
	])
var psize:=3
func col_to_vec3(col:Color)->Vector3:
	return Vector3(col.r8,col.g8,col.b8)

func _cent_conv(p:Vector3)->Vector3:#convert rgb 0-255 to actual coords
	return p*Vector3(1,1,-1)+Vector3(-255/2,-255/2,255/2)
#Matrix Magic
func _point_3_rot(p:Vector3)->Vector3:
	return Vector3(
		p.x*c1*c2-p.y*s1*c2-p.z*s2,
		p.x*s1+p.y*c1,
		p.x*c1*s2-p.y*s1*s2+p.z*c2
	)
#	return Vector3(
#		p.x*cos(_xrot)*cos(_zrot)-p.y*sin(_xrot)+p.z*cos(_xrot)*sin(_zrot),
#		p.x*sin(_xrot)*cos(_zrot)+p.y*cos(_xrot)+p.z*sin(_xrot)*sin(_zrot),
#		p.x*-sin(_zrot)+cos(_zrot)*p.z
#	)
func _info_to_poly_point(info:int)->Polygon2D:
	var p=_point_3_rot(_cent_conv(colr.InfoToVec3(info)))
	var poly:=Polygon2D.new()
	poly.polygon=_circle
	poly.scale=Vector2(psize,psize)
	poly.color=colr.InfoToCol(info)
	poly.position=Vector2(p.y,p.x)
	poly.offset=Vector2(0,-p.x+p.z)/psize
	return poly
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
#	for n in range(len(lines)):
#		custom_shapes[n]=[_line_make(lines[n][0],lines[n][1],1,lines[n][2]),lines[n].slice(0,1)]
#		add_child(custom_shapes[n][0])
#	lines.clear()
	for n1 in range(8):
		for n2 in range(8):
			for n3 in range(8):
				for n in colr.colorsector(n1,n2,n3)[0]:
					#var point=_info_to_poly_point(n)
					#$YSort.add_child(point)
					points.append([_cent_conv(colr.InfoToVec3(n)),colr.InfoToCol(n)])
	$ViewportContainer/Viewport/MultiMesh._add_points(points)
#	for N in range(8):
#		for n in colr.colorsector((N&1)*7,((N>>1)&1)*7,((N>>2)&1)*7)[0]:
#			$YSort.add_child(_info_to_poly_point(n))
	pass # Replace with function body.

func Move(where:Vector2,type:=0):
	pass
#	xrot=wrapf(xrot-where.x,0,2*PI)
#	zrot=clamp(zrot-where.y,-PI/2,PI/2)
#	c1=cos(xrot)
#	c2=cos(zrot)
#	s1=sin(xrot)
#	s2=sin(zrot)
#	for p in custom_shapes.values():
#		_line_rot(p[0],p[1][0],p[1][1])
#		#print(p[0].polygon)
#	var p=0
#	for l in points:
#		p=_point_3_rot(l[1])
#		l[0].position=Vector2(p.y,p.x)
#		l[0].offset=Vector2(0,-p.x+p.z)/psize

func ChangeActive(value:=false):
	visible=value
	if value:
		get_node("../Cam")._cube_offset_reset()
func _process(d):
#	var fps=Engine.get_frames_per_second()
#	if fps<60:
#		#print(fps)
		pass

