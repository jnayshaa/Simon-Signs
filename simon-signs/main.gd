extends Node

func _ready() -> void:
	pass
	

#Code adapted from Joe Bustamante: "Godot Typing Game Tutorial"
func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		var typed_event = event as InputEventKey
		var key_typed = PackedByteArray([typed_event.unicode]).get_string_from_utf8()
		
		#if current_sign == key_typed (look up string comparsion in GDScript)
			#correct answer function
		#if timeer event zero
			#time up
			#incorrect answer function
		# current_sign != key_typed
			#incorrect answer function
		
