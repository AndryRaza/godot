extends CanvasLayer

func update_lvl_label(msg : String) ->void :
	$LevelLabel.text = msg


func update_munitions_label(msg:String) ->void :
	$MunitionsLabel.text = "Boules de neige: " + msg
