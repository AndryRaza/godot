extends PathFollow2D

export var runspeed = 200 

func _process(delta: float) -> void:
	
	set_offset(get_offset() + runspeed * delta)
