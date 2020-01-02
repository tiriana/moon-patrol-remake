extends Node2D
signal checkpoint
tool

export var letter = "X";
export var isMilestone = false;

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Letter/Label").text = letter;
	pass # Replace with function body.
	
func activate():
	emit_signal("checkpoint", self);
	get_node("Letter/Label").add_color_override("font_color", Color(1,1,1))

func _on_PlayerScanner_body_entered(body):
	activate()

func _on_PlayerScanner_area_entered(area):
	activate()
