extends Node2D

var t = randf() * 100;
var kdif = randi()%3

var rotationVector = [
	Vector2(500, 500),
	Vector2(500, -500),
	Vector2(-500, 500)
][randi()%3];

func _process(delta):
	rotationVector = rotationVector.rotated(0.7 * delta);
	var k = 2 + kdif;
	t += delta;
	var x = cos(k*t)*cos(t)
	var y = cos(k*t)*sin(t)
	
	position.x = x;
	position.y = y;
	position *= Vector2(100, 30);
	
	position.x += rotationVector.x + 600;
	pass
