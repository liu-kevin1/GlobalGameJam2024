extends Button

func appear():
	$AnimationPlayer.play("Fade")
	
func _ready():
	# When we enter the scene, play the fade in animation
	Global.FADE_IN = true
	await get_tree().create_timer(1).timeout
	appear()
	
func _pressed():
	Global.FADE_OUT = true
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/Main/MainMenu.tscn")
	pass
