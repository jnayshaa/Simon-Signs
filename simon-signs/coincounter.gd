extends Node
 
@onready var gainedcoins = 0
@onready var coins2=$".."
@onready var label=$"../../UI/HintButtonPanel"
@onready var warning = $"../../UI/CoinWarning"
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
	if label.is_visible() == false:
		coins2._decrease_coin_amount()
	if gainedcoins < 10 && label.is_visible() == false:
			warning.set_visible(true)
			await get_tree().create_timer(1.5).timeout
			warning.set_visible(false)
	#if gainedcoins>=10:
		#label.visible=true
