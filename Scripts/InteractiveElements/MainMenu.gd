extends Control

func _ready():
	var playButton = self
	playButton.connect("pressed", _on_PlayButton_pressed)

	print("loading the stuff")

func _on_PlayButton_pressed():
	print("PLAY BUTTON PRESSED")
	# Load the game scene
	var gameScene = Global.MAIN_SCENE
	Global.CREDIT_TEXT = ""
	Global.FADE = true
	await get_tree().create_timer(2.0).timeout
	# Transition to the game scene
	get_tree().change_scene_to_packed(gameScene)

	var characters = CharacterManager.new()
	print(characters)
