extends KinematicBody2D
class_name Actor

export var speed: = Vector2(300.0,1000.0)
export var gravity: = 3000.0

var velocity: = Vector2.ZERO
var FLOOR_NORMAL: = Vector2.UP

var screen_size: = get_viewport_rect().size
