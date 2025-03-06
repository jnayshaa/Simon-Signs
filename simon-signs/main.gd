extends Node

@onready var question = $Question
@onready var questionlist = $Question/QuestionList
@onready var coincounter = $Coins2
@onready var lives= $Control
@onready var inputfieldbg = $"UI/Input field bg"
@onready var inputfield = $"UI/Input field bg/Input field"
@onready var timer = $"Countdown/Timer"
#onready var answer
@onready var hintlable = $"UI/HintButtonPanel"

func _ready() -> void:
	pass

func _process(delta):
	pass
	
func _correct():
	inputfieldbg.green()
	coincounter.add_coins(5)  # Add 5 coins when the answer is correct
	lives.right_ans()
	hintlable.set_visible(false)
	await get_tree().create_timer(0.5).timeout  # Wait for 1 second
	question._get_new_question()
	inputfield.text = ""
	inputfieldbg.pink()  # Change input field color to pink
	timer.start() 
	
func hearts_number():
	if lives.remaining_hearts() ==0:
		lives.restart()

func _incorrect():
	lives.life_lost()
	inputfieldbg.red()
	inputfield.text = ""
	#answer.visible = true

#Code adapted from Joe Bustamante: "Godot Typing Game Tutorial"
func _unhandled_input(event : InputEvent) -> void:
	if event is InputEventKey and not event.is_pressed():
		var typed_event = event as InputEventKey
		var key_typed = OS.get_keycode_string(event.key_label)
		
		# Allow only single-letter alphabetic inputs (A-Z)
		if key_typed.length() == 1 and key_typed.is_valid_identifier():
			var prompt = question.get_prompt()
			print(prompt)
			if key_typed.to_upper() == prompt.to_upper():  # Case-insensitive comparison
				_correct()
			else:
				_incorrect()
			hearts_number()
		
		
func _on_timer_timeout():
	_incorrect()
	hintlable.set_visible(false)
	question._get_new_question()
