extends Node2D



func _on_Hole_player_in_the_hole() -> void:
	$Player.gameOver()
	$HUD_Gameover/Label.show()
	$HUD_Gameover/Button.show()

func _on_Level_Two_ready() -> void:
	$HUD_Gameover/Label.hide()
	$HUD_Gameover/Button.hide()
