extends Area2D


func _on_Moon_body_entered(body):
	if body.name == "Ship" && abs(body.linear_velocity.x) < 150.0 && abs(body.linear_velocity.y) < 150.0:
		body.hide()
		body.queue_free()
