extends Node

@export
var lives = 4 # Start with 6 lives
@onready var heartBox = $HBoxContainer
@onready var hearts = heartBox.get_children()  # Get reference to heart UI
@onready var heart1 = $HBoxContainer/Control/heart1
@onready var heart2= $HBoxContainer/Control/heart2
@onready var heart3= $HBoxContainer/Control/heart3
@onready var heart4= $HBoxContainer/Control/heart4

#$HBoxContainer/Control2/heart2
#func _ready():
	#update_hearts()  # Update UI when game starts

func lose_life():
	if lives > 0:
		lives -= 1
		update_hearts()
		#heart4.visible= not heart4.visible
	
	if lives == 0:
		game_over()

func update_hearts():
	# Show only the number of hearts equal to lives
	for i in range(len(hearts)):
		hearts[i].visible = i < lives 

func game_over():
	print("Game Over")

#func end_game():
	#print("Game Over")  # Replace with your game over logic

func _input(event):
	# Simulating a wrong answer with SPACE key
	if event.is_action_pressed("ui_accept"):  # Default is SPACE key
		lose_life() 	

 #Called when the node enters the scene tree for the first time.
#	pass # Replace with function body.


 #Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass



# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
