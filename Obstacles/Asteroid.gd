extends StaticBody2D


var rng = RandomNumberGenerator.new()
var rotation_amount

func _ready():
	rng.randomize()
	rotation_amount = rng.randf_range(-0.05, 0.05)

func _process(delta):
	$Sprite.rotate(rotation_amount)
