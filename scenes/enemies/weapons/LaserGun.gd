extends Node2D

export var rate_of_fire = 0.5;
export var fire_chance = 0.9;
var active = false;

var Bullet = load("res://scenes/enemies/weapons/Rocket.tscn");

var t = 0;
var rotator = Vector2(PI / 3,0);

func _ready():
	get_node("Trigger").wait_time = rate_of_fire;
	pass # Replace with function body.

func _process(delta):
	rotator = rotator.rotated(1.5 * delta);
	get_node("Rotator").rotation = 90 + rotator.y;	
	pass

func roll_the_dice():
	return randf() < fire_chance; 

func fire():
	var bullet = Bullet.instance();
	bullet.visible = true;
	get_tree().get_root().get_node("World").add_child(bullet);
	var transform = get_global_transform()
	bullet.transform = get_global_transform();
	bullet.rotation += get_node("Rotator").rotation;
	bullet.initial_speed = get_tree().get_root().get_node("World").get_node("Player").velocity;
	get_node("Shot").play();

func _on_Trigger_timeout():
	if (!active):
		return;
	if roll_the_dice():
		fire()
	pass # Replace with function body.
