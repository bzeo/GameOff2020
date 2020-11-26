extends Node


var level
var ship
var total_par = 0
var total_shots = 0
var current_level = 0

func increase_level():
	current_level += 1

func add_to_shots(shots):
	total_shots += shots

func add_to_total_par(par_shots):
	total_par += par_shots

func end_level():
	add_to_shots(ship.stroke_count)
	add_to_total_par(5)
	var cs_instance = load("res://HUD/CurrentScore.tscn").instance()
	get_tree	().root.add_child(cs_instance)
	#add_to_total_par(level.par)

func change_to_level_selector():
	get_tree().change_scene("res://Levels/LevelSelector.tscn")
