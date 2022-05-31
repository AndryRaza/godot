extends Actor

func _physics_process(delta: float) -> void:

	 var direction: = get_direction()
	 var is_jumped_interrupted: = Input.is_action_just_released("move_up") and velocity.y < 0.0 
	 velocity = calculate_move_velocity(velocity,speed,direction,is_jumped_interrupted)
	 velocity = move_and_slide(velocity, FLOOR_NORMAL)
	
#Func to move player
func get_direction() -> Vector2 : 
	
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("move_up") and is_on_floor() else 0.0
	)

#Func calculate the velocity
func calculate_move_velocity(linear_velocity:Vector2, speed : Vector2, direction : Vector2, is_jumped_interrupted : bool) -> Vector2 : 
	var new_velocity = linear_velocity
	new_velocity.x = speed.x * direction.x 
	
	if new_velocity.length() > 0 :
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	
	if new_velocity.x != 0 :
		$AnimatedSprite.flip_h = new_velocity.x < 0
		
	#Appliquer la gravité 
	new_velocity.y += gravity * get_physics_process_delta_time()
	
	#Pour sauter 
	if direction.y == -1.0:
		new_velocity.y = speed.y * direction.y 
	
	#Pour faire des petits sauts	
	if is_jumped_interrupted:
		new_velocity.y = 0.0
	return new_velocity
