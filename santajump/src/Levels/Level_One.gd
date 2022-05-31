extends Node2D

signal player_fall

func _on_Level_One_ready() -> void:
	$Camera2D/HUD_INGAME.update_lvl_label("Niveau 1")
	$Camera2D/HUD_INGAME.update_munitions_label(str(10))

func _on_Player_shoot(munitions) -> void:
	$Camera2D/HUD_INGAME.update_munitions_label(str(munitions))


func _on_End_body_entered(body: Node) -> void:
	if body.get_collision_layer() == 1:
		get_tree().change_scene("res://src/Levels/Level_Two.tscn")
