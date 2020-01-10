extends Node2D

var gun_holder;

export (PackedScene) var BulletBigScene
export var can_shot = true;
export var rate_of_fire = 0.01
export var is_interactive = true;

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("RateOfFire").wait_time = rate_of_fire;

func fire():
	if (!can_shot):
		return
	var bullet = BulletBigScene.instance();
	get_tree().get_root().get_node("World").add_child(bullet);
	bullet.transform = get_global_transform();
	bullet.initial_speed = gun_holder.velocity;
	can_shot = false;
	get_node("RateOfFire").start();
	get_node("Shot").play();

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_interactive and Input.is_action_just_pressed("fire"):
		fire()

func _on_RateOfFire_timeout():
	can_shot = true;
	get_node("RateOfFire").stop();
