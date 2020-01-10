extends MarginContainer

signal animation_finished;

onready var label = get_node("PanelContainer/VBoxContainer/Label");

var checkpoint 
var your_time 
var avg_time 
var avg_time_initial 
var top_record 
var bonus_points 
var bonus_points_initial 
var is_special_bonus = false
var bonus_points_step = 100

func format_string():
	var is_highscore = your_time < top_record;
	return """[center]{title}[/center][indent]{your_time}
{avg_time}
{top_record}[/indent]
[center]{bonus_info}[/center]
[center]{highscore_info}[/center]""".format({
	"title": "Time to reach point [color=yellow]\"[/color]{CHECKPOINT}[color=yellow]\"[/color]".format({"CHECKPOINT": checkpoint}),
	"your_time": "[color=blue]Your time[/color]                [color=yellow]:[/color]    [color=white]{YOUR_TIME}[/color]".format({"YOUR_TIME": "%03d" % your_time }),
	"avg_time":  "[color=blue]The avarage time[/color]         [color=yellow]:[/color]    [color=white]{AVG_TIME}[/color]".format({"AVG_TIME": "%03d" % avg_time}),
	"top_record":"[color=red ]Top record[/color]               [color=yellow]:[/color]    [color=white]{TOP_RECORD}[/color]".format({"TOP_RECORD": "%03d" % top_record}),
	"bonus_info": "{ADJECTIVE} bonus points [color=white]{BONUS_POINTS}[/color]".format({"ADJECTIVE": "Special" if is_special_bonus else "Good", "BONUS_POINTS": "%03d" % bonus_points}) if bonus_points > 0 else "Sorry, no bonus",
	"highscore_info": "You have broken a record !!!" if is_highscore else ""
});



func prepare(_checkpoint, _your_time, _avg_time, _top_record, _bonus_points, _is_special_bonus = false, _bonus_points_step = 100):
	checkpoint = _checkpoint
	your_time = _your_time
	avg_time = _avg_time
	avg_time_initial = _avg_time
	top_record = _top_record
	bonus_points = _bonus_points
	bonus_points_initial = _bonus_points
	is_special_bonus = _is_special_bonus
	bonus_points_step = _bonus_points_step

func update_label():
	label.set_bbcode(format_string());

func start():
	get_tree().create_timer(2).connect("timeout", self, "_show_and_start", [], CONNECT_ONESHOT);
	
func _show_and_start():
	visible = true;
	update_label();
	get_node("Tween").interpolate_property(label, "percent_visible", 0, 1, 5, Tween.TRANS_LINEAR, Tween.EASE_IN)
	get_node("Tween").start();

func finish():
	get_node("Timer").stop();
	get_tree().create_timer(2).connect("timeout", self, "emit_signal", ["animation_finished"], CONNECT_ONESHOT);

func check():
	if (avg_time <= your_time):
		finish()

func _on_Tween_tween_all_completed():
	get_node("Timer").start();
	check();

func _on_Timer_timeout():
	avg_time -= 1;
	bonus_points += bonus_points_step;
	update_label()
	get_node("Ping").play();
	check();
