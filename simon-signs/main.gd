extends Node


var current_sign = null
var current_letter_index: int = -1

func _get_new_question():
	var prompt = $question.get_prompt
	current_sign = prompt
	

#Code adapted from Joe Bustamante: "Godot Typing Game Tutorial"
func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		var typed_event = event as InputEventKey
		var key_typed = PackedByteArray([typed_event.unicode]).get_string_from_utf8()
		
		
		if current_sign == null:
			_get_new_question()
		else:
			var prompt = current_sign.get_prompt()
			if prompt.substr(0, 1) == key_typed:
				print("yahoo")
