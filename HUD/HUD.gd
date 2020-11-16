extends CanvasLayer


func _process(delta):
	$VBoxContainer/CurrentStroke.text = "Stroke: " + str(get_parent().find_node("Ship").stroke_count)
