extends "res://scenes/enemies/UFO.gd"

func _on_CautionScanner_area_entered(area):
	print("TIKTAK SIGNLS CAUTION");
	emit_signal("caution", caution_level);
