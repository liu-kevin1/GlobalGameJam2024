class_name Spaghetti
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Squid_Ink_Spaget.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		}
	}
	character = Character.new("Spaghetti", sprites, "Squid Ink Spaghetti")

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
