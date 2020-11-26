extends RigidBody2D


var starting_position
var ending_position
var is_dragging
var stroke_count = 0

func _ready():
	Global.set("ship", self)
	stroke_count = 0

func _physics_process(delta):
	if is_dragging:
		var distance = (starting_position - get_global_mouse_position()) / 3
		# TODO: have ship look in direction they are going to go
		$ProgressBar.show()
		$ProgressBar.value = clamp(abs(distance.y) + abs(distance.x), 0, 100)
		var styleBox = $ProgressBar.get("custom_styles/fg")
		if $ProgressBar.value >= 0 && $ProgressBar.value <= 33:
			styleBox.bg_color = Color(0, 255, 0)
		elif $ProgressBar.value > 33 && $ProgressBar.value <= 66:
			styleBox.bg_color = Color(255, 255, 0)
		elif $ProgressBar.value > 66 && $ProgressBar.value <= 100:
			styleBox.bg_color = Color(255, 0, 0)
		rotation = position.angle_to_point(get_global_mouse_position())

func _process(delta):
	if sleeping:
		$Particles.emitting = false

func _input(event):
	if event is InputEventMouseButton && event.button_index == 1 && event.is_pressed() && sleeping:
		is_dragging = true
		starting_position = event.position
	elif event is InputEventMouseButton && event.button_index == 1 && !event.is_pressed() && is_dragging:
		increase_stroke_count()
		is_dragging = false
		ending_position = event.position
		print(starting_position, ending_position)
		$ProgressBar.hide()
		$ProgressBar.value = 0
		move()

func move():
	$Particles.emitting = true
	var distance = (starting_position - ending_position) * 3
	apply_impulse(Vector2(0, 0), distance) # TODO: clamp this

func increase_stroke_count():
	stroke_count += 1
