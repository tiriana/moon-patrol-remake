extends KinematicBody2D

var initial_speed 
export var speed = 300;
onready var player = get_node("/root/World/Player");

func _ready():
	get_node("Sprite").modulate = Color(1, 0, 0) # blue shade
	pass # Replace with function body.

func _process(delta):
	if (!initial_speed):
		return;
	
	if rotation > PI / 2:
		rotation -= 1.5 * delta;
	if rotation < PI / 2:
		rotation += 1.5 * delta;
	
	
	var bulletSpeed = Vector2(speed, 0).rotated(self.rotation) + Vector2(player.velocity.x * 0.8, 0);
	
	move_and_slide(bulletSpeed);
	pass

func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
