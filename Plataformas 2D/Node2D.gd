extends Node2D

func _on_body_entered(body):
	if body.name == "Player":
		get_tree().paused = not get_tree().paused
		$Popup.visible = not $Popup.visible 
