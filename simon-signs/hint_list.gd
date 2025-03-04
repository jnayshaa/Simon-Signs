extends Node

var hint_dict = {
	"a": "The leader of the alphabet",
	"b": "Bzzz! Bzzz! I'm spelled how I sound",
	"c": "Santa's favorite festival begins with this letter",
	"d": "Do, does, did: all have this letter in common",
	"e": "The beginning of the word that describes the quaking of the ground",
	"f": "America's version of Celsius",
	"g": "The useless letter in lasagna",
	"h": "The sound you make when you're laughing",
	"i": "Sounds like eye",
	"j": "The first month of the year starts with this letter",
	"k": "Text version of saying you're alright or agreeing to something",
	"l": "What do you take when you lose",
	"m": "McDonald's golden symbol",
	"n": "The first letter in the opposite of 'yes'",
	"o": "Oranges. Onions. Oatmeal",
	"p": "Letter for a talkative bird that rhymes with carrot", 
	"q": "The _ _ _ _ _ of England",
	"r": "A lion's favorite sound starts with this letter",
	"s": "It's Superman's favorite letter",
	"t": "Drama, thrown in the harbor",
	"u": "Your best friend when it's raining",
	"v": "Veni. Vidi. Vici",
	"w": "The only letter with two syllables",
	"x": "DON'T CALL THEM",
	"y": "I ask myself this all the time",
	"z": "The animal with black and white stripes"
}

func get_hint(question: String) -> String:
	var hint = hint_dict.get(question)
	return hint
	
