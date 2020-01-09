extends Node2D

var gun_holder;

export (PackedScene) var BulletBigScene
export var can_shot = true;
export var rate_of_fire = 0.01

func _ready():
	get_node("RateOfFire").wait_time = rate_of_fire;

func fire():
	var bullet = BulletBigScene.instance();
	get_tree().get_root().get_node("World").add_child(bullet);
	bullet.transform = get_global_transform();
	bullet.initial_speed = gun_holder.velocity;

func _on_RateOfFire_timeout():
	fire();
	pass # Replace with function body.
