extends KinematicBody2D


var mov = Vector2()
const ground = Vector2(0,-1)

func _physics_process(_delta):
	var jump = Input.is_action_just_pressed("jump")
	mov.y += 10
	if jump and is_on_floor():
		mov.y = -500
	if !is_on_floor():
		$CPUParticles2D.visible = false
	else:
		$CPUParticles2D.visible = true
	if position.y <= 250:
		mov.y = +50
	move_and_slide(mov, ground) or false
