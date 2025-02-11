extends Node

@onready var display = $CoDisplay
@onready var display_text = display.text
@onready var timer = $Timer
# Called when the node enters the scene tree for the first time.
func _ready():
	display_text = str(timer.get_time_left())
	display.parse_bbcode(display_text)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	display_text = str(timer.get_time_left())
	display.parse_bbcode(display_text)
