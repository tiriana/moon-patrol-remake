extends HBoxContainer

onready var reached_points = get_node("ReachedPoints");
onready var other_points = get_node("OtherPoints");

func _ready():
	set_point("");

func set_point(checkpoint):
	var number = max(checkpoint.to_upper().ord_at(0) - 64, 0);

	var r_string = ""
	var o_string = ""
	
	for i in range(0, min(number, 26)):
		r_string += char(i + 65) + " "
		
	for i in range(number, 26):
		o_string += char(i + 65) + " "
	
	reached_points.set_text(r_string);
	other_points.set_text(o_string);
