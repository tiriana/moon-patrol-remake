extends Area2D

func _on_Destructable_area_entered(area):
	print(["destroying", get_parent().get_name()])
	#get_parent().queue_free();
	get_parent().add_to_group("to_clear");