extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func get_borders():
	return [Vector2($Panel.anchor_right,$Panel2.anchor_bottom),Vector2($Panel3.anchor_left,$Panel4.anchor_top)]
