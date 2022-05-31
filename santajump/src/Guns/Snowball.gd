extends KinematicBody2D

export var velocity: = Vector2(1000.0,0.0)

func _physics_process(delta: float) -> void:
	move_and_slide(velocity)


func _on_Area2D_body_entered(body: Node) -> void:
	$Sprite.hide()
	queue_free()


func _on_VisibilityNotifier2D_screen_exited() -> void:
	queue_free()
