extends KinematicBody2D

export var velocity: = Vector2(1000.0,0.0)

func _physics_process(delta: float) -> void:
	move_and_slide(velocity)
