extends KinematicBody2D

var initial_speed;
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

var is_exploding = false;
func explode():
	if is_exploding:
		return;
	is_exploding = true;
	get_node("ThreatDetector/CollisionShape2D2").disabled = true;
	get_node("GroundDetector/CollisionShape2D3").disabled = true;
	initial_speed = false;
	var fireball = get_node_or_null("Fireball");
	fireball and fireball.queue_free();
	var sprite = get_node_or_null("Sprite");
	sprite and sprite.queue_free();
	
	get_node("Explosion").visible = true;
	get_node("Explosion").play("default")
	get_node("Explosion").playing = true;

func _on_GroundDetector_body_entered(body):
	explode();

func _on_Explosion_animation_finished():
	queue_free();

func _on_ThreatDetector_body_entered(body):
	explode();