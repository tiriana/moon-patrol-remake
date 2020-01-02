extends Node2D

signal points;
export var destruction_points = 100;
export var jump_points = 80; 

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func destroy():
	
	get_parent().queue_free();

func _on_RockBase_body_entered(body):
	emit_signal("points", destruction_points, get_global_transform());
	queue_free();
	body.queue_free();

func _on_RockBase_area_entered(area):
	queue_free();

func _on_overTheTop_area_entered(area):
	emit_signal("points", jump_points, get_global_transform());
