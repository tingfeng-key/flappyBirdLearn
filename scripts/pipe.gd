extends Node2D

func _ready():
	add_to_group("GAME_STATE")
	position.y += randf() * 300 - 150


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2.LEFT * 200.0 * delta
	
	if position.x < 0:
		queue_free()
		
func on_game_over():
	set_process(false)
