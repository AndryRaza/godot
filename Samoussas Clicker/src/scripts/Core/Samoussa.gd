extends Node2D

export var score: = -1
export var number_production: = 1

var _timer = null

signal updateItem(item,level)

func _ready():
	updateLabelScore()
	updateLabelProduction()
	_timer = Timer.new()
	add_child(_timer)

	_timer.connect("timeout", self, "_on_Timer_timeout")
	_timer.set_wait_time(1.0)
	_timer.set_one_shot(false) # Make sure it loops
	_timer.start()
	
func updateLabelScore()->void:
	score += number_production
	$LabelSamoussas.text= "Samoussas : "+ str(score)

func updateLabelProduction()->void:
	$LabelProduction.text = "Production : " + str(number_production) + " /sec"

func _on_Timer_timeout():
	updateLabelScore()

func _on_Area2D_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			updateLabelScore()

func updateProduction(item, level, increase_prod)->void:
	emit_signal("updateItem",item,level)
	number_production += increase_prod
	updateLabelProduction()
