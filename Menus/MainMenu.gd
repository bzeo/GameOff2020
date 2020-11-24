extends ColorRect


func _on_LicensingButton_pressed():
	$LicensingInformation.show()

func _on_Back_pressed():
	$LicensingInformation.hide()


func _on_PlayButton_pressed():
	get_tree().change_scene("res://Levels/LevelSelector.tscn")
