extends Node

var hint_dict = {
	"A": "The leader of the alphabet",
	"B": "Bzzz! Bzzz! I'm spelled how I sound",
	"C": "Santa's favorite festival begins with this letter",
	"D": "Do, does, did: all have this letter in common",
	"E": "The beginning of the word that describes the quaking of the ground",
	"F": "America's version of Celsius",
	"G": "The useless letter in lasagna",
	"H": "The sound you make when you're laughing",
	"I": "Sounds like eye",
	"J": "The first month of the year starts with this letter",
	"K": "Text version of saying you're alright or agreeing to something",
	"L": "What do you take when you lose",
	"M": "McDonald's golden symbol",
	"N": "The first letter in the opposite of 'yes'",
	"O": "Oranges. Onions. Oatmeal",
	"P": "Letter for a talkative bird that rhymes with carrot", 
	"Q": "The _ _ _ _ _ of England",
	"R": "A lion's favorite sound starts with this letter",
	"S": "It's Superman's favorite letter",
	"T": "Drama, thrown in the harbor",
	"U": "Your best friend when it's raining",
	"V": "Veni. Vidi. Vici",
	"W": "The only letter with two syllables",
	"X": "DON'T CALL THEM",
	"Y": "I ask myself this all the time",
	"Z": "The animal with black and white stripes"
}

func get_hint(question: String) -> String:
	var hint = hint_dict.get(question)
	return hint
	
