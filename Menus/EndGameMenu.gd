extends ColorRect


func _ready():
	$CurrentScore/TextureButton.hide()
	$WinLoseLabel.text = "Congrats! You Win!" if Global.total_shots <= Global.total_par else "Better luck next time!"
