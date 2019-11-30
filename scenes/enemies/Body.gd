extends CollisionPolygon2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var t = randf() * 100;
var kdif = randi()%3


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var k = 2 + kdif;
	t += delta;
	var x = cos(k*t)*cos(t)
	var y = cos(k*t)*sin(t)
	
	position.x = x;
	position.y = y;
	position *= Vector2(100, 30);
	pass
