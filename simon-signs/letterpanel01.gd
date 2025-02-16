extends Node

@onready var box = $Box
@onready var text = $Box/Letter
@onready var hand = $Box/Hand

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_box_mouse_entered():
	box._active()
	hand._active()
	text._inactive()

func _on_box_mouse_exited():
	box._inactive()
	hand._inactive()
	text._active()
