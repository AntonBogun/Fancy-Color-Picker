extends Label


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var cols=[]
var bad=[]
var count=0
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
	for n in 65:
		printraw(char(n))
	#filestuff()
	pass # Replace with function body.

func _Right():
	bad.append(cols[count][0][0])
	printraw(IntToHex(cols[count][0][0])+",")
	count+=1
	text=IntToHex(cols[count][0][0]).substr(2).to_upper()+" and "+IntToHex(cols[count][0][1]).substr(2).to_upper()+" ("+cols[count][1]+")"
	$PolyLeft.color=Color8((cols[count][0][0]>>16)&0xff,(cols[count][0][0]>>8)&0xff,cols[count][0][0]&0xff)
	$PolyRight.color=Color8((cols[count][0][1]>>16)&0xff,(cols[count][0][1]>>8)&0xff,cols[count][0][1]&0xff)
	pass
func _Left():
	bad.append(cols[count][0][1])
	printraw(IntToHex(cols[count][0][1])+",")
	count+=1
	text=IntToHex(cols[count][0][0]).substr(2).to_upper()+" and "+IntToHex(cols[count][0][1]).substr(2).to_upper()+" ("+cols[count][1]+")"
	$PolyLeft.color=Color8((cols[count][0][0]>>16)&0xff,(cols[count][0][0]>>8)&0xff,cols[count][0][0]&0xff)
	$PolyRight.color=Color8((cols[count][0][1]>>16)&0xff,(cols[count][0][1]>>8)&0xff,cols[count][0][1]&0xff)
	pass
func _Copy():
	OS.set_clipboard(cols[count][1]+" color hex")
	pass

#this was done in half an hour
