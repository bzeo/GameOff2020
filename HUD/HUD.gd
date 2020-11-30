extends CanvasLayer


func _process(delta):
	if get_parent().find_node("Ship"):
		$VBoxContainer/LevelPar.text = "Par: " + str(Global.level_pars[Global.current_level])
		$VBoxContainer/CurrentStroke.text = "Stroke: " + str(get_parent().find_node("Ship").stroke_count)
