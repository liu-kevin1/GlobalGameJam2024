class_name Cheesecake
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Mashed-Up_Cheesecake.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		}
	}
	character = Character.new("Cheesecake", sprites, "Mashed Up Cheesecake")

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
