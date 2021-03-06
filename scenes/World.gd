extends Node2D

var points = 0;
onready var HUD = get_node("UI/HUD");
export (PackedScene) var PointsIndicator;
var time = 0;

var lives = 3;
var reached_end = false;

func _ready():
	HUD.set_time(0);
	HUD.set_lives(lives);
	HUD.set_checkpoint(" ")
	HUD.set_highscore(15000)
	HUD.set_points(0)
	
	get_node("Player").position.x = get_node("Level/StartPoint").position.x;
	var cam = get_node("Player/Camera2D")
	get_node("PlayerTween").interpolate_property(cam, "position", cam.position - Vector2(500, 0), cam.position, 6.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT);
	get_node("PlayerTween").start();

func _on_StartMusic_finished():
	get_node("GameTime").start();
	get_node("Player").activate();
	get_node("Sounds/MainMusic").play();
	
var respawn_x = 0;

func _on_Level_checkpoint(checkpoint):
	if checkpoint.position.x > respawn_x:
		respawn_x = checkpoint.position.x;
		
	get_node("Player").respawn_x = respawn_x
	
	for node in get_tree().get_nodes_in_group("to_clear"):
		node.queue_free();
	
	HUD.set_checkpoint(checkpoint.get_name());
		
	if (checkpoint.is_last):
		reached_end = true;
	
	if (checkpoint.is_last or checkpoint.is_milestone):
		show_summary_screen(checkpoint);
		return;

func show_summary_screen(checkpoint):
	get_tree().paused = true;
	var screen = get_node("UI").show_screen("section_summary" if checkpoint.is_last else "section_summary");

	screen.prepare(checkpoint.get_name(), time, checkpoint.avg_time, checkpoint.top_record, checkpoint.bonus(time), checkpoint.is_last)
	screen.connect("animation_finished", self, "give_checpoint_points", [checkpoint, time], CONNECT_ONESHOT)
	screen.connect("animation_finished", self, "reset_time_and_resume", [], CONNECT_ONESHOT)
	screen.start();
	get_node("Sounds/SectionEnd").play();

func give_checpoint_points(checkpoint, time):
	_on_Level_points(checkpoint.calc_points(time), checkpoint.get_global_transform());

func reset_time_and_resume():
	time = 0;
	HUD.set_time(time);
	get_node("UI").hide_screen();
	get_tree().paused = false;
	
	if (reached_end):
		show_you_won_screen()

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
	get_node("Player").position.x = max(respawn_x - 960, 660);
	
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
	
	if lives <= 0:
		get_node('Sounds/GameOver').play();

func show_game_over_screen():
	get_tree().paused = true;
	get_node("UI").show_screen("game_over");

func show_you_won_screen():
	get_tree().paused = true;
	get_node("UI").show_screen("you_won");
	
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

