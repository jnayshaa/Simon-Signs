extends Node

var alphabet = [
	"a",
	"b",
	"c",
	"d",
	"e",
	"f",
	"g",
	"h",
	"i",
	"j",
	"k",
	"l",
	"m",
	"n",
	"o",
	"p",
	"q",
	"r",
	"s",
	"t",
	"u",
	"v",
	"w",
	"x",
	"y",
	"z" 
]

#Store letters that were just asked about. Array? Just one at a time?

func get_prompt() -> String:
	var word_index = randi() % alphabet.size()

	var letter = alphabet[word_index].to_upper()

	return letter
