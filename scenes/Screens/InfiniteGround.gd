extends Node2D
var width

func _get_camera_center():
    var vtrans = get_canvas_transform()
    var top_left = -vtrans.get_origin() / vtrans.get_scale()
    var vsize = get_viewport_rect().size
    return top_left + 0.5*vsize/vtrans.get_scale()

func _ready():
	width = get_node("GroundPiece").get_node("Sprite").texture.get_size().x;
	get_node("GroundPiece2").position.x = width;

func _process(delta):
	if _get_camera_center().x > position.x + 1.2 * width:
		position.x += width;
