extends KinematicBody2D

signal respawned;

const MIN_SPEED = 500
const MAX_SPEED = 1000

const INITIAL_SPEED = MIN_SPEED
const GRAVITY = 10
const JUMP_POWER = -400
const FLOOR = Vector2(0, -1)
const ACCELERATION = 5
const BREAKING = -5;

onready var camera = get_node("Camera2D");
onready var alive = true;
onready var velocity = Vector2(INITIAL_SPEED, 0)
onready var is_jumping = false;
onready var reached_min_speed = false
onready var respawn_x = 0;


func _ready():
	get_node("VisibleCar/GunFront").gun_holder = self;
	get_node("VisibleCar/GunFront").world = get_parent();
	get_node("VisibleCar/GunTop").gun_holder = self;
	get_node("VisibleCar/GunTop").world = get_parent();

func car_offset(x):
	var X0 = MIN_SPEED;
	var Y0 = 0;
	
	var X1 = MAX_SPEED;
	var Y1 = 500;
	
	var m = 1.0 * (Y1 - Y0) / (X1 - X0);
	var b = Y1 - m * X1; 
		
	return clamp(m * x + b, 0, Y1);

func _stick_to_the_ground():
	var ground_y = get_node("VisibleCar/GroundScanner").get_collision_point().y-75/2;
	
	if (not is_jumping || position.y >= ground_y):
		position.y = ground_y;
		is_jumping = false
		
	get_node("Magnets").position.y = ground_y - position.y;
	
func move_car(delta):
	#velocity = move_and_slide(velocity * clamp(delta * 60.0, 0, 1), FLOOR);
	velocity = move_and_slide(velocity , FLOOR);
	
func _process(delta):
	if !alive:
		return
		
	if Input.is_action_pressed("ui_up") and not is_jumping:
		velocity.y = JUMP_POWER;
		is_jumping = true;
	velocity.y += GRAVITY;
	
	get_node("VisibleCar").position.x = car_offset(velocity.x);
	
	if velocity.x < MIN_SPEED:
		velocity.x += ACCELERATION 
		move_car(delta);
		_stick_to_the_ground();
		return;
	
	if Input.is_action_pressed("ui_right") and not is_jumping:
		velocity.x += ACCELERATION
	elif Input.is_action_pressed("ui_left") and not is_jumping:
		velocity.x += BREAKING
	elif not is_jumping:
		velocity.x -= ACCELERATION;
	
	if (not is_jumping):
		velocity.x = clamp(velocity.x, MIN_SPEED, MAX_SPEED)
			
	move_car(delta);
	
	_stick_to_the_ground();

func respawn():
	var x = respawn_x - 1500;
	position.x = clamp(x, 0, x);
	stop_blinking();
	_ready();	
	self.pause_mode = Node.PAUSE_MODE_INHERIT;
	get_parent().get_tree().paused = false;
	emit_signal("respawned");

func die():
	alive = false;
	velocity.x = 0;
	_stick_to_the_ground();
	start_blinking();
	get_node("RespawnTimer").start()
	
	self.pause_mode = Node.PAUSE_MODE_PROCESS;
	get_parent().get_tree().paused = true;
	
	get_node("Camera2D").shake(0.5, 75, 150);
	
const ENEMY_BULLET	= 16;
const ENEMY  =8;
const ROCK = 4;
	
func _on_hit(area_body):
	if (alive && [ROCK, ENEMY, ENEMY_BULLET].has(area_body.collision_layer)):
		die();
		#area_body.queue_free();
		#if (area_body.has_method("destroy")):
		#	area_body.destroy();

func _on_Hitbox_area_entered(area):
	_on_hit(area);

func _on_Hitbox_body_entered(body):
	_on_hit(body);
	
func start_blinking():
	get_node("BlinkingTimer").start();
	visible = false;
	
func stop_blinking():
	get_node("BlinkingTimer").stop();
	visible = true;

func _on_RespawnTimer_timeout():
	respawn();

func _on_BlinkingTimer_timeout():
	visible = !visible;
	pass # Replace with function body.
