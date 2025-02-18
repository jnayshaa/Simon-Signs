extends Node

@onready var question = $Question
@onready var questionlist = $Question/QuestionList
@onready var coincounter = $Coins2
@onready var lives= $Control
@onready var inputfieldbg = $"UI/Input field bg"
@onready var inputfield = $"UI/Input field bg/Input field"

func _ready() -> void:
	pass

func _process(delta):
	pass
	
func _correct():
	inputfieldbg.green()
	coincounter.add_coins(5)  # Add 5 coins when the answer is correct
	lives.right_ans()
	await get_tree().create_timer(0.5).timeout  # Wait for 1 second
	question._get_new_question()
	inputfield.text = ""
	inputfieldbg.pink()  # Change input field color to pink

func _incorrect():
	lives.lose_life()
	inputfieldbg.red()
	inputfield.text = ""

func hearts_number():
	if lives.remaining_hearts() == 0:
		lives.restart()

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
		#if event.key_label == KEY_BACKSPACE:  # Correct way to check for Backspace
				#inputfieldbg.pink()
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
