extends Node

@onready var question = $Question
@onready var questionlist = $Question/QuestionList
@onready var coincounter = $Coins2

func _ready() -> void:
	pass

func _process(delta):
	pass
	
func _correct():
	question._get_new_question()
	coincounter.add_coins(5)  # Add 5 coins when the answer is correct
	
func _incorrect():
	coincounter.add_coins(1) #debugging

#Code adapted from Joe Bustamante: "Godot Typing Game Tutorial"
func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		var typed_event = event as InputEventKey
		var key_typed = OS.get_keycode_string(event.key_label)
		var prompt = question.get_prompt()
		print(prompt)
		if key_typed == prompt:
				_correct()
		if key_typed != prompt:
				_incorrect()
			
		#if current_sign == key_typed (look up string comparsion in GDScript)
			#correct answer function
		#if timeer event zero
			#time up
			#incorrect answer function
		# current_sign != key_typed
			#incorrect answer function
func _on_timer_timeout():
	_incorrect()
	question._get_new_question()
