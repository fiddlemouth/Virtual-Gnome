extends Tool


func _process(delta):
	if !activated:
		return
	
	if Input.is_action_pressed("mouse_left"):
		var direction = (get_global_mouse_position() - gnome.global_position).normalized() * 60
		gnome.apply_impulse(Vector2(), direction)
