extends Node2D

export (PackedScene) var MainMenu;

var points = 0;
onready var HUD = get_node("UI/HUD");
export (PackedScene) var PointsIndicator;
var time = 0;

var lives = 3;

func _ready():
	HUD.set_time(0);
	HUD.set_lives(lives);
	HUD.set_checkpoint(" ");

func _on_Level_checkpoint(checkpoint):
	get_node("Player").respawn_x = checkpoint.global_position.x;
	HUD.set_checkpoint(checkpoint.get_name());

func _on_Level_points(_points, transform):
	points += _points;
	HUD.set_points(points);
	
	var node = PointsIndicator.instance();
	node.get_node("Label").set_text(String(_points));
	node.transform = transform;
	add_child(node);
	node.visible = true;

func _on_Player_respawned():
	if lives <= 0:
		get_tree().change_scene_to(MainMenu);
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
	lives -= 1;
	HUD.set_lives(lives);
	return ;
	if lives <= 0:
		get_tree().change_scene_to(MainMenu);
		get_tree().paused = false;
	pass # Replace with function body.
