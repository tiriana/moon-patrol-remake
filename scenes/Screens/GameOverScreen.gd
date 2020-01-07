extends MarginContainer
signal player_continues
signal player_starts_over

func _on_Continue_pressed():
	emit_signal("player_continues");

func _on_Start_again_pressed():
	emit_signal("player_starts_over");

func _on_Main_menu_pressed():
	get_tree().change_scene("res://scenes/Screens/MainMenu.tscn");
	get_tree().paused = false;
	pass # Replace with function body.
