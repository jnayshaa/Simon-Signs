extends CanvasLayer

var gainedcoins = 0  # Track the coin count
# Called when the node enters the scene tree for the first time.
	
func _ready():
	if has_node("CoinCount"):  # Check if the UI Label exists
		$CoinCount.text = str(gainedcoins)
		pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

#func add_coins(body):
	#gainedcoins=gainedcoins+1
	#$CoinCount.text=str(gainedcoins)

func add_coins(amount: int):
	gainedcoins += amount  # Increment coins
	if has_node("CoinCount"):
		var coin_label = find_child("CoinCount")  # Find the label dynamically
		$CoinCount.text = str(gainedcoins)
		print("Coin count updated:", gainedcoins)  # Debugging output
	else:
		print("Error: CoinCount label not found in CoinCounter!")

	
