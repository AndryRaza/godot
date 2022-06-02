extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_DoorClosed_body_entered(body):
	$BlablaHome/DoorClosed.show()
	$BlablaHome/Button.show()
	get_tree().paused = true
	


func _on_BlablaHome_depause():
	$BlablaHome/DoorClosed.hide()
	$BlablaHome/Button.hide()
	get_tree().paused = false
