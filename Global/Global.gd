extends Node


var fresh_start = true
var ship
var total_par = 0
var total_shots = 0
var current_level = 0
var level_pars = [3, 3, 4, 4, 2, 6, 2, 3, 4, 5]


func increase_level():
	current_level += 1

func add_to_shots(shots):
	total_shots += shots

func add_to_total_par(par_shots):
	total_par += par_shots

func end_level():
	fresh_start = false
	add_to_shots(ship.stroke_count)
	add_to_total_par(level_pars[current_level])
	var cs_instance = load("res://HUD/CurrentScore.tscn").instance()
	get_tree	().root.add_child(cs_instance)

func change_to_level_selector():
	get_tree().change_scene("res://Levels/LevelSelector.tscn")
