extends Node

@onready var tracker = $CoinCounter
@onready var display = $CoinCount
@onready var display_text = display.text
@onready var label=$"../UI/HintButtonPanel"
@onready var label_text = $"../UI/HintButtonPanel/HintDisplayText"
@onready var hint = $"../Hint"
@onready var question = $"../Question"
# Called when the node enters the scene tree for the first time.
func _ready():
	display_text = tracker.get_amount()
	display.parse_bbcode(display_text)

func add_coins(amount: int):
	tracker.add_coins(amount)
	_get_coin_amount()
	
func _get_coin_amount():
	display_text = tracker.get_amount()
	display.parse_bbcode(display_text)
	
func get_display() -> String:
	return display_text
	
func set_center_tags(string_to_center: String):
	return "[center]" + string_to_center + "[/center]"

func _decrease_coin_amount():
	if tracker.gainedcoins >= 10:
		tracker.add_coins(-10)
		label.visible=true
		hint._get_hint(question.get_prompt())
		label_text.set_text(hint.get_hint_text())
		
		_get_coin_amount()
		print("Label is visible")  
	else:
		print("Not enough coins!")

func _update_display():
	display.text = str(tracker.gainedcoins)  # Make sure this updates the label correctly
