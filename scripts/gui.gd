extends CanvasLayer

@onready var label: Label = $Label

var score = 0

func add_point():
	score += 1
	label.text = "score: " + str(score)
