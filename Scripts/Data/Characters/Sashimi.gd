class_name Sashimi
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Gas_Station_Sashimi.png"),
			Scale = Vector2(0.4, 0.4),
			Position = Vector2(1147, 776)
		}
	}
	character = Character.new("Sashimi", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
