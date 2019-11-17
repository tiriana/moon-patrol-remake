extends KinematicBody2D
class_name ThePlayer


const MIN_SPEED = 200
const MAX_SPEED = 3000
const INITIAL_SPEED = MIN_SPEED + 20
const GRAVITY = 10
const JUMP_POWER = -250
const FLOOR = Vector2(0, -1)
const ACCELERATION = 10
const BREAKING = -40;

var velocity = Vector2(0, 0)

var reached_min_speed = false


func _ready():
	pass 

func _process(delta):
	if is_on_floor() and velocity.x < MIN_SPEED:
		velocity.x += ACCELERATION 
		velocity = move_and_slide(velocity, FLOOR);
		return
	
	
	
	if Input.is_action_pressed("ui_right"):
		velocity.x += ACCELERATION
	elif Input.is_action_pressed("ui_left"):
		velocity.x += BREAKING
	else:
		velocity.x -= ACCELERATION;
	
	velocity.x = clamp(velocity.x, MIN_SPEED, MAX_SPEED)
	
	if Input.is_action_pressed("ui_up") and is_on_floor():
		velocity.y = JUMP_POWER;
	
	velocity.y += GRAVITY;
			
	velocity = move_and_slide(velocity, FLOOR);
	
	pass
