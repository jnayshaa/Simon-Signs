extends CanvasLayer

var gainedcoins=0
# Called when the node enters the scene tree for the first time.
func _ready():
	$CoinCount.text= str(gainedcoins)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _correct_answer(body):
	gainedcoins=gainedcoins+1
	$CoinCount.text=str(gainedcoins)
	
	
