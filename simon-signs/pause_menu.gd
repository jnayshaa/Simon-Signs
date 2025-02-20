extends ColorRect
#@onready var animator: AnimationPlayer = $AnimationPlayer
#@onready var resume_button: Button = find_child("resume_button")
#@onready var quit_button: Button = find_child("quit_button")
#
#func go_to_startmenu():
	#get_tree().change_scene_to_file("res://startmenu.tscn")
#
#func _ready() -> void:
	#resume_button.pressed.connect(unpause)
	#quit_button.pressed.connect(go_to_startmenu)
#
#func unpause():
	#animator.play("unpause")
	#get_tree().paused=false
	##Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
#
#func pause():
	#animator.play("pause")
	#get_tree().paused=true
	##Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
