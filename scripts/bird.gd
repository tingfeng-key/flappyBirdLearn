extends RigidBody2D

func _ready():
	connect("body_entered", self, "on_body_entered")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	if Input.is_mouse_button_pressed(1):
		AudioManager.play("sfx_swooshing")
		
		linear_velocity = Vector2.UP * 500
		angular_velocity = -3.0
	
	if rotation_degrees < -30:
		rotation_degrees = -30
		angular_velocity = 0
		
	if linear_velocity.y > 0.0:
		angular_velocity = 1.5

func on_body_entered(body):
	if body is StaticBody2D:
		call_deferred("set_physics_process", false)
		call_deferred("set_contact_monitor", false)
		AudioManager.play("sfx_hit")
		$AnimationPlayer.play("die")
		GameData.update_record()
		get_tree().call_group("GAME_STATE", "on_game_over")
		
