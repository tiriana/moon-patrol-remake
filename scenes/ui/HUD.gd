extends MarginContainer

func set_points(points):
	get_node("Panel/Points").set_text(String(points));

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
