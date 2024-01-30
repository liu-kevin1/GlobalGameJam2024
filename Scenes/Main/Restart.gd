extends Button

var button: Button
var tween: Tween

func _ready():
	# When we enter the scene, play the fade in animation
	appear()
	var playButton = self

	# Send the player back to the main menu
	playButton.connect("pressed", _restart)

func _restart():
	var gameScene = Global.MAIN_MENU
	get_tree().change_scene_to_packed(gameScene)
	
func appear():
	$AnimationPlayer.play("Fade")
