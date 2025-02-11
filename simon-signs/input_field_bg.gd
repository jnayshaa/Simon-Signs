extends ColorRect

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func green():
	self.color = Color("00bf63")  # Set background to green (#00bf63)

func red():
	self.color = Color("ff3131")  # Set background to red (#ff3131)

func pink():
	self.color = Color("ef6585")
