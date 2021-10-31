extends Node2D

var xrot:=0.0
var zrot:=0.0
var _circle:=PoolVector2Array([
	Vector2(0.0,1.0),Vector2(0.5,0.866025),Vector2(0.866025,0.5),
	Vector2(1.0,0.0),Vector2(0.866025,-0.5),Vector2(0.5,-0.866025),
	Vector2(0.0,-1.0),Vector2(-0.5,-0.866025),Vector2(-0.866025,-0.5),
	Vector2(-1.0,0.0),Vector2(-0.866025,0.5),Vector2(-0.5,0.866025)
	])
var psize:=3
func col_to_vec3(col:Color)->Vector3:
	return Vector3(col.r8,col.g8,col.b8)

func xyz_to_yz(v:Vector3)->Vector2:
	return Vector2(v.y,v.z)

func _cent_conv(p:Vector3)->Vector3:#convert rgb 0-255 to actual coords
	return p*Vector3(1,1,-1)+Vector3(-255/2,-255/2,255/2)
#Matrix Magic
func point_3_rot(p:Vector3,_xrot:float,_zrot:float)->Vector3:
	return Vector3(
		p.x*cos(_xrot)*cos(_zrot)-p.y*sin(_xrot)*cos(_zrot)-p.z*sin(_zrot),
		p.x*sin(_xrot)+p.y*cos(_xrot),
		p.x*cos(_xrot)*sin(_zrot)-p.y*sin(_xrot)*sin(_zrot)+p.z*cos(_zrot)
	)
#	return Vector3(
#		p.x*cos(_xrot)*cos(_zrot)-p.y*sin(_xrot)+p.z*cos(_xrot)*sin(_zrot),
#		p.x*sin(_xrot)*cos(_zrot)+p.y*cos(_xrot)+p.z*sin(_xrot)*sin(_zrot),
#		p.x*-sin(_zrot)+cos(_zrot)*p.z
#	)
func _info_to_poly_point(info:int)->Polygon2D:
	var p=point_3_rot(_cent_conv(colr.InfoToVec3(info)),xrot,zrot)
	var poly:=Polygon2D.new()
	poly.polygon=_circle
	poly.scale=Vector2(psize,psize)
	poly.color=colr.InfoToCol(info)
	poly.position=Vector2(p.y,p.x)
	poly.offset=Vector2(0,-p.x+p.z)/psize
	return poly
func bts(b:bool=false)->int:#bool to sign
	return 2*int(b)-1
func line_make(P1:Vector3,P2:Vector3,_wide:=1,col:Color=Color(1,1,1))->Polygon2D:
	var _dir=Vector2(P1.y-P2.y,P1.z-P2.z)
	if _dir.length_squared()==0:
		return Polygon2D.new()
	_dir=Vector2(-_dir.y,_dir.x).normalized()
	var poly=Polygon2D.new()
	for n in range(4):
		poly.polygon.append((Vector2(P1.y,P1.z) if n==0 or n==3 else Vector2(P2.y,P2.z))+
		_dir*bts(n<2))
	poly.color=col
	return poly
	pass

var line=[Vector3(-140,-140,-140),Vector3(-138,-138,-138)]
func _ready():
	for n1 in range(8):
		for n2 in range(8):
			for n3 in range(8):
				for n in colr.colorsector(n1,n2,n3)[0]:
					$YSort.add_child(_info_to_poly_point(n))
#	for N in range(8):
#		for n in colr.colorsector((N&1)*7,((N>>1)&1)*7,((N>>2)&1)*7)[0]:
#			$YSort.add_child(_info_to_poly_point(n))
	pass # Replace with function body.

func Move(where:Vector2,type:=0):
	xrot=wrapf(xrot-where.x,0,2*PI)
	zrot=clamp(zrot-where.y,-PI/2,PI/2)
	for poly in $YSort.get_children():
		var p=point_3_rot(_cent_conv(col_to_vec3(poly.color)),xrot,zrot)
		poly.position=Vector2(p.y,p.x)
		poly.offset=Vector2(0,-p.x+p.z)/psize
	
	

func ChangeActive(value:=false):
	visible=value
	if value:
		get_node("../Cam")._cube_offset_reset()

