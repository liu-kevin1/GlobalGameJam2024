# character.gd

# @icon("res://interface/icons/item.png")
class_name TestCharacter
extends Character

var character : Character 

func _init():
	print("Initializing TestCharacter")
	var sprites = {
		IDLE = preload("res://Assets/Images/steak.png")
	}
	character = Character.new("TestCharacter", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
