extends Control

@onready var hint_panel=$HintButtonPanel 
@onready var hint_label=$HintButtonPanel/HintDisplayText
@onready var hint_button=$HintButton  

# Called when the node enters the scene tree for the first time.
func _ready():
	hint_panel.hide()
	hint_button.connect("pressed", Callable(self, "_on_hint_button_pressed"))
	print("Show hint box here")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _on_hint_button_pressed():
	hint_panel.visible=!hint_panel.visible
	
