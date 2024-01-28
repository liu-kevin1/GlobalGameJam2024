class_name ShinjiChair
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(1, 1),
			Position = Vector2(1147, 676)
		}
	}
	character = Character.new("ShinjiChair", sprites, "")
