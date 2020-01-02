extends Node

export var Y0 = 0;
export var Y1 = 0;
export var X0 = 0;
export var X1 = 0;

func get_y(x):
	return (Y1 - Y0) / (X1 - X0) * (x - X0) + Y0;
