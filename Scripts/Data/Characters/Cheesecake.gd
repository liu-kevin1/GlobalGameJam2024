class_name Cheesecake
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Mashed-Up_Cheesecake.png"),
			Scale = Vector2(0.4, 0.4),
			Position = Vector2(1147, 776)
		}
	}
	character = Character.new("Cheesecake", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
