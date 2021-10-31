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
func _ready():
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
