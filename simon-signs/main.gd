extends Node

@onready var question = $Question
@onready var questionlist = $Question/QuestionList
@onready var coincounter = $Coins2
@onready var lives= $Control
@onready var inputfieldbg = $"UI/Input field bg"
@onready var inputfield = $"UI/Input field bg/Input field"
@onready var timer = $"Countdown/Timer"
@onready var right_answer_label = $Control2
#onready var answer

func _ready() -> void:
	pass

func _process(delta):
	pass
	
func _correct():
	inputfieldbg.green()
	coincounter.add_coins(5)  # Add 5 coins when the answer is correct
	lives.right_ans()
	await get_tree().create_timer(0.5).timeout  # Wait for 0.5 second
	question._get_new_question()
	inputfield.text = ""
	inputfieldbg.pink()  # Change input field color to pink
	timer.start()
	

func _incorrect():
	lives.life_lost()
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
		hearts_number()

func show_answer():
	right_answer_label.show() #makes the label visible
	
func _on_timer_timeout():
	_incorrect()
	show_answer() #shows the correct answer
	await get_tree().create_timer(0.75).timeout
	right_answer_label.hide() 
	await get_tree().create_timer(0.25).timeout
	inputfieldbg.pink()
	question._get_new_question()
	
