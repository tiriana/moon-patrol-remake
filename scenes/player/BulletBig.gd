extends KinematicBody2D

var initial_speed 

export var speed = 1500;
func _process(delta):
	var bulletSpeed = Vector2(speed, 0).rotated(self.rotation) + Vector2(initial_speed.x, 0);
	
	move_and_slide(bulletSpeed);
	pass

func _on_Timer_timeout():
	queue_free()
