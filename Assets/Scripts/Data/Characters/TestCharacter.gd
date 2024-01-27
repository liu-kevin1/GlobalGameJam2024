# character.gd

# @icon("res://interface/icons/item.png")
class_name TestCharacter
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = preload("res://Assets/Images/jerma_red_wine.jpg")
	}
	character = Character.new("TestCharacter", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
