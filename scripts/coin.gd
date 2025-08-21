extends Area2D

@onready var gui: CanvasLayer = $"../../Player/Camera2D/GUI"
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(body: Node2D) -> void:
	gui.add_point()
	animation_player.play("pickup")
