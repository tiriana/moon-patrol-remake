extends CanvasLayer

signal screen_closed
signal player_continues
signal player_starts_over

var SCREENS = {
	"game_over": preload("res://scenes/Screens/GameOverScreen.tscn"),
	"section_summary": preload("res://scenes/Screens/SectionSummary.tscn")
}

func _ready():
	connect("screen_closed", get_parent(), "_on_screen_closed");

func hide_screen():
	for child in get_node("CurrentScreen").get_children():
		child.queue_free()

func show_screen(screen_name):
	if SCREENS[screen_name]:
		return _show_existing_screen(SCREENS[screen_name]);
	
func _show_existing_screen(existing_screen_scene):
	hide_screen();
	var screen = existing_screen_scene.instance();
	
	screen.connect("player_continues", get_parent(), "_on_player_continues");
	screen.connect("player_starts_over", get_parent(), "_on_player_starts_over");
	
	get_node("CurrentScreen").add_child(screen)
	
	return screen