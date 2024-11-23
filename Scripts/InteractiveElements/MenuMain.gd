extends Node

func _ready():
	Global.FADE_IN = true
	await get_tree().create_timer(1).timeout

func _on_play_button_pressed():
	Global.FADE_OUT = true
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/Main/MainGameScene.tscn")
	pass


func _on_credits_button_pressed():
	Global.FADE_OUT = true
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://Scenes/Main/Credits.tscn")
	pass
