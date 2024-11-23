extends Node

func _on_play_button_pressed():
	Global.FADE_OUT = true
	await get_tree().create_timer(1).timeout
	get_tree().root.add_child(preload("res://Scenes/Main/MainGameScene.tscn").instantiate())
	pass


func _on_credits_button_pressed():
	Global.FADE_OUT = true
	await get_tree().create_timer(1).timeout
	get_tree().root.add_child(preload("res://Scenes/Main/Credits.tscn").instantiate())
	pass
