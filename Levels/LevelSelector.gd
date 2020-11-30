extends ColorRect


var point_unit_offsets = [0, 0.1068, 0.2816, 0.3884, 0.5049, 0.6408, 0.7088, 0.801, 0.8932, 1]

func _ready():
	$Path2D/PathFollow2D.unit_offset = point_unit_offsets[Global.current_level]
	if Global.current_level < 9 && !Global.fresh_start:
		$PlayButton.hide()
		Global.increase_level()
		$Timer.start()
	elif Global.current_level == 9:
		print("go to win/lose screen")

func _process(delta):
	if $Path2D/PathFollow2D.unit_offset < point_unit_offsets[Global.current_level]:
		$Path2D/PathFollow2D.unit_offset += 0.1 * delta

func _on_Timer_timeout():
	$PlayButton.show()


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Levels/Level" + str(Global.current_level + 1) + ".tscn")
	$PlayButton.hide()
