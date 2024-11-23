extends Button

func appear():
	$AnimationPlayer.play("Fade")
	
func _ready():
	# When we enter the scene, play the fade in animation
	appear()
	
func _pressed():
	Global.FADE_OUT = true
	pass
