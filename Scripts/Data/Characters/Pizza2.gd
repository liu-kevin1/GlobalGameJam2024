class_name Pizza2
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/NY_Pizza_Transparent.png"),
			Scale = Vector2(0.4, 0.4),
			Position = Vector2(1147, 776)
		}
	}
	character = Character.new("Pizza 2", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
