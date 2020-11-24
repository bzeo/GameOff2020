extends Node


var total_shots = 0
var current_level = 0

func increase_level():
	current_level += 1

func add_to_shots(shots):
	total_shots += shots
