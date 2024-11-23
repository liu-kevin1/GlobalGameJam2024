class_name RockCandy
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Rock_Candy.png"),
			Scale = Vector2(0.193, 0.184),
			Position = Vector2(1174, 776)
		}
	}
	character = Character.new("RockCandy", sprites)
	usesPlate = true
