class_name PrimeRib
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Prime_Rib.png"),
			Scale = Vector2(0.4, 0.4),
			Position = Vector2(1147, 820)
		}
	}
	character = Character.new("PrimeRib", sprites)
