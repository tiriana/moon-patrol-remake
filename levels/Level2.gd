extends Node2D
signal checkpoint
signal points

func _ready():
	randomize()
	
	for section in get_node("Sections").get_children():
		for checkpoint in section.get_node("Checkpoints").get_children():
			checkpoint.connect("checkpoint", self, "_on_checkpoint")
		if (section.get_node("Obstacles")):
			for obstacle in section.get_node("Obstacles").get_children():
				obstacle.connect("points", self, "_on_points")
		if (section.get_node("Enemies")):
			for enemy in section.get_node("Enemies").get_children():
				enemy.connect("points", self, "_on_points")

func _on_checkpoint(checkpoint):
	emit_signal("checkpoint", checkpoint);

func _on_points(points, transform):
	emit_signal("points", points, transform);
