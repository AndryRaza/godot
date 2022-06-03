extends KinematicBody2D

var Shoot = preload("res://Shoot.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func shoot()->void:
	var s = Shoot.instance()
	owner.add_child(s)
#	if $AnimatedSprite.flip_h :
#		s.velocity = Vector2(-1000.0,0.0)
	s.transform = $Position2D.global_transform
 
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("fire") :
		shoot()
		
