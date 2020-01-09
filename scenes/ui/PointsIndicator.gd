extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	var tween = get_node("Tween")
	tween.interpolate_property(get_node("Label"), "modulate", Color(1, 1, 1, 1), Color(1, 1, 1, 0), 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	position.y = clamp(position.y, 300, 800);
	rotation = 0;
	tween.interpolate_property(self, "position", position, position + Vector2(0, -200), 2.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	
	tween.start()




func _on_Tween_tween_all_completed():
	queue_free();
