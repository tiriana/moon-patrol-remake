extends KinematicBody2D

signal respawned;
signal died;

export var MIN_SPEED = 300.0
export var MID_SPEED = 500.0
export var MAX_SPEED = 1000.0

var speed_in_air = 0;

export var can_change_speed_in_air = true

onready var INITIAL_SPEED = MIN_SPEED
export var GRAVITY = 10.0
export var JUMP_POWER = -400.0
export var JUMP_POWER_SMALL = -250.0
const FLOOR = Vector2(0, -1)
export var ACCELERATION = 2.0
export var BREAKING = -5.0;

export var margin_left = 417;
export var margin_right = 695;

export var is_interactive = true;

onready var alive = true;
onready var velocity = Vector2(INITIAL_SPEED, 0)
onready var is_jumping = false;
onready var respawn_x = 0;

var is_engine_on = false;

func _ready():
	get_node("VisibleCar/GunFront").gun_holder = self;
	get_node("VisibleCar/GunTop").gun_holder = self;
	
	if (!is_interactive):
		get_node("VisibleCar/GunFront").can_shot = false;
		get_node("VisibleCar/GunTop").can_shot = false;
		
	get_node("Tween").interpolate_property(get_node("VisibleCar"), "position", get_node("VisibleCar").position, get_node("VisibleCar").position + Vector2(margin_left, 0), 2.0, Tween.TRANS_CUBIC, Tween.EASE_IN);
	get_node("Tween").connect("tween_all_completed", self, "start_engine", [], CONNECT_ONESHOT)
	get_node("Tween").start();
	
func start_engine():
	is_engine_on = true;
	
func car_offset(x):
	var X0 = MIN_SPEED ;
	var Y0 = margin_left;
	
	var X1 = MAX_SPEED;
	var Y1 = margin_right;
	
	var m = 1.0 * (Y1 - Y0) / (X1 - X0);
	var b = Y1 - m * X1; 
		
	return clamp(m * x + b, margin_left, margin_right);

func _stick_to_the_ground():
	var ground_y = get_node("VisibleCar/GroundScanner").get_collision_point().y-75/2;
	
	if (not is_jumping || position.y >= ground_y):
		position.y = ground_y;
		speed_in_air = 0;
		is_jumping = false
		
	get_node("Magnets").position.y = ground_y - position.y;
	
func move_car(delta):
	move_and_collide(velocity * delta);
	
func _process(delta):
	if !alive:
		return
		
	if !is_engine_on:
		_stick_to_the_ground();
		return
		
	if is_jumping and not Input.is_action_pressed("ui_right")  and not Input.is_action_pressed("ui_left") :
		velocity.x += speed_in_air;
		
	get_node("VisibleCar").position.x = car_offset(velocity.x);	
		
	if is_interactive and Input.is_action_pressed("ui_up") and not is_jumping:
		if (velocity.x < MIN_SPEED + 20):
			velocity.y = JUMP_POWER_SMALL
		else:
			velocity.y = JUMP_POWER
			
		is_jumping = true;
	velocity.y += GRAVITY;
	
	if is_interactive and Input.is_action_pressed("ui_right") and (not is_jumping or can_change_speed_in_air):
		velocity.x += ACCELERATION
		speed_in_air = ACCELERATION
	elif is_interactive and Input.is_action_pressed("ui_left") and (not is_jumping or can_change_speed_in_air):
		velocity.x += BREAKING
		speed_in_air = BREAKING
	elif not is_jumping:
		if velocity.x < MID_SPEED:
			velocity.x += ACCELERATION
		else:
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
	#self.pause_mode = Node.PAUSE_MODE_INHERIT;
	#get_parent().get_tree().paused = false;
	emit_signal("respawned");

func die():
	emit_signal("died");
	alive = false;
	velocity.x = 0;
	_stick_to_the_ground();
	start_blinking();
	get_node("RespawnTimer").start()
	
	#self.pause_mode = Node.PAUSE_MODE_PROCESS;
	#get_parent().get_tree().paused = true;
	
	get_node("Camera2D").shake(0.5, 75, 150);
	
const ENEMY_BULLET	= 16;
const ENEMY  =8;
const ROCK = 4;
	
func _on_hit(area_body):
	if (alive && [ROCK, ENEMY, ENEMY_BULLET].has(area_body.collision_layer)):
		die();

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
