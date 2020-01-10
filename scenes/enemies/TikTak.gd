extends "res://scenes/enemies/UFO.gd"

func _on_CautionScanner_area_entered(area):
	emit_signal("caution", caution_level);
	get_node("CautionScanner").queue_free();


func _on_EndOfCheckpointScanner_area_entered(area):
	decide_faith();
	pass # Replace with function body.
