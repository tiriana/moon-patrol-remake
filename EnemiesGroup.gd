extends Node2D

signal points;
func _ready():
	for enemy in get_children():
		enemy.connect("points", self, "_on_points")

func _on_points(points, transform):
	emit_signal("points", points, transform);
	add_to_group("to_clear");
