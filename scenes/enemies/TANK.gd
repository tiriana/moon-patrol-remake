extends KinematicBody2D

var velocity = Vector2(0,0); 

export var destruction_points = 100;
export var caution_level = 1;

const SHOT_FRAME = 6;
const NORMAL_FRAME = 1;
const DESTROYED_FRAME = 0;

signal points;
signal caution;

onready var Gun = get_node("TankCannon");
onready var Sprite = get_node("Body/Hitbox/Sprite")

var shotTimer;

func _ready():
	Gun.gun_holder = self
	
func _on_CautionScanner_area_entered(area):
	emit_signal("caution", caution_level);

func _on_Hitbox_body_entered(body):
	Sprite.frame = DESTROYED_FRAME;
	Gun.visible = false;
	body.queue_free();
	queue_free();
	emit_signal("points", destruction_points, get_node("Body").get_global_transform());

func _on_RateOfFire_timeout():
	Gun.fire();