extends Area2D

func _ready():
	add_to_group("GAME_STATE")
	connect("body_exited", self, "on_body_exited")

func on_body_exited(_body):
	if _body.name == "bird":
		AudioManager.play("sfx_point")
		
		GameData.score += 1
		
		get_tree().call_group("SCORE", "on_score_updated", GameData.score)

func on_game_over():
	disconnect("body_exited", self, "_on_body_exited")
