extends "res://scenes/enemies/UFO.gd"

func _on_CautionScanner_area_entered(area):
	emit_signal("caution", caution_level);
	get_node("CautionScanner").queue_free();
