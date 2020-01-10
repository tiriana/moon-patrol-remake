extends KinematicBody2D
signal points;
signal caution;
export var destruction_points = 100;
export var caution_level = 1;

onready var player = get_node("/root/World/Player");
var speed = 100;
var velocity;
var t = 0;

var speed_mod = randf() + 1;
var pos_mod = Vector2(randf(), randf()) * 50;
var active = false;

var is_flying_away = false;

const END_OF_CHECKPOINT_COLLISINO_LAYER = 128;

onready var laserGun = get_node("Body/Movement/Gun");

func _physics_process(delta):
	if (!player):
		return

	if (!active):
		return

	var desired_position = player.get_node("Magnets/Ufos").global_position - global_position;
	desired_position += pos_mod

	var dir = desired_position.normalized()

	velocity = (dir * desired_position.length() * 3.5 * speed_mod);

	velocity.x = clamp(velocity.x, -500, 1000);

	if is_flying_away:
		velocity.y = -1200;

	move_and_collide(velocity * delta)

func activate():
	active = true
	laserGun.active = true;
	laserGun.get_node("Trigger").start();
	get_node("PlayerScanner").queue_free()
	get_node("Sounds/Incoming").play();

func _on_Player_entered(body):
	activate();

func _on_PlayerScanner_area_entered(area):
	activate();

func _on_CautionScanner_area_entered(area):
	emit_signal("caution", caution_level);

func _on_Hitbox_body_entered(body):
	if (!active):
		return;
	get_node("Body/Movement/AnimatedSprite").animation = "boom";
	get_node("Sounds/Boom").play();
	body.queue_free();
	laserGun.visible = false;
	#visible = false;
	emit_signal("points", destruction_points, get_node("Body/Movement").get_global_transform());

func _on_AnimatedSprite_animation_finished():
	if (get_node("Body/Movement/AnimatedSprite").animation == "boom"):
		queue_free();
		visible = false;

func fly_away():
	is_flying_away = true;
	laserGun.active = false;

func decide_faith():
	fly_away();
	get_tree().create_timer(3).connect("timeout", self, "_on_end_of_life");
	
func _on_end_of_life():
	print(["end of life", get_name()])
	queue_free();

func _on_Hitbox_area_shape_entered(area_id, area, area_shape, self_shape):
	if (area.collision_layer == END_OF_CHECKPOINT_COLLISINO_LAYER):
		decide_faith();
