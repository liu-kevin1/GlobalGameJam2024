class_name ChoiceManager
extends Node


static var instance : ChoiceManager = null

func _ready():
	instance = self
	
	ChoiceManager.instance.display_choice(["what du hell is going on", "Im loosing it", "auuuuugh","ima die soon"])

func display_choice(choices: Array):
	#get window size
	var window_size = get_viewport().size
	
	var y_offset = 100
	var x_offset = 400
	print(get_parent())
	var button = get_tree().get_root().get_node("MainGameScene/TemplateButton")
	
	#create duplicates of a button
	for i in range(choices.size()):
		var new_button = button.duplicate()
		new_button.text = choices[i]
		new_button.name = str(i)
		new_button.size = Vector2(window_size[0]/3, window_size[1]/10)
		new_button.position = Vector2(window_size[0]-x_offset, 100+y_offset*i)
		add_child(new_button)
		
		
