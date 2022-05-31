extends KinematicBody2D

export var speed:= 400

func _ready():
	pass # Replace with function body.

func _process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("moveup"):
		velocity.y -= 1
		
	if Input.is_action_pressed("moveright"):
		velocity.x += 1
		
	if Input.is_action_pressed("moveleft"):
		velocity.x -= 1
	if Input.is_action_pressed("movedown"):
		velocity.y += 1
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
		
	position += velocity * delta
