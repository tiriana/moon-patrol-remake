extends Node2D
tool


signal checkpoint
signal points
signal caution;

var HOLE = load("res://scenes/rocks/Hole.tscn");
var HOLE_SMALL = load("res://scenes/rocks/HOLE_SMALL.tscn");
var Rock_1 = load("res://scenes/rocks/Rock_1.tscn");
var Rock_2_DOUBLE = load("res://scenes/rocks/Rock_2_DOUBLE.tscn");
var MINE = load("res://scenes/rocks/MINE.tscn");
var TANK = load("res://scenes/enemies/TANK.tscn");
var TikTak_2 = load("res://scenes/enemies/groups/TikTak_2.tscn");
var TikTak_3 = load("res://scenes/enemies/groups/TikTak_3.tscn");
var Ufos_2 = load("res://scenes/enemies/groups/Ufos_2.tscn");
var Ufos_3 = load("res://scenes/enemies/groups/Ufos_3.tscn");

var CHECKPOINTS = [
[ 11520 , "A" ],
[ 21120 , "B" ],
[ 30720 , "C" ],
[ 40320 , "D" ],
[ 49920 , "E" ],
[ 61440 , "F" ],
[ 71040 , "G" ],
[ 80640 , "H" ],
[ 90240 , "I" ],
[ 99840 , "J" ]
];

var OBSTACLES = [
[39400,HOLE],
[49000,HOLE],
[62800,HOLE],
[64000,HOLE],
[73000,HOLE],
[78720,HOLE],
[2880,HOLE_SMALL],
[6400,HOLE_SMALL],
[7040,HOLE_SMALL],
[9000,HOLE_SMALL],
[10000,HOLE_SMALL],
[19500,HOLE_SMALL],
[22080,HOLE_SMALL],
[33280,HOLE_SMALL],
[38800,HOLE_SMALL],
[65000,HOLE_SMALL],
[66500,HOLE_SMALL],
[68500,HOLE_SMALL],
[75520,HOLE_SMALL],
[76160,HOLE_SMALL],
[77440,HOLE_SMALL],
[94380,HOLE_SMALL],
[95380,HOLE_SMALL],
[14400,HOLE],
[35520,HOLE],
[4800,Rock_1],
[8700,Rock_1],
[11000,Rock_1],
[30000,Rock_1],
[33920,Rock_1],
[40100,Rock_1],
[67200,Rock_1],
[78080,Rock_1],
[18100,Rock_1],
[20200,Rock_1],
[35000,Rock_1],
[40960,Rock_2_DOUBLE],
[68000,Rock_2_DOUBLE],
[72000,Rock_2_DOUBLE],
[80000,Rock_2_DOUBLE],
[91520,Rock_2_DOUBLE],
[92800,Rock_2_DOUBLE],
[93440,Rock_2_DOUBLE],
[32000,Rock_2_DOUBLE],
[37120,Rock_2_DOUBLE],
[38000,Rock_2_DOUBLE],
[99500,Rock_2_DOUBLE],
[52800,MINE],
[54400,MINE],
[55400,MINE],
[55680,MINE],
[56320,MINE],
[57000,MINE],
[58000,MINE],
[58000,MINE],
[58400,MINE],
[59000,MINE],
[59800,MINE],
[60700,MINE],
[61000,MINE],
[90880,MINE],
[92160,MINE]
];

var ENEMIES = [
[63500,TANK],
[66000,TANK],
[69000,TANK],
[70000,TANK],
[70800,TANK],
[74000,TANK],
[79360,TANK],
[81600,TANK],
[85440,TANK],
[89280,TANK],
[96000,TANK],
[97000,TANK],
[40325,TikTak_2],
[84480,TikTak_3],
[21125,TikTak_2],
[24960,TikTak_2],
[44160,TikTak_2],
[80645,TikTak_3],
[96005,TikTak_3],
[11525,Ufos_2],
[15360,Ufos_2],
[30725,Ufos_2],
[34560,Ufos_2],
[42240,Ufos_2],
[44200,Ufos_2],
[71045,Ufos_3],
[74880,Ufos_3],
[82560,Ufos_3],
[86400,Ufos_3],
[92160,Ufos_3],
[94080,Ufos_3],
[96010,Ufos_3]
]


func _ready():
	randomize()
	create_objects();

func create_objects():
	for pos_obj in CHECKPOINTS:
		var pos = pos_obj[0];
		var name = pos_obj[1];
		
		var checkpoint = get_node("Sections/AZ/Checkpoints/" + name);
		checkpoint.position.x = pos;
		checkpoint.connect("checkpoint", self, "_on_checkpoint")
		
	for pos_obj in OBSTACLES:
		var pos = pos_obj[0];
		var scene = pos_obj[1];
		var obj = scene.instance();
		get_node("Sections/AZ/Obstacles").add_child(obj);
		obj.position.x = pos;
		obj.connect("points", self, "_on_points")
		
	for pos_obj in ENEMIES:
		var pos = pos_obj[0];
		var scene = pos_obj[1];
		var obj = scene.instance();
		get_node("Sections/AZ/Obstacles").add_child(obj);
		obj.position.x = pos;
		obj.connect("points", self, "_on_points")
		obj.connect("caution", self, "_on_caution")
	
func _on_checkpoint(checkpoint):
	emit_signal("checkpoint", checkpoint);

func _on_points(points, transform):
	emit_signal("points", points, transform);
	
func _on_caution(level):
	emit_signal("caution", level);
