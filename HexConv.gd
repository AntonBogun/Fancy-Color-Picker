tool
extends Label

export var tohex:bool=false
export var toint:bool=false
export var coltest:bool=false
export var vectoint:bool=false
var col
func IntToHex(i:int,minleng:int=0)->String:
	return "0x%0*x"%[minleng,i]

func InfoToVec3(i:int)->Vector3:
	return Vector3(i>>16&0xff,i>>8&0xff,i&0xff)

func _ready():
	col=$Node2D
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
