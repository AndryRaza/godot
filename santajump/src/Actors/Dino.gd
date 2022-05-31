extends "res://src/Actors/Actor.gd"

export var velocityDino: = Vector2(100.0,0.0)

func _physics_process(delta: float) -> void:
	 move_and_slide(velocityDino)

func _on_AreaHead_body_entered(body: Node) -> void:
	die()

#Detect when  it hit the invisible wall
func _on_Area2D_area_entered(area: Area2D) -> void:
	 if area.get_collision_layer() == 128:
			$AnimatedSprite.flip_h = velocityDino.x > 0
			velocityDino *= -1


func die() ->void:
	$AnimatedSprite.hide()
	queue_free()
