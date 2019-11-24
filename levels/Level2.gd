extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var Ground = preload("res://levels/Ground1.tscn");

# Called when the node enters the scene tree for the first time.
func _ready():
	remove_child(get_node("ground"));
	
	for i in range(0, 20):
		var ground = Ground.instance();
		ground.position.x = ground.get_node("Sprite").texture.get_size().x * i;
		add_child(ground);
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
