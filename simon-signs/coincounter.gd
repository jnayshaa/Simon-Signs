extends Node
 
@onready var gainedcoins = 0
@onready var coins2=$".."
@onready var label=$"../../UI/HintButtonPanel"
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_coins(amount: int):
	gainedcoins += amount  # Increment coins
	print("Coin count updated:", gainedcoins)  # Debugging output

func get_amount() -> String:
	return str(gainedcoins)


func _on_hint_button_pressed():
	print ("Hint button pressed")
	coins2._decrease_coin_amount()
	if gainedcoins>=10:
		label.visible=true
