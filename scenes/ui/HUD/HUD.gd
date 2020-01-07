extends MarginContainer

export (PackedDataContainer) var CAUTION; 

func caution(level = 1):
	get_node("Panel/GridContainer/MiddlePanel/HBoxContainer/UpperPanel/CAUTION").start_warning(level);

func set_points(points):
	get_node("Panel/GridContainer/LeftPanel/VBoxContainer/ScoreContainer/Score").set_text(String(points));

func set_time(time):
	get_node("Panel/GridContainer/MiddlePanel/HBoxContainer/UpperPanel/LeftPanel/Time").set_text("Time: " + String(time))

func set_lives(lives):
	get_node("Panel/GridContainer/RightPanel/Lives").set_lives(lives);
	
func set_checkpoint(checkpoint_name):
	get_node("Panel/GridContainer/MiddlePanel/HBoxContainer/ProgressContainer").set_point(checkpoint_name)
	get_node("Panel/GridContainer/MiddlePanel/HBoxContainer/UpperPanel/LeftPanel/LastCheckpoint").set_text("Last point: " + checkpoint_name)