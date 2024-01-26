# character.gd

# @icon("res://interface/icons/item.png")
class_name Character
extends Node2D

var characterName;
var characterNickname;

#creates dialogue options
func choice(choices: Array):#please input string vectors
	#screensize 2560x1600, center 1280x800
	var y_offset = 0
	var x_offset = 0
	var button = get_parent().get_node("TemplateButton")
	
	#create duplicates of a button
	for i in range(choices.size()):
		print(get_parent())
		var new_button = button.duplicate()
		new_button.text = choices[i]
		new_button.name = str(i)
		#button.connect("pressed", button_pressed)
		new_button.size = Vector2(300, 100)
		new_button.position = Vector2((1280-300-(150*choices.size()/2)+300*i), 800)
		add_child(new_button)
