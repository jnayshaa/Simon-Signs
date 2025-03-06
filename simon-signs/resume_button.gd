extends Button
@onready var PauseMenu = $"../../../../.."
@onready var lives= $Control

#func _ready():
	#print("Global is accessible:", Global)

func _on_resume_pressed():
	PauseMenu.visible=false
	get_tree().paused=false

func _on_quit_button_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file("res://startmenu.tscn")

func _on_sound_toggle_pressed():
	PauseMenu.visible=false
	get_tree().paused=false
	Global.toggle_sound()
