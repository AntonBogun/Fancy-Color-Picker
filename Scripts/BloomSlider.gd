extends VSlider


func SetValue(_value:int)->void:
	value=_value




func _on_BloomSlider_focus_entered():
	$IsFocused.visible=true
	pass 

func _on_BloomSlider_focus_exited():
	$IsFocused.visible=false
	pass 


func _on_BloomSlider_gui_input(event):
	if event is InputEventMouseButton:
		var i=event.button_index
		if i==4 or i==5:
			value+=(9-i*2)*2
