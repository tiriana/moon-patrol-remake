extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var player = get_node("/root/World/Player");
var speed = 100;
var velocity = Vector2(1, 1);
var t = 0;

var speed_mod = randf() + 1;
var pos_mod = Vector2(randf(), randf()) * 50;
var active = false;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

func _physics_process(delta):
	if (!player):
		return
	
	if (!active):
		return
	
	var desired_position = player.global_position - global_position;
	desired_position += Vector2(200, -500) + pos_mod
	var dir = desired_position.normalized()
	
	move_and_collide((dir * desired_position.length() * 3.6 * speed_mod * delta))
	
	#position.x = clamp(position.x, player.position.x - 100, player.position.x + 100);
	#position.y = clamp(position.x, player.position.x - 100, player.position.x + 100)

func _on_Player_entered(body):
	active = true
	
	print("ACTIVATING");
	
	#get_node("PlayerScanner").get_node("CollisionShape2D").disabled = true;
	pass # Replace with function body.


func _on_PlayerScanner_area_entered(area):
	active = true
	
	print("ACTIVATING");
	pass # Replace with function body.
