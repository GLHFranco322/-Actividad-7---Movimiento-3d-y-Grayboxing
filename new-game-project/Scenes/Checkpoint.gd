extends Area3D

func _ready() -> void:
	print("Checkpoint listo: ", name)
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node3D) -> void:
	print("Algo entró al checkpoint: ", body.name)
	if body.is_in_group("player"):
		body.set_checkpoint(global_position)
