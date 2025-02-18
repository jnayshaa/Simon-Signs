extends Node

@export
var lives = 4 # Start with 4 lives
@onready var HeartContainer = $HBoxContainer
@onready var hearts = HeartContainer.get_children()  # Get reference to heart UI
@onready var heart1 = $HBoxContainer/Control/heart1
@onready var heart2= $HBoxContainer/Control2/heart2
@onready var heart3= $HBoxContainer/Control3/heart3
@onready var heart4= $HBoxContainer/Control4/heart4
@onready var CoinCounter= $"../Coins2/CoinCount"
@onready var GameOverText= $"../GameOverText"

#sound effects
@onready var wrong = $Wrong_ans
@onready var right= $Right_ans
#$HBoxContainer/Control2/heart2
func _ready():
	remaining_hearts()  # Update hearts when game starts
	
func right_ans():
	right.play() # produces the sound effect for a right answer	

func life_lost():
	if lives > 0:
		lives -= 1
		remaining_hearts()
		wrong.play() #produces the sound effect for a wrong answer
		#heart4.visible= not heart4.visible
	
	if lives == 0:
		game_over()
		
func remaining_hearts():
	# Show only the number of hearts equal to lives
	for i in range(len(hearts)):
		hearts[i].visible = i < lives 

func game_over():
	GameOverText.visible = true
	await get_tree().create_timer(3.0).timeout #create a 3 secs pause after game over appears
	GameOverText.visible = false 
	restart() #then it restarts
	
func restart():
	lives = 4 #the lives bar is full again
	remaining_hearts() #Shows all hearts again
	CoinCounter.parse_bbcode("0") # coins are back to zero
	
func sound_effects():
	#adds the sound effects for the s 

#func _input(event):
	# Simulating a wrong answer with SPACE key
	#if event.is_action_pressed("ui_accept"):  # Default is SPACE key
		#life_lost()
	#elif event.is_action_pressed("ui_right"):  #if correct answer is entered
		#right_ans()
	#if event.is_action_pressed("restart"):  
		#restart()


 #Called when the node enters the scene tree for the first time.
#	pass # Replace with function body.


 #Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass



# Called when the node enters the scene tree for the first time.
#func _ready() -> void:
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	pass
