extends KinematicBody2D

var mov = Vector2()

func _physics_process(_delta):
	mov.x = -500
	move_and_slide(mov) or false
	if position.x < -5:
#		remove_child(self)
		pass
