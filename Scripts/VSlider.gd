extends VSlider


func SetValue(_value:int)->void:
	value=_value

func _value_changed(value):
	$picksmol.position.y=(1-value/255.0)*(rect_size.y-16)+8


func _resized():
	$picksmol.scale.x=rect_size.x/48
	$picksmol.position.x=rect_size.x/2
	$Shader.scale=Vector2(rect_size.x/16,(rect_size.y-16)/256)

func _gui_input(event):
	if event is InputEventMouseButton:
		var i=event.button_index
		if i==4 or i==5:
			value+=(9-i*2)*2
		#print(event.as_text())

func _on_VSlider_focus_entered():
	$IsFocused.visible=true


func _on_VSlider_focus_exited():
	$IsFocused.visible=false
