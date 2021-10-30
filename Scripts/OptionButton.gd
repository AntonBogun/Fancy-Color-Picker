extends OptionButton



func _ready():
	add_item(" Axis View",0)
	add_item(" Cube view",1)
	emit_signal("item_selected",0)
	#add_item(" Cross section view",0)
	pass # Replace with function body.

