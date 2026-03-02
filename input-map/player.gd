extends CharacterBody2D

const SPEED = 300.0
const JUMP_FORCE = -400.0
const GRAVITY = 15.0

func _physics_process(delta):
	var direction = Input.get_axis("move_left", "move_right")
	velocity.x = direction * SPEED
	velocity.y += GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_FORCE
		$JumpSound.play()
		
	move_and_slide()
