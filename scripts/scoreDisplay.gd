extends Label


func _ready():
	add_to_group("SCORE")


func on_score_updated(score):
	text = str(score)
