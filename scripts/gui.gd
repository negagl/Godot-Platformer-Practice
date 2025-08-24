extends CanvasLayer

@onready var label: Label = $Puntaje
@onready var final_score_label: Control = $"Final Score Label"

var score = 0

func add_point():
	score += 1
	label.text = str(score)

func show_finished_game():
	final_score_label.visible = true
