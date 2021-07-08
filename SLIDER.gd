extends Polygon2D



export(Color) var OutLine = Color(0,0,0) setget set_color
export(float) var Width = 2.0 setget set_width

#outline stuff
func _draw():
	var poly = get_polygon()
	for i in range(1 , poly.size()):
		draw_line(poly[i-1] , poly[i], OutLine , Width)
	draw_line(poly[poly.size() - 1] , poly[0], OutLine , Width)

func set_color(color):
	OutLine = color
	update()

func set_width(new_width):
	Width = new_width
	update()
# warning-ignore:unused_argument
func _process(delta):
	if(get_parent() is VSlider):
		position=Vector2(8,(1-get_parent().value/255.0)*(get_parent().rect_size.y-16)+8)
	else:
		position=Vector2((get_parent().value/255.0)*(get_parent().rect_size.y)+8,0)
	


