extends CharacterBody2D
class_name Player

var is_navigating: bool = false


func _process(_delta):
	var direction: Vector2 = Input.get_vector('ui_left', 'ui_right', 'ui_up', 'ui_down')

	if $MouseTimeout.is_stopped() and Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		is_navigating = true
		$MouseTimeout.start()
		$NavigationAgent2D.target_position = get_global_mouse_position()

	if is_navigating:
		direction = ($NavigationAgent2D.get_next_path_position() - global_position).normalized()

	if direction != Vector2.ZERO:
		if direction.x < 0:
			$Sprite2D.flip_h = true
			# $Sprite2D/LightOccluder2D.scale = Vector2(-1, 1)
		elif direction.x > 0:
			$Sprite2D.flip_h = false
			# $Sprite2D/LightOccluder2D.scale = Vector2(1, 1)
		$AnimationPlayer.play('move')
	else:
		$AnimationPlayer.play('idle')

	velocity = 100 * direction
	move_and_slide()

func _on_navigation_agent_2d_navigation_finished():
	is_navigating = false
	velocity = Vector2.ZERO
