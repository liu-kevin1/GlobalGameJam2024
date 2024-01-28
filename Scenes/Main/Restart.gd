extends Button

var button: Button
var tween: Tween

func _ready():
	appear()
	var playButton = self
	playButton.connect("pressed", _restart)

func _restart():
	var gameScene = Global.MAIN_MENU
	get_tree().change_scene_to_packed(gameScene)
	
func appear():
	$AnimationPlayer.play("Fade")
