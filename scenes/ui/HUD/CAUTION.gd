extends Label

var caution_level = 2;
var is_turned_on = false;
var is_blink_on = false;

onready var font_colors = [Color(1,1,1,0.2), Color(1,1,0,1), Color(1,0,0,1)];
onready var font_outline_modulates = [Color(1,1,1,0.4), Color(0,0,1,1), Color(1,1,0,1)];

func _ready():
	font_colors[0] = get("custom_colors/font_color");
	font_outline_modulates[0] = get("custom_colors/font_outline_modulate");
	update_colors();

func turn_on():
	is_turned_on = true;
	update_colors()
	
func turn_off():
	is_turned_on = false;
	update_colors();
	
func toggle():
	is_turned_on = !is_turned_on;
	update_colors();
	
func start_warning(level = 1):
	stop_warning();
	caution_level = level
	get_node("Blinker").start();
	get_node("AutoSwitchOff").start();
	
func stop_warning():
	get_node("Blinker").stop();
	get_node("AutoSwitchOff").stop();
	turn_off();
	
func update_colors():
	if !is_turned_on:
		add_color_override("font_color", font_colors[0])
		add_color_override("font_outline_modulate", font_outline_modulates[0])
		return
		
	add_color_override("font_color", font_colors[caution_level])
	add_color_override("font_outline_modulate", font_outline_modulates[caution_level])

func _on_Blinker_timeout():
	toggle();

func _on_AutoSwitchOff_timeout():
	stop_warning();
	pass # Replace with function body.
