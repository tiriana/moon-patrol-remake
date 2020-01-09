extends KinematicBody2D

var initial_speed;
export var speed = 2000;
onready var player = get_node("/root/World/Player");
export (PackedScene) var Hole;

var velocity;

func _ready():
	get_node("AnimatedSprite").animation = "ignition";

func fire(no_rotation = false):
	var my_pos = global_position
	var magnet_pos = player.get_node("Magnets/Fireball").global_position
	if (!no_rotation && my_pos.x - magnet_pos.x != 0):
		rotation = atan((my_pos.y - magnet_pos.y) / (my_pos.x - magnet_pos.x));

	var desired_position = magnet_pos - my_pos;

	velocity = desired_position.normalized() * speed;

func _process(delta):
	if (!initial_speed):
		return;

	fire(true);

	move_and_collide(velocity * delta);

func _on_Fireball_ignited():
	get_node("AnimatedSprite").animation = "default";

func _on_Area2D_body_shape_entered(body_id, body, body_shape, area_shape):
	var world = get_tree().get_root().get_node("World");
	var hole = Hole.instance();
	var pos_Y = hole.position.y;
	hole.z_index = 2;
	world.get_node("DynamicObjects").add_child(hole);
	hole.transform = get_global_transform();
	hole.rotation = 0;
	hole.position.y = 927.0;

	hole.connect("points", world, "_on_Level_points")

	queue_free();
