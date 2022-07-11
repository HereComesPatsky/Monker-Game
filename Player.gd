extends KinematicBody

var velocity = Vector3.ZERO
var speed = 10

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	else:
		velocity.x = 0
	if Input.is_action_pressed("ui_up"):
		velocity.z = -speed
	elif Input.is_action_pressed("ui_down"):
		velocity.z = speed
	else:
		velocity.z = 0
		
		
	move_and_slide(velocity)
