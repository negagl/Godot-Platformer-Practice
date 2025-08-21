extends Area2D

@onready var timer: Timer = $Timer
@onready var player: CharacterBody2D = $"../../Player"

func _on_body_entered(body: Node2D) -> void:
	print("You died.")
	Engine.time_scale = 0.6
	#body.die()
	timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1
	get_tree().reload_current_scene()
