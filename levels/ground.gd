extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(0, 76):
		var ground = get_node("GroundPiece").duplicate();
		ground.position.x = ground.get_node("Sprite").texture.get_size().x * i;
		add_child(ground);
	pass # Replace with function body.