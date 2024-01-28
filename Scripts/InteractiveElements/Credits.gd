extends Control

func _ready():
	var playButton = self
	playButton.connect("pressed", _on_CreditsButton_pressed)

func _on_CreditsButton_pressed():
	print("CREDITS BUTTON PRESSED")
	# Load the game scene
	var creditsScene = Global.CREDITS_SCENE
	Global.CREDIT_TEXT = ""
	Global.FADE = true
	await get_tree().create_timer(2.0).timeout
	# Transition to the game scene
	get_tree().change_scene_to_packed(creditsScene)

