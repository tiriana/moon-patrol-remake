extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var player = get_node("/root/World/Player");
var speed = 100;
var velocity;
var t = 0;

var speed_mod = randf() + 1;
var pos_mod = Vector2(randf(), randf()) * 50;
var active = false;

onready var laserGun = get_node("Body/Movement/LaserGun");

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	if (!player):
		return
	
	if (!active):
		return
	
	var desired_position = player.global_position - global_position;
	desired_position += Vector2(200, -700) + pos_mod
	var dir = desired_position.normalized()
	
	velocity = (dir * desired_position.length() * 3.5 * speed_mod );
	
	move_and_collide(velocity * delta)
	
	#position.x = clamp(position.x, player.position.x - 100, player.position.x + 100);
	#position.y = clamp(position.x, player.position.x - 100, player.position.x + 100)

func activate():
	active = true
	laserGun.active = true;
	laserGun.get_node("Trigger").start();
	
func _on_Player_entered(body):
	activate();
	
	
	#get_node("PlayerScanner").get_node("CollisionShape2D").disabled = true;
	pass # Replace with function body.


func _on_PlayerScanner_area_entered(area):
	activate();
	
	pass # Replace with function body.


func _on_Hitbox_area_entered(area):
	if (!active):
		return;
	area.queue_free();
	queue_free();
	visible = false;
	pass # Replace with function body.


func _on_Hitbox_body_entered(body):
	if (!active):
		return;
	body.queue_free();
	queue_free();
	visible = false;
	pass # Replace with function body.
