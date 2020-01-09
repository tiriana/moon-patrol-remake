extends Node2D
signal checkpoint

export var is_milestone = false;
export var is_last = false;
export var avg_time = 80;
export var top_record = 80;
export var bonus_points = 1000;

func bonus(time):
	return bonus_points if time < top_record else 0;

var is_active = false;
func _ready():
	get_node("Letter/Label").text = get_name();

func activate():
	if (is_active):
		return;
	is_active = true;
	emit_signal("checkpoint", self);
	get_node("Letter/Label").add_color_override("font_color", Color(1,1,1))

func _on_PlayerScanner_body_entered(body):
	if body.collision_layer == 1:
		activate()

func _on_PlayerScanner_area_entered(area):
	if area.collision_layer == 1:
		activate()
