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
@onready var right_answer_label = $"../Control2"
#sound effects
@onready var wrong = $Wrong_ans
@onready var right= $Right_ans
#$HBoxContainer/Control2/heart2
func _ready():
	remaining_hearts()  # Update hearts when game starts
	
func right_ans():
	if Global.sound_enabled:
		right.play() # produces the sound effect for a right answer	

func life_lost():
	if lives > 0:
		lives -= 1
		remaining_hearts()
		if Global.sound_enabled:
			wrong.play() #produces the sound effect for a wrong answer
		#heart4.visible= not heart4.visible
	
	if lives == 0:
		show_answer() #shows the correct answer
		await get_tree().create_timer(0.75).timeout
		right_answer_label.hide()
		game_over() 
		await get_tree().create_timer(0.75).timeout  # Wait for 0.75 second
		get_tree().change_scene_to_file("res://startmenu.tscn")
		
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
	
func sound_off():
	pass
	
func show_answer():
	right_answer_label.show() #makes the label visible
	
