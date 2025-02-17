extends Node2D


# Called when the node enters the scene tree for the first time.
func _on_learn_pressed():
	print("Button pressed!")
	get_tree().change_scene_to_file("res://startmenu.tscn") 
