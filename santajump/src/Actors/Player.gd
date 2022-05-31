extends Actor


var Snowball = preload("res://src/Guns/Snowball.tscn")
export var munitions = 10

signal shoot(munitions)

func _physics_process(delta: float) -> void:

	 var direction: = get_direction()
	 var is_jumped_interrupted: = Input.is_action_just_released("moveup") and velocity.y < 0.0 
	 velocity = calculate_move_velocity(velocity,speed,direction,is_jumped_interrupted)
	 velocity = move_and_slide(velocity, FLOOR_NORMAL)

#Func to move player
func get_direction() -> Vector2 : 
	
	return Vector2(
		Input.get_action_strength("moveright") - Input.get_action_strength("moveleft"),
		-1.0 if Input.is_action_just_pressed("moveup") and is_on_floor() else 0.0
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


func _on_BoxCollision_body_entered(body: Node) -> void:
	hide()
	queue_free()
	get_tree().change_scene("res://src/Main.tscn")

#Pour le tir, on regarde de quel côté est le sprite pour tirer
func shoot()->void:
	munitions -= 1
	emit_signal("shoot",munitions)
	var s = Snowball.instance()
	owner.add_child(s)
	if $AnimatedSprite.flip_h :
		s.velocity = Vector2(-1000.0,0.0)
	s.transform = $Position2D.global_transform

	
	
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("fire") and munitions > 0:
		shoot()
		
func gameOver() ->void:
	$AnimatedSprite.hide()
	queue_free()
