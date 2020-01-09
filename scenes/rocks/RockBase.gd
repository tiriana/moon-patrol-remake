extends Node2D

signal points;
export var destruction_points = 100;
export var jump_points = 80; 

func _ready():
	pass # Replace with function body.

func destroy():
	get_parent().queue_free();

func _on_RockBase_body_entered(body):
	emit_signal("points", destruction_points, get_global_transform());
	queue_free();
	body.queue_free();

func _on_overTheTop_area_entered(area):
	emit_signal("points", jump_points, get_global_transform());
