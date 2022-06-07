extends Node2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var ennemy = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


func _process(delta: float) -> void:
	if ennemy[0].position :
		$Sprite.look_at(ennemy[0].position)
	pass

func _on_Area2D_body_entered(body: Node) -> void:
	getEnnemiesIn()
	

func getEnnemiesIn():
	ennemy = $Sprite/Area2D.get_overlapping_bodies()

