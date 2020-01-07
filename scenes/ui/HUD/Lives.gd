extends VBoxContainer

onready var cars = [
get_node("CAR1"),
get_node("CAR2"),
get_node("CAR3")
]

func _ready():
	set_lives(0);

func set_lives(number):
	for i in range(cars.size()):
		if (i < number):
			cars[i].modulate = Color(1,1,1,1);
		else:
			cars[i].modulate = Color(.4,0,0,.2);