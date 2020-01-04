extends Node2D

export var rate_of_fire = 5.3;
export var fire_chance = 0.9;
var active = false;
export (PackedScene) var Fireball;

var t = 0;

func _ready():
	get_node("Trigger").wait_time = rate_of_fire;
	pass # Replace with function body.

func roll_the_dice():
	return randf() < fire_chance; 

func fire():
	var bullet = Fireball.instance();
	get_tree().get_root().get_node("World").add_child(bullet);
	var bullet_rotation = bullet.rotation;
	bullet.transform = get_global_transform();
	bullet.rotation = bullet_rotation
	bullet.initial_speed = get_tree().get_root().get_node("World").get_node("Player").velocity;
	bullet.fire()

func _on_Trigger_timeout():
	if (!active):
		return;
	if roll_the_dice():
		fire()
	pass # Replace with function body.
