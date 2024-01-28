class_name PrimeRib
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Prime_Rib.png"),
			Scale = Vector2(0.2, 0.2),
			Position = Vector2(1147, 776)
		}
	}
	character = Character.new("PrimeRib", sprites)
