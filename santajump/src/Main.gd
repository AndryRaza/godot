extends Node



func _on_Home_choice_levels() -> void:
	$"Home".queue_free()
	$"Choose Level/Label".show()
	$"Choose Level/Button".show()
