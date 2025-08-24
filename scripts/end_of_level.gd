extends Area2D

@onready var gui: CanvasLayer = $"../../Player/Camera2D/GUI"

func _on_body_entered(body: Node2D) -> void:
	gui.show_finished_game()
	
