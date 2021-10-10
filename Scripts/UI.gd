extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


#Current Color, Found Color, Color Info, Color Name
func UpdateUI(col:Color,colfound:Color,colinfo:int,colname:String)->void:
	($ColorLabel as RichTextLabel).text="Current color:\n("+str(col.r8)+","+str(col.g8)+","+str(col.b8)+")"
	var info="(%d,%d,%d) [%d,%d,%d] "%[colfound.r8,colfound.g8,colfound.b8,colfound.r8/32,colfound.g8/32,colfound.b8/32]
	($ClosestColorLabel as RichTextLabel).text="Closest color: "+info+colname
	($ColorShow as Polygon2D).color=colfound
	($VSlider/picksmol as Polygon2D).color=col
	($VSlider as VSlider).material.set_shader_param("red",col.r8)
	($VSlider as VSlider).material.set_shader_param("gre",col.g8)
	($VSlider as VSlider).material.set_shader_param("blu",col.b8)
func _ready():
	pass
#(get_viewport().get_mouse_position()-get_viewport().size/2)
func _resized():
	var a=$MinimumSize.rect_min_size
	var b=get_viewport().size
	$TooSmall.visible=a.x>b.x or a.y>b.y
func _input(event):
	if Input.is_action_just_pressed("f11"):
		OS.window_fullscreen=!OS.window_fullscreen

func _on_ClosestColorLabel_meta_clicked(meta:String):
	print(meta.to_upper())
	pass # Replace with function body.


func _on_Interact_focus_entered():
	pass # Replace with function body.


func _on_Interact_focus_exited():
	pass # Replace with function body.


func _on_Interact_gui_input(event):
	pass # Replace with function body.


func _on_Type_pressed():
	pass # Replace with function body.
