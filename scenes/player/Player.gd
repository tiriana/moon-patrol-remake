extends KinematicBody2D

const MIN_SPEED = 1000
const MAX_SPEED = 1500
const INITIAL_SPEED = MIN_SPEED + 20
const GRAVITY = 10
const JUMP_POWER = -400
const FLOOR = Vector2(0, -1)
const ACCELERATION = 10
const BREAKING = -20;

onready var alive = true;
onready var velocity = Vector2(0, 0)
onready var is_jumping = false;
onready var reached_min_speed = false

func _stick_to_the_ground():
	var ground_y = get_node("GroundScanner").get_collision_point().y-75/2;
	
	if (not is_jumping || position.y >= ground_y):
		position.y = ground_y;
		is_jumping = false

func _process(delta):
	if !alive:
		return
	
	if velocity.x < MIN_SPEED:
		velocity.x += ACCELERATION 
		velocity = move_and_slide(velocity, FLOOR);
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
	
	if Input.is_action_pressed("ui_up") and not is_jumping:
		velocity.y = JUMP_POWER;
		is_jumping = true;
	
	velocity.y += GRAVITY;
			
	velocity = move_and_slide(velocity, FLOOR);
	
	_stick_to_the_ground();
	
func die():
	alive = false;
	velocity.x = 0;
	_stick_to_the_ground();
	start_blinking();
	get_node("RespawnTimer").start()
	
const ENEMY_BULLET	= 16;
const ENEMY  =8;
const ROCK = 4;
	
func _on_hit(area_body):
	if (alive && [ROCK, ENEMY, ENEMY_BULLET].has(area_body.collision_layer)):
		die();
		area_body.queue_free();

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
	position.x -= 1500;
	stop_blinking();
	_ready();
	pass # Replace with function body.


func _on_BlinkingTimer_timeout():
	visible = !visible;
	pass # Replace with function body.
