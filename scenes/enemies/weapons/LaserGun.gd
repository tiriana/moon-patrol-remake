extends Node2D

export var rate_of_fire = 0.5;
export var fire_chance = 0.9;
var active = false;

func _ready():
	get_node("Trigger").wait_time = rate_of_fire;
	pass # Replace with function body.

#func _process(delta):
#	pass

func roll_the_dice():
	return randf() < fire_chance; 

func fire():
	var bullet = get_node("Bullet").duplicate();
	bullet.visible = true;
	get_tree().get_root().get_node("World").add_child(bullet);
	var transform = get_global_transform()
	bullet.transform = get_global_transform();
	bullet.initial_speed = get_tree().get_root().get_node("World").get_node("Player").velocity;

func _on_Trigger_timeout():
	if (!active):
		return;
	if roll_the_dice():
		fire()
	pass # Replace with function body.
