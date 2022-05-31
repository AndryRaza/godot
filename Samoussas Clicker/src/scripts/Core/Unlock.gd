extends Node

signal new_level(item,level,increase_prod)
var autoclick_level: = 1


func _ready() -> void:
	pass # Replace with function body.

func up_autoclick()->void:
	autoclick_level += 1
	emit_signal("new_level","autoclick",autoclick_level,1)
