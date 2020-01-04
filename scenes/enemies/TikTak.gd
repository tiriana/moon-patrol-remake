extends KinematicBody2D
signal points;
export var destruction_points = 100;

onready var player = get_node("/root/World/Player");
var speed = 100;
var velocity;
var t = 0;

var speed_mod = randf() + 1;
var pos_mod = Vector2(randf(), randf()) * 50;
var active = false;

onready var laserGun = get_node("Body/Movement/LaserGun");

func _physics_process(delta):
	if (!player):
		return
	
	if (!active):
		return
	
	var desired_position = player.global_position - global_position;
	desired_position += Vector2(200, -500) + pos_mod
	
	
	var dir = desired_position.normalized()
	
	velocity = (dir * desired_position.length() * 3.5 * speed_mod);
	
	velocity.x = clamp(velocity.x, -500, 1000);
	
	move_and_collide(velocity * delta)

func activate():
	active = true
	laserGun.active = true;
	laserGun.get_node("Trigger").start();
	remove_child(get_node("PlayerScanner"));
	
func _on_Player_entered(body):
	activate();

func _on_PlayerScanner_area_entered(area):
	activate();


func _on_Hitbox_body_entered(body):
	if (!active):
		return;
	get_node("Body/Movement/AnimatedSprite").animation = "boom";
	body.queue_free();
	laserGun.queue_free()
	emit_signal("points", destruction_points, get_node("Body/Movement").get_global_transform());

func _on_AnimatedSprite_animation_finished():
	if (get_node("Body/Movement/AnimatedSprite").animation == "boom"):
		queue_free();
		visible = false;
