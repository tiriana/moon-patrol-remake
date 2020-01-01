extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(0, 200):
		var ground = get_node("GroundPiece").duplicate();
		ground.position.x = ground.get_node("Sprite").texture.get_size().x * i;
		add_child(ground);
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
