extends Polygon2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var type =0
# Called when the node enters the scene tree for the first time.
func _ready():
	material.set_shader_param("vertex0",polygon[0]+position);
	material.set_shader_param("vertex1",polygon[1]+position);
	material.set_shader_param("vertex2",polygon[2]+position);
	material.set_shader_param("vertex3",polygon[3]+position);
	material.set_shader_param("zoom",1/get_node("..").zoom.x);
	$Button.connect("pressed",self,"_update")
	
	var array3=[1,2,3]
	var array2=[array3,2]
	var array1 = [array2,1 ]
	print(range(6,6))
var i=6
var rng=RandomNumberGenerator.new()

func _update():
	type=(type+1)%3
	material.set_shader_param("mode",type)
	$VSlider.material.set_shader_param("mode",type)
# Called every frame. 'delta' is the elapsed time since the previous frame.


func vertconv(vert,viewpoort,zooom):
	return Vector2(viewpoort.x/2.0+vert.x*zooom,viewpoort.y/2.0+vert.y*zooom)


func ifinbox(pos, pos1, pos2):
	return (pos2.x>pos.x && pos.x>pos1.x && pos2.y>pos.y && pos.y>pos1.y);


func getinfluence(col,_pos,type):
	#col=string,_pos=vector3(int 0-255),type=int 0-2
	var sizearray=[9,3,1]
	var pos = Vector2(_pos[0],_pos[1])
	var slider = _pos[2]
	var pointarr=[]
	
	for size in sizearray:
		if pointarr.size()==0:
			var _offset
			if(size!=1):
				_offset=(size-1)/2
			else:
				_offset=1
			var ifarr=[]
			ifarr[0]=pos+Vector2(-_offset,-_offset)
			ifarr[1]=pos+Vector2(_offset,-_offset)
			ifarr[2]=pos+Vector2(_offset,_offset)
			ifarr[3]=pos+Vector2(-_offset,_offset)
			for i in range(4):
				ifarr[i+4]=ifarr[i][0]<256 and ifarr[i][0]>-1 and ifarr[i][1]<256 and ifarr[i][1]>-1 
			
			if(ifarr[4] and ifarr[5] and ifarr[6] and ifarr[7]):
				for i in range(4):
					ifarr[i+4]=colr.colorclosestsearch(ifarr[i][0],ifarr[i][1],slider)==col
				if(ifarr[4] and ifarr[5] and ifarr[6] and ifarr[7]):
					
					pointarr[0]=ifarr[0]
					pointarr[1]=ifarr[1]
					pointarr[2]=ifarr[2]
					pointarr[3]=ifarr[3]
				else:
					continue
			else:
				continue
		
		var i=0
		while i< pointarr.size():
			var point = pointarr[i]
			var nextpoint =pointarr[(i+1)%(pointarr.size())]
			var dir = (nextpoint-point)
			var _offset=Vector2(dir.y,-dir.x)
			if size!=1:
				var _pointarr=[]
				_pointarr[0]=point+_offset
				_pointarr[1]=nextpoint+_offset
				
				var coloris=colr.colorclosestsearch(_pointarr[0][0],_pointarr[0][1],slider)==col and colr.colorclosestsearch(_pointarr[1][0],_pointarr[1][1],slider)==col
				if coloris:
					
					if(_pointarr[0] in pointarr):
						for i1 in range(i+1,pointarr[pointarr.find(_pointarr[0],i+1)]):
							pointarr.remove(i1)
					elif(_pointarr[1] in pointarr):
						for i1 in range(i+1,pointarr[pointarr.find(_pointarr[1],i+1)]):
							pointarr.remove(i1)
						pointarr.insert(i+1,pointarr[0])
					else:
						pointarr.insert(i+1,_pointarr)
					
					if i==0:
						pointarr.push_back(pointarr.pop_front())
					
					
					
				else:
					i+=1
					continue
			else:
				pass
			
			#tomorrow: add check for duplicate and delete everything from point+2 to duplicate.insert()
			

var mouseraw=Vector2()
var mousepos=Vector2()




func _process(delta):
	i-=int(i>0)
	var pos1=vertconv(polygon[0]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var pos2=vertconv(polygon[2]+position,get_viewport_rect().size,1/get_node("..").zoom.x)
	var ok = ifinbox(get_viewport().get_mouse_position(),pos1,pos2)
	material.set_shader_param("viewport",get_viewport_rect().size)
	var slider =$VSlider.value
	material.set_shader_param("slider",slider)
	if(ok&&Input.is_action_pressed("mouse_left")):
		mouseraw=(get_viewport().get_mouse_position()-pos1)*get_node("..").zoom.x
		mousepos=Vector2(mouseraw.x,256-mouseraw.y)
		
	var r =mousepos.x*float(type==2)+mousepos.y*float(type==0)+slider*float(type==1);
	var g =mousepos.x*float(type==0)+mousepos.y*float(type==1)+slider*float(type==2);
	var b =mousepos.x*float(type==1)+mousepos.y*float(type==2)+slider*float(type==0);
	r=floor(r)
	g=floor(g)
	b=floor(b)
	$Colorpick.position=mouseraw-Vector2(128,128)
	$Colorpick.color=Color(r/256,g/256,b/256,1)
	$ColorLabel.text="Current color:\n("+str(r)+","+str(g)+","+str(b)+")"
	$ClosestColorLabel.text="Closest color: "+colr.colorclosestsearch(r,g,b)
	var _col=colr.colorclosestsearch(r,g,b)
	var col = colr.colhextopos(_col)
	print(str(r)+" "+str(g)+" "+str(b))
	$ColorShow.color=Color(col[0]/255.0,col[1]/255.0,col[2]/255.0,1)
	$VSlider/picksmol.color=Color(r/256,g/256,b/256,1)
	$VSlider.material.set_shader_param("red",r)
	$VSlider.material.set_shader_param("gre",g)
	$VSlider.material.set_shader_param("blu",b)
	#print(ok)
	if(i==0):
		i=6
		#rng.randomize()
		#material.set_shader_param("color",Color(rng.randf(),rng.randf(),rng.randf(),1));
		
	

