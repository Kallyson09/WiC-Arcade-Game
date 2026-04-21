extends Node

var max_health: int = 3
var current_health: int = max_health
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func take_damage(amount: int) -> void:
	current_health -= amount
	if current_health < 0:
		current_health = 0
	check_health_status()

func check_health_status() -> void:
	if current_health == 0:
		#set player to beginning position 
		print("erm die")
