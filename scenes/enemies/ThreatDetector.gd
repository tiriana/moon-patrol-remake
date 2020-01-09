extends Area2D

func _on_Threat():
	get_parent().queue_free();

func _on_ThreatDetector_body_entered(body):
	_on_Threat();
	body.queue_free();

func _on_ThreatDetector_area_entered(area):
	_on_Threat();
