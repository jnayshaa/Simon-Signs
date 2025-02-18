extends Node
 
@onready var gainedcoins = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func add_coins(amount: int):
	gainedcoins += amount  # Increment coins
	print("Coin count updated:", gainedcoins)  # Debugging output

func get_amount() -> String:
	return str(gainedcoins)
