extends CanvasLayer


func _process(delta):
	if get_parent().find_node("Ship"):
		$VBoxContainer/CurrentStroke.text = "Stroke: " + str(get_parent().find_node("Ship").stroke_count)
