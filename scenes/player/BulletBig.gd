extends KinematicBody2D

var initial_speed 

func _ready():
	get_node("Sprite").playing = true;

export var speed = 1500;
func _process(delta):
	var bulletSpeed = Vector2(speed, 0).rotated(self.rotation) + Vector2(initial_speed.x, 0);
	
	move_and_slide(bulletSpeed);


func _on_Timer_timeout():
	queue_free()


func _on_CollisionShape2D_tree_exited():
	queue_free();
	pass # Replace with function body.
