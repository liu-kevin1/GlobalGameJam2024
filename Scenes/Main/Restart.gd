extends Button

var button: Button
var tween: Tween

func _ready():
	appear()
	var playButton = self
	playButton.connect("pressed", _restart)

func _restart():
	var gameScene = preload("res://Scenes/Main/MainMenu.tscn")
	get_tree().change_scene_to_packed(gameScene)
	
func appear():
	$AnimationPlayer.play("Fade")
