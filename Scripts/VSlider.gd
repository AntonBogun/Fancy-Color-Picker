extends VSlider


func _ready()->void:
	pass 
func _init():
	print(rect_position)
func SetValue(_value:int)->void:
	value=_value
func _input(event):
	if event is InputEventKey and event.scancode==76:
		print(rect_position)

func _value_changed(value):
	$picksmol.position.y=(1-value/255.0)*(rect_size.y-16)+8


func _resized():
	$picksmol.scale.x=rect_size.x/48
	$picksmol.position.x=rect_size.x/2
	$Shader.scale=Vector2(rect_size.x/16,(rect_size.y-16)/256)
	pass # Replace with function body.
