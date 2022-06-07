extends Path2D


var timer = 0
var spawnTime = 5

var follower = preload("res://CharacterFollowing.tscn")

func _process(delta: float) -> void:
	timer = timer + delta
	
	
	if (timer > spawnTime):
		var newFollower = follower.instance()
		add_child(newFollower)
		timer = 0