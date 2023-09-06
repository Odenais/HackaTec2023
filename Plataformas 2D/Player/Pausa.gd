extends Node

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_cancel"):		
		get_tree().paused = not get_tree().paused
		$Popup.visible = not $Popup.visible 
