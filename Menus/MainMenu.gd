extends ColorRect


func _ready():
	$AudioStreamPlayer2D.play()

func _on_LicensingButton_pressed():
	$LicensingInformation.show()

func _on_Back_pressed():
	$LicensingInformation.hide()


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Levels/LevelSelector.tscn")


func _on_Tutorial_pressed():
	$TutorialInformation.show()
	$TutorialInformation/Arrow.play()


func _on_BackButton_pressed():
	$TutorialInformation.hide()
	$TutorialInformation/Arrow.stop()
