extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export (PackedScene) var BulletBigScene
var can_shot = true;
export var rate_of_fire = 0.5 

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("RateOfFire").wait_time = rate_of_fire;
	pass # Replace with function body.

func fire():
	if (!can_shot):
		return
	var bullet = BulletBigScene.instance();
	get_parent().get_parent().add_child(bullet);
	var transform = get_global_transform()
	bullet.transform = get_global_transform();
	bullet.initial_speed = get_parent().velocity;
	can_shot = false;
	get_node("RateOfFire").start();
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		fire()
	pass


func _on_RateOfFire_timeout():
	can_shot = true;
	get_node("RateOfFire").stop();
	pass # Replace with function body.
