extends KinematicBody2D
tool

var initial_speed;
export var speed = 2000;
onready var player = get_node("/root/World/Player");
export (PackedScene) var Hole;

var velocity;

func _ready():
	get_node("AnimatedSprite").animation = "ignition";

func fire():
	var my_pos = global_position
	var magnet_pos = player.get_node("Magnets/Fireball").global_position
	if (my_pos.x - magnet_pos.x != 0):
		rotation = atan((my_pos.y - magnet_pos.y) / (my_pos.x - magnet_pos.x));
	
	var desired_position = magnet_pos - my_pos;
	
	velocity = desired_position.normalized() * speed;

func _process(delta):
	if (!initial_speed):
		return;
		
	fire();
	
	move_and_collide(velocity * delta);

func _on_Fireball_ignited():
	get_node("AnimatedSprite").animation = "default";

func _on_hit_the_ground(body):
	#var hole = Hole.instance();
	#get_parent().add_child(hole);
	#hole.transform = get_global_transform();
	#hole.rotation = 0;
	queue_free();

func _on_Area2D_area_entered(area):
	#var hole = Hole.instance();
	#get_parent().add_child(hole);
	#hole.transform = get_global_transform();
	#hole.rotation = 0;
	queue_free();
