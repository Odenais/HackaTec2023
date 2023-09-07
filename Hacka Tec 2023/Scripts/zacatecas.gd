extends Node2D

@onready var transition = $Transicion
func _ready():
	transition.play("fade_in")

func _on_button_fresnillo_pressed():
	pass


func _on_button_jerez_pressed():
	pass # Replace with function body.


func _on_button_plateros_pressed():
	pass # Replace with function body.
