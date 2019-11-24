extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var initial_speed 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var bulletSpeed = Vector2(1500, 0).rotated(self.rotation) + Vector2(initial_speed.x, 0);
	
	move_and_slide(bulletSpeed);
	pass


func _on_Timer_timeout():
	queue_free()
	pass # Replace with function body.
