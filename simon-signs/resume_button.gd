extends Button
@onready var PauseMenu = $"../../../../.."
func _on_resume_pressed():
	PauseMenu.visible=false
	get_tree().paused=false
	#get_tree().change_scene_to_file("res://ui.tscn")



func _on_quit_button_pressed():
	get_tree().paused=false
	get_tree().change_scene_to_file("res://startmenu.tscn")
