extends Control

var buttons = [];
onready var selected_button_index = 0;
var disabled = false;

func update_buttons():
	for button in buttons:
		if (button == buttons[selected_button_index]):
			button.modulate = Color(1, 1, 1, 1);
		else:
			button.modulate = Color(1, 1, 1, 0.5);

func _ready():
	for button in get_node("Buttons").get_children():
		if (button.visible):
			buttons.push_back(button)
	update_buttons()

func _input(ev):
	if (disabled):
		return;
	
	if ev is InputEventKey and ev.pressed and ev.scancode == KEY_DOWN:
		selected_button_index = min(selected_button_index + 1, buttons.size() - 1);
		
	if ev is InputEventKey and ev.pressed and ev.scancode == KEY_UP:
		selected_button_index = max(selected_button_index - 1, 0);
		
	if ev is InputEventKey and ev.pressed and ev.scancode == KEY_ENTER:
		buttons[selected_button_index].emit_signal("pressed");
		buttons[selected_button_index].modulate = Color(0.5, 1, 1, 1);
		return;
		
	update_buttons()
