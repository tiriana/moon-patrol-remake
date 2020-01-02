extends Node2D
signal points;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	for rock in get_children():
		rock.connect("points", self, "_on_points")

func _on_points(_points, transform):
	emit_signal("points", _points, transform);
