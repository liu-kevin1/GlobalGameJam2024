class_name Pizza2
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/NY_Pizza_Transparent.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		}
	}
	character = Character.new("Pizza 2", sprites, "Chill Pizza")

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
