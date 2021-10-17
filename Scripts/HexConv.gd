tool
extends Label

export var tohex:bool=false
export var toint:bool=false
export var coltest:bool=false
export var vectoint:bool=false
var col
var arr=[Vector2(255.5, 238), Vector2(255.5, 238.5), Vector2(255, 238.5), Vector2(251, 238.5), Vector2(250.5, 238), Vector2(250, 237.5), Vector2(243, 237.5), Vector2(242.5, 237), Vector2(242, 236.5), Vector2(240, 236.5), Vector2(239.5, 236.5), Vector2(239.5, 236), Vector2(240, 235.5), Vector2(240.5, 235), Vector2(240.5, 229), Vector2(241, 228.5), Vector2(241.5, 228), Vector2(241.5, 226), Vector2(241.5, 225.5), Vector2(242, 225.5), Vector2(242.5, 225), Vector2(242.5, 224), Vector2(243, 223.5), Vector2(243.5, 223), Vector2(244, 222.5), Vector2(244.5, 222), Vector2(245, 221.5), Vector2(245.5, 221), Vector2(246, 220.5), Vector2(246.5, 220), Vector2(247, 219.5), Vector2(247.5, 219), Vector2(247.5, 218), Vector2(248, 217.5), Vector2(248.5, 217), Vector2(249, 216.5), Vector2(249.5, 216.5), Vector2(249.5, 217), Vector2(250, 217.5), Vector2(250.5, 218), Vector2(251, 218.5), Vector2(251.5, 219), Vector2(252, 219.5), Vector2(252.5, 220), Vector2(253, 220.5), Vector2(253.5, 221), Vector2(254, 221.5), Vector2(254.5, 222), Vector2(255, 222.5), Vector2(255.5, 222.5), Vector2(255.5, 223)]
func IntToHex(i:int,minleng:int=0)->String:
	return "0x%0*x"%[minleng,i]

func InfoToVec3(i:int)->Vector3:
	return Vector3(i>>16&0xff,i>>8&0xff,i&0xff)


func _ready():
	col=$Node2D
	$Polygon2D.polygon=arr
	pass 

func _process(_delta):
	if tohex:
		tohex=false
		$Label.text=str(InfoToVec3(int(text)))
		text=IntToHex(int(text))
	if toint:
		toint=false
		text=str(text.hex_to_int())
	if coltest:
		coltest=false
		var pos=int(text)
		text=str(col.InfoClosestSearch((pos>>16)&0xff,(pos>>8)&0xff,pos&0xff))
	if vectoint:
		vectoint=false
		var a=text.find(",")
		if a!=-1:
			var b=text.find(",",a+1)
			if b!=1:
				var vec=Vector3(int(text.substr(0,a)),int(text.substr(a+1,b-a-1)),int(text.substr(b+1)))
				text=str((int(vec.x)<<16&0xff0000)|(int(vec.y)<<8&0xff00)|(int(vec.z)&0xff))
	pass
