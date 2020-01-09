extends Area2D

func _on_CautionScanner_body_entered(body):
	queue_free();


func _on_CautionScanner_area_entered(area):
	queue_free();
