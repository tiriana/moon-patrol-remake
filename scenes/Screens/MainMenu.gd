extends Node2D

func _ready():
	get_node("UI/Menu/Buttons/PlayBtn").disabled = true;
	get_node("UI/Menu/Buttons/ExitBtn").disabled = true;
	var camera = get_node("Player/Camera2D");
	var tween = get_node("Tween")
	var cameraOffset = 2400;
	
	tween.interpolate_property(camera, "position", camera.position - Vector2(cameraOffset, 0), camera.position, 10.0, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT);
	camera.position.x -= cameraOffset;
	tween.connect("tween_all_completed", self, "activate", [], CONNECT_ONESHOT)
	tween.start();
	
func activate():
	get_node("Player").activate();
	get_node("UI/Menu").disabled = false;
	get_node("UI/Menu/Buttons/PlayBtn").disabled = false;
	get_node("UI/Menu/Buttons/ExitBtn").disabled = false;
