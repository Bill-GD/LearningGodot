extends CharacterBody2D

func _process(_delta):
	var direction: Vector2 = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')
	velocity = 100 * direction

	move_and_slide()

	if direction != Vector2.ZERO:
		if direction.x < 0: $Sprite2D.flip_h = true
		elif direction.x > 0: $Sprite2D.flip_h = false
		$Sprite2D.play('move')
	else:
		$Sprite2D.stop()
