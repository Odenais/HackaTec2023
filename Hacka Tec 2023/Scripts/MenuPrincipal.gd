extends Node
class_name Menu

func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://Escenas/world.tscn")

func _on_button_pressed():
	get_tree().quit()
