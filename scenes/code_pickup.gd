extends Area2D


# Pickup item when player enters area
func _on_body_entered(body: Node2D) -> void:
	print("test interactable")
	queue_free() # remove this item
