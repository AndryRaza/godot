extends CanvasLayer

func _on_Button_level_one_pressed() -> void:
	get_tree().change_scene("res://src/Levels/Level_One.tscn")


func _on_BtnToTwo_pressed() -> void:
	get_tree().change_scene("res://src/Levels/Level_Two.tscn")
