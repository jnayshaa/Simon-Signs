extends Node

@onready var QuestionList = $QuestionList
@onready var prompt = $QDisplay
@onready var prompt_text = prompt.text
@onready var right_answer_label = $"../Control2/Label"


# Called when the node enters the scene tree for the first time.
func _ready():
	prompt_text = QuestionList.get_prompt()
	right_answer_label.text = prompt_text
	prompt.parse_bbcode(set_center_tags(prompt_text))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _get_new_question():
	prompt_text = QuestionList.get_prompt()
	#answer.text = prompt_text
	right_answer_label.text = prompt_text
	prompt.parse_bbcode(set_center_tags(prompt_text))
	
func get_prompt() -> String:
	return prompt_text
	
func set_center_tags(string_to_center: String):
	return "[center]" + string_to_center + "[/center]"
