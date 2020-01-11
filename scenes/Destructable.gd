extends Area2D

func _on_Destructable_area_entered(area):
	get_parent().add_to_group("to_clear");
