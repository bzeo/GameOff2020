extends ColorRect


func _ready():
	$HBoxContainer/TotalStrokes.text = "Total Strokes: " + str(Global.total_shots)
	$HBoxContainer/TotalPar.text = "Total Par: " + str(Global.total_par)
	show()
	$AnimationPlayer.play("fadeIn")

func _on_AnimationPlayer_animation_finished(anim_name):
	$TextureButton.disabled = false


func _on_TextureButton_pressed():
	Global.change_to_level_selector()
