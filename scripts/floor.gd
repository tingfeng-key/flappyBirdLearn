extends Sprite


func _ready():
	add_to_group("GAME_STATE")
	material.set_shader_param("speed", 0.2)


func on_game_over():
	material.set_shader_param("speed", 0)
