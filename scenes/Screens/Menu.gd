extends CenterContainer

onready var buttons = get_node("Buttons").get_children()
onready var selected_button_index = 0;
var disabled = false;

func update_buttons():
	for button in buttons:
		if (button == buttons[selected_button_index]):
			button.modulate = Color(1, 1, 1, 1);
		else:
			button.modulate = Color(1, 1, 1, 0.5);

func _ready():
	update_buttons()
	
func _input(ev):
	if (disabled):
		return;
	if ev is InputEventKey and ev.scancode == KEY_DOWN:
		selected_button_index = min(selected_button_index + 1, buttons.size() - 1);
		
	if ev is InputEventKey and ev.scancode == KEY_UP:
		selected_button_index = max(selected_button_index - 1, 0);
		
	if ev is InputEventKey and ev.scancode == KEY_ENTER:
		buttons[selected_button_index].emit_signal("pressed");
		buttons[selected_button_index].modulate = Color(0.5, 1, 1, 1);
		return;
		
	update_buttons()

func _on_PlayBtn_pressed():
	if (disabled):
		return;
	selected_button_index = 0;
	update_buttons();
	disabled = true;
	buttons[0].modulate = Color(0.5, 1, 1, 1);
	
	var camera = get_tree().get_root().get_node("MainMenu").get_node("Player").get_node("Camera2D");
	var music = get_tree().get_root().get_node("MainMenu").get_node("Music");
	camera.smoothing_enabled = true
	var tween = get_node("Tween")
	tween.interpolate_property(camera, "smoothing_speed", 1, 0, 1.5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	#tween.interpolate_property(get_node("FadeOut"), "modulate", Color(0,0,0,0), Color(0,0,0,1), 3, Tween.TRANS_LINEAR, Tween.EASE_IN)
	
	tween.interpolate_property(music, "volume_db", 0, -80, 4, Tween.TRANS_LINEAR, Tween.EASE_IN)
	
	
	
	get_node("GameStartDelay").start();
	tween.start();

func _on_GameStartDelay_timeout():
	get_tree().get_root().get_node("MainMenu").visible = false;
	get_tree().change_scene("res://scenes/World.tscn");

func _on_ExitBtn_pressed():
	buttons[1].modulate = Color(0.5, 1, 1, 1);
	disabled = true;
	selected_button_index = 1;
	update_buttons();
	get_tree().quit()
