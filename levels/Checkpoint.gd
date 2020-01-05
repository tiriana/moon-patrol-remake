extends Node2D
signal checkpoint
tool

export var isMilestone = false;
export var isLast = false;
var is_active = false;
func _ready():
	get_node("Letter/Label").text = get_name();
	
func activate():
	if (is_active):
		return;
	is_active = true;
	emit_signal("checkpoint", self);
	get_node("Letter/Label").add_color_override("font_color", Color(1,1,1))
	print("Activating ", get_name());

func _on_PlayerScanner_body_entered(body):
	if body.collision_layer == 1:
		activate()

func _on_PlayerScanner_area_entered(area):
	if area.collision_layer == 1:
		activate()
