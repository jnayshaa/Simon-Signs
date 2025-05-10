extends Node

var sound_enabled = true  # Sound is ON by default

func toggle_sound():
	sound_enabled = !sound_enabled
	print("Sound enabled:", sound_enabled)
