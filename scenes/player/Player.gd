extends KinematicBody2D

const MIN_SPEED = 200
const MAX_SPEED = 2000
const INITIAL_SPEED = MIN_SPEED + 20
const GRAVITY = 10
const JUMP_POWER = -400
const FLOOR = Vector2(0, -1)
const ACCELERATION = 10
const BREAKING = -20;

var alive = true;

var velocity = Vector2(0, 0)

var is_jumping = false;

var reached_min_speed = false

func _ready():
	pass 

func _process(delta):
	if !alive:
		return
	if velocity.x < MIN_SPEED:
		velocity.x += ACCELERATION 
		velocity = move_and_slide(velocity, FLOOR);
		return
	
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
	
	var ground_y = get_node("RayCast2D").get_collision_point().y-75/2;
	
	if (not is_jumping || position.y >= ground_y):
		position.y = ground_y;
		is_jumping = false
	pass
	
	
func die():
	velocity.x = 0;
	
func _on_hit(area_body):
	if (alive && [4, 8, 16].has(area_body.collision_layer)):
		die();
		area_body.queue_free();
	

func _on_Hitbox_area_entered(area):
	_on_hit(area);
		#is_jumping = true;
		#velocity = move_and_slide(Vector2(-800, -300));
	pass # Replace with function body.


func _on_Hitbox_body_entered(body):
	_on_hit(body);
	pass # Replace with function body.
