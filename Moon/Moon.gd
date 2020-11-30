extends Area2D


var can_end_round = false
var body_entered

func _process(delta):
	if can_end_round && body_entered.sleeping && !body_entered.is_dragging:
		$AudioStreamPlayer2D.play()
		Global.end_level()
		body_entered.hide()
		body_entered.queue_free()

func _on_Moon_body_entered(body):
	if body.name == "Ship": 
		body_entered = body
		can_end_round = true


func _on_Moon_body_exited(body):
	if body.name == "Ship": 
		body_entered = null
		can_end_round = false
