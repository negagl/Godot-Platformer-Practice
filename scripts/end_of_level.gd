extends Area2D

@onready var camera_2d: Camera2D = $"../../Player/Camera2D"

func _on_body_entered(body: Node2D) -> void:
	print("You won!")
	
