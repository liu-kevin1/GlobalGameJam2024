class_name Cheesecake
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
            Texture = preload("res://Assets/Images/cheesecake.png"),
            Scale = Vector2(0.193, 0.184),
            Position = Vector2(1147, 776)
        }
	}
	character = Character.new("Cheesecake", sprites)

func testCharacterFunction():
	print("TEST CHARACTER - TEST CHARACTER FUNCTION")
