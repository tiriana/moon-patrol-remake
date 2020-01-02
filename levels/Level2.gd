extends Node2D
signal checkpoint

func _ready():
	randomize()
	
	for section in get_node("Sections").get_children():
		for checkpoint in section.get_node("Checkpoints").get_children():
			checkpoint.connect("checkpoint", self, "_on_checkpoint")

func _on_checkpoint(checkpoint):
	emit_signal("checkpoint", checkpoint);
	pass # Replace with function body.
