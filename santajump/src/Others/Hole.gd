extends Area2D

signal player_in_the_hole

export var x:= 0
export var y:= 0



func _on_Hole_body_entered(body: Node) -> void:
	emit_signal("player_in_the_hole")

