extends TextureRect

func _ready():
	add_to_group("GAME_STATE")
	set_process(false)


func on_game_over():
	$Label.text = str(GameData.score)
	$Label2.text = str(GameData.load_record())
	$AnimationPlayer.play("show")
	
func _process(delta):
	if Input.is_mouse_button_pressed(1):
		get_tree().call_group("GAME_STATE", "on_game_start")
		
func on_board_shown():
	set_process(true)
