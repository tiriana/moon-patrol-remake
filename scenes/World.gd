extends Node2D

var points = 0;
onready var HUD = get_node("UI/HUD");
export (PackedScene) var PointsIndicator;

func _ready():
	pass # Replace with function body.

func _on_Level_checkpoint(checkpoint):
	get_node("Player").respawn_x = checkpoint.global_position.x;

func _on_Level_points(_points, transform):
	points += _points;
	HUD.set_points(points);
	
	var node = PointsIndicator.instance();
	node.get_node("Label").set_text(String(_points));
	node.transform = transform;
	add_child(node);
	node.visible = true;


func _on_Player_respawned():
	for child in get_node("DynamicObjects").get_children():
		child.queue_free();
