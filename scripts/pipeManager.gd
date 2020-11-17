extends Timer

var pipeScn = preload("res://objects/pipe.tscn")

func _ready():
	add_to_group("GAME_STATE")
	connect("timeout", self, "on_timeout")

func on_timeout():
	var pipe = pipeScn.instance()
	add_child(pipe)
	
func on_game_over():
	paused = true

