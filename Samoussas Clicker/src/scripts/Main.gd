extends Node2D



func _ready() -> void:
	pass # Replace with function body.



func _on_Farmer_autoclick() -> void:
	$Unlock.up_autoclick()


func _on_Unlock_new_level(item, level, increase_prod) -> void:
	$Samoussa.updateProduction(item, level, increase_prod)


func _on_Samoussa_updateItem(item, level) -> void:
	pass # Replace with function body.
