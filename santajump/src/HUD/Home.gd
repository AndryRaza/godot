extends CanvasLayer

func _on_Button_pressed() -> void:
	get_tree().change_scene("res://src/Levels/Level_One.tscn")


func _on_Button2_pressed() -> void:
	get_tree().change_scene("res://src/HUD/Choose Level.tscn")
