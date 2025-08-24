extends CanvasLayer

@onready var label: Label = $Puntaje
@onready var final_score_label: Control = $FinalScoreLabel
@onready var gui: CanvasLayer = $"."
@onready var player: CharacterBody2D = $"../.."
@onready var final_score_shadow: Label = $FinalScoreLabel/FinalScoreShadow
@onready var final_score: Label = $FinalScoreLabel/FinalScore

var score = 0

func add_point():
	score += 1
	label.text = str(score)

func show_finished_game():
	final_score.text = str(score)
	final_score_shadow.text = str(score)
	final_score_label.visible = true
	pause_player_moves()

func pause_player_moves():
	player.set_process(false)
	player.set_physics_process(false)
