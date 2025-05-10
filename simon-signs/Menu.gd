extends Control
@onready var ButtonSounds=$ButtonSounds

func _ready():
	pass # Replace with function body.

func _process(delta):
	pass

func _on_learn_pressed():
	ButtonSounds.play() 
	get_tree().change_scene_to_file("res://flip_book.tscn")
	
func _on_credits_pressed():
	ButtonSounds.play()
	get_tree().change_scene_to_file("res://credits.tscn") 

func _on_start_pressed():
	ButtonSounds.play()
	get_tree().change_scene_to_file("res://ui.tscn") 
