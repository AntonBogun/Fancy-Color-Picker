extends VSlider


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	material.set_shader_param("vertex1",Vector2(rect_size.x*rect_scale.x,-rect_size.y*rect_scale.y)+get_global_position())
	material.set_shader_param("vertex3",Vector2(-rect_size.x*rect_scale.x,rect_size.y*rect_scale.y)+get_global_position())
	material.set_shader_param("zoom",1/get_node("../..").zoom.x);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	material.set_shader_param("viewport",get_viewport_rect().size)
