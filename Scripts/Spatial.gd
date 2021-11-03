extends MultiMeshInstance

var count=20
func polysphere()->Mesh:
	#var mat = SpatialMaterial.new()
	#var color = Color(0.9, 0.1, 0.1)
	var vertices = PoolVector3Array(
		[Vector3(0,1.4,0),
		Vector3(1.4,0,0),
		Vector3(-1,0,1),
		Vector3(-1,0,-1)]
	)
	var cols=PoolColorArray([Color.black,Color.red,Color.blue,Color.green])
	var faces=PoolIntArray([0,1,2,0,2,3,0,3,1,2,1,3])
	var arr = []
	arr.resize(Mesh.ARRAY_MAX)
	arr[ArrayMesh.ARRAY_VERTEX]=vertices
	arr[ArrayMesh.ARRAY_COLOR]=cols
	arr[ArrayMesh.ARRAY_INDEX]=faces
	var msh = ArrayMesh.new()
	msh.add_surface_from_arrays(Mesh.PRIMITIVE_TRIANGLES,arr)
	return msh
	#mat.albedo_color = color
	
	#var st = SurfaceTool.new()
	#st.begin(Mesh.PRIMITIVE_TRIANGLE_FAN)
	#st.set_material(mat)

#	for v in vertices.size(): 
#		st.add_color(color)
#		st.add_uv(Vector2())
#		st.add_vertex(vertices[v])

	#st.commit(tmpMesh)
var xrot:=PI/100
var zrot:=2.718282/100
var c1=cos(xrot)
var c2=cos(zrot)
var s1=sin(xrot)
var s2=sin(zrot)
func _point_3_rot(p:Vector3)->Vector3:
	return Vector3(
		p.x*c1*c2-p.y*s1*c2-p.z*s2,
		p.x*s1+p.y*c1,
		p.x*c1*s2-p.y*s1*s2+p.z*c2
	)
func rot_basis(b:Basis)->Basis:
	return b.rotated(Vector3(0,1,0),xrot).rotated(Vector3(1,0,0),zrot)

func _process(d):
	#transform.basis=transform.basis.rotated(Vector3(1,0,0),0.01)
	#rotate(Vector3(1,2,3).normalized(),0.02)
	#get_node("../Camera").position=_point_3_rot(get_node("../Camera").position)
	#print("brh")
	pass
#func _ready():
#	# Create the multimesh.
#	multimesh = MultiMesh.new()
#	# Set the format first.
#	multimesh.transform_format = MultiMesh.TRANSFORM_3D
#	multimesh.color_format = MultiMesh.COLOR_FLOAT
#	multimesh.custom_data_format = MultiMesh.CUSTOM_DATA_NONE
#	# Then resize (otherwise, changing the format is not allowed).
#	multimesh.instance_count = 20
#	# Maybe not all of them should be visible at first.
#   # multimesh.visible_instance_count = 1000
#	var spher=SphereMesh.new()
#	spher.rings=1
#	spher.radial_segments=1
#	multimesh.mesh=polysphere()
##	var shoder=SpatialMaterial.new()
##	shoder.flags_unshaded=1
##	shoder.albedo_color=Color()
#	# Set the transform of the instances.
#	for i in 20:
#		multimesh.set_instance_transform(
#			i, 
#			Transform(Basis(), 
#				Vector3(0, sin(2*PI*i/count)*10, cos(2*PI*i/count)*10)
#			)
#		)
#		#multimesh.set_instance_color(i,arr[i][1])
#		var m =i*3.0/20
#		var r=int(m<1.0)*cos(m*PI/2)+int(m>2.0)*sin((m-2)*PI/2)
#		var g=int(m>1.0&&m<2.0)*cos((m-1)*PI/2)+int(m<1.0)*sin((m)*PI/2)
#		var b=int(m>2.0)*cos((m-2)*PI/2)+int(m>1.0&&m<2.0)*sin((m-1)*PI/2)
#		multimesh.set_instance_color(i,Color(r,g,b))
func _add_points(arr:Array):
	# Create the multimesh.
	multimesh = MultiMesh.new()
	# Set the format first.
	multimesh.transform_format = MultiMesh.TRANSFORM_3D
	multimesh.color_format = MultiMesh.COLOR_FLOAT
	multimesh.custom_data_format = MultiMesh.CUSTOM_DATA_NONE
	# Then resize (otherwise, changing the format is not allowed).
	multimesh.instance_count = len(arr)
	# Maybe not all of them should be visible at first.
   # multimesh.visible_instance_count = 1000
	var spher=SphereMesh.new()
	spher.radius=2
	spher.height=4
	spher.rings=1
	spher.radial_segments=1
	multimesh.mesh=spher
#	var shoder=SpatialMaterial.new()
#	shoder.flags_unshaded=1
#	shoder.albedo_color=Color()
	# Set the transform of the instances.
	for i in len(arr):
		multimesh.set_instance_transform(
			i, 
			Transform(Basis(), 
				arr[i][0]
			)
		)
		multimesh.set_instance_color(i,arr[i][1])
#		var m =i*3.0/20
#		var r=int(m<1.0)*cos(m*PI/2)+int(m>2.0)*sin((m-2)*PI/2)
#		var g=int(m>1.0&&m<2.0)*cos((m-1)*PI/2)+int(m<1.0)*sin((m)*PI/2)
#		var b=int(m>2.0)*cos((m-2)*PI/2)+int(m>1.0&&m<2.0)*sin((m-1)*PI/2)
#		multimesh.set_instance_color(i,Color(r,g,b))

