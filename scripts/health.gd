extends Area2D

func _on_body_entered(body: Node2D) -> void:
	take_damage(1)
	
var max_health: int = 3
var current_health: int = max_health
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

	
func take_damage(amount: int) -> void:
	print("hit this")
	current_health -= amount
	if current_health < 0:
		current_health = 0
	check_health_status()

func check_health_status() -> void:
	if current_health == 3:
		$Player/Camera2D/Hearts.frame = 0
	elif current_health == 2:
		$Player/Camera2D/Hearts.frame = 1
		print("heart lost")
	elif current_health == 1:
		$Player/Camera2D/Hearts.frame = 2
	elif current_health == 0:
		print("die")


func _on_enemy_body_entered(body: Node2D) -> void:
	take_damage(1)
