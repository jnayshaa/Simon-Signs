extends Node

@onready var HintList = $HintList
@onready var hint = $"../UI/HintButtonPanel/HintDisplayText"
@onready var hint_text = hint.text

func _get_hint(question : String):
	hint_text = HintList.get_hint(question)
	
	
func get_hint_text() -> String:
	return hint_text
	
func set_center_tags(string_to_center: String):
	return "[center]" + string_to_center + "[/center]"
