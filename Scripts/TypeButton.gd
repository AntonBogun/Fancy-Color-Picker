extends Button


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _pressed():
	print("bruh")

#func _make_custom_tooltip(for_text):
#	mouse_default_cursor_shape=Control.CURSOR_FORBIDDEN
func _mouse_exited():
	mouse_default_cursor_shape=Control.CURSOR_ARROW


