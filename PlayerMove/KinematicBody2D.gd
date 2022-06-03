extends KinematicBody2D

export var speed := 4

func _process(delta):
	
	var velocity: = Vector2.ZERO
	
	if Input.is_action_pressed("moveup"):
		velocity = Vector2.UP * speed
		
	if Input.is_action_pressed("moveright"):
		velocity = Vector2.RIGHT * speed
		
	if Input.is_action_pressed("moveleft"):
		velocity = Vector2.LEFT * speed
		
	if Input.is_action_pressed("movedown"):
		velocity = Vector2.DOWN * speed
		
	$Sprite.flip_v = velocity.y < 0 
	$Sprite.flip_h = velocity.x < 0
	
	move_and_collide(velocity)
