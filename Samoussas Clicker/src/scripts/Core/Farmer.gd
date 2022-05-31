extends Node2D

signal autoclick
signal manuel
signal snack

func _ready() -> void:
	pass # Replace with function body.


func updatelabelautoclick(msg:String)->void:
	$Label_Autoclick.text = msg


func _on_Button_Autoclick_pressed() -> void:
	emit_signal("autoclick")

func _on_Button_Manuel_pressed() -> void:
	emit_signal("manuel")

func _on_Button_Snack_pressed() -> void:
	emit_signal("snack")

func updateLabelAutoclick(msg: String) ->void:
	$Button_Autoclick/Label_Autoclick.text = "Autoclick : "+ msg
	
func updateLabelManuel(msg: String) ->void:
	$Button_Autoclick/Label_Autoclick.text = "Manuel: "+ msg
	
func updateLabelSnack(msg: String) ->void:
	$Button_Autoclick/Label_Autoclick.text = "Snack : "+ msg
	
