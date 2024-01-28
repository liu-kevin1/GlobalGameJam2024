class_name TestCharacter
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/jerma_red_wine.jpg"),
			Scale = Vector2(0.193, 0.184),
			Position = Vector2(1147, 776)
		}
	}
	character = Character.new("TestCharacter", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
