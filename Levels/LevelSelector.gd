extends ColorRect


var point_unit_offsets = [0, 0.1068, 0.2816, 0.3884, 0.5049, 0.6408, 0.7088, 0.801, 0.8932, 1]

func _process(delta):
	if $Path2D/PathFollow2D.unit_offset < point_unit_offsets[Global.current_level]:
		$Path2D/PathFollow2D.unit_offset += 0.05 * delta

func _input(event):
	if event.is_action_pressed("ui_down"):
		if Global.current_level < 9:
			Global.increase_level()
