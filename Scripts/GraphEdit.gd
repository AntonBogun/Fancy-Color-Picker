extends GraphEdit


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _connection_request(a,n1,b,n2):
	connect_node(a,n1,b,n2)
	print("bruh")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
