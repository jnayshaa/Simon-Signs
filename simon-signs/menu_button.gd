extends MenuButton
@onready var PauseMenu = $"../PauseMenu"
func _on_menu_button_pressed():
	PauseMenu.visible = true
	get_tree().paused=true
	#get_tree().change_scene_to_file("res://pause_menu.tscn")
	#PauseMenu.pause()
