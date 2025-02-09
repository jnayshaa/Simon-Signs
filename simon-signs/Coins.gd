extends Node

@onready var tracker = $CoinCounter
@onready var display = $CoinCount
@onready var display_text = display.text


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
