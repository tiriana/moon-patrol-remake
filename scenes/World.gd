extends Node2D

var points = 0;
onready var HUD = get_node("UI/HUD");
export (PackedScene) var PointsIndicator;
var time = 0;

var lives = 3;

func _ready():
	HUD.set_time(0);
	HUD.set_lives(lives);
	HUD.set_checkpoint(" ")
	HUD.set_highscore(15000)
	HUD.set_points(0)

func _on_Level_checkpoint(checkpoint):
	get_node("Player").respawn_x = checkpoint.global_position.x;
	HUD.set_checkpoint(checkpoint.get_name());
	
	if (checkpoint.is_last or checkpoint.is_milestone):
		show_summary_screen(checkpoint);
		return;

func show_summary_screen(checkpoint):
	get_tree().paused = true;
	var screen = get_node("UI").show_screen("section_summary");

	screen.prepare(checkpoint.get_name(), time, checkpoint.avg_time, checkpoint.top_record, checkpoint.bonus(time), checkpoint.is_last)
	screen.connect("animation_finished", self, "reset_time_and_resume", [], CONNECT_ONESHOT)
	screen.start();
	
func reset_time_and_resume():
	time = 0;
	HUD.set_time(time);
	get_node("UI").hide_screen();
	get_tree().paused = false;

func _on_Level_points(_points, transform):
	points += _points;
	HUD.set_points(points);
	
	var node = PointsIndicator.instance();
	node.get_node("Label").set_text(String(_points));
	node.transform = transform;
	add_child(node);
	node.visible = true;

func _on_Player_respawned():
	get_node("Player").pause_mode = Node.PAUSE_MODE_INHERIT;
	
	if lives <= 0:
		show_game_over_screen();
	else:
		get_tree().paused = false; 
	
	for child in get_node("DynamicObjects").get_children():
		child.queue_free();

func _on_Level_caution(level):
	HUD.caution(level)

func _on_GameTime_timeout():
	time += 1;
	HUD.set_time(time);
	pass # Replace with function body.

func _on_Player_died():
	get_tree().paused = true;
	get_node("Player").pause_mode = Node.PAUSE_MODE_PROCESS;
	
	lives -= 1;
	HUD.set_lives(lives);
		
func show_game_over_screen():
	get_tree().paused = true;
	get_node("UI").show_screen("game_over");
	
func _on_player_continues():
	lives = 3;
	points = 0;
	
	HUD.set_lives(lives);
	HUD.set_points(points);
	
	get_node("UI").hide_screen();
	get_tree().paused = false;
	
func _on_player_starts_over():
	get_tree().reload_current_scene();
	get_tree().paused = false;
	
func _on_screen_closed():
	get_tree().paused = false;
