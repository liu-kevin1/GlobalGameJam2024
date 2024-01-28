# import Character

extends Control

func _ready():
	var playButton = self
	playButton.connect("pressed", _on_PlayButton_pressed)

func _on_PlayButton_pressed():
	# Load the game scene
	var gameScene = preload("res://Scenes/Main/Credits.tscn")
	Global.CREDIT_TEXT = "REAL"
	
	Global.FADE = true
	await get_tree().create_timer(2.0).timeout
	# Transition to the game scene
	get_tree().change_scene_to_packed(gameScene)

	var characters = CharacterManager.new()
	print(characters)
