extends KinematicBody2D

var initial_speed 
export var speed = 400;

func _ready():
	get_node("Sprite").modulate = Color(1, 0, 0) # blue shade
	pass # Replace with function body.

func _process(delta):
	if (!initial_speed):
		return;
	var bulletSpeed = Vector2(speed, 0).rotated(self.rotation) + Vector2(initial_speed.x, 0);
	
	move_and_slide(bulletSpeed);
	pass

func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
