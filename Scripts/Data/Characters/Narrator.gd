class_name Narrator
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake.png"),
			Scale = Vector2(0, 0),
			Position = Vector2(1147, 876)
		}
	}
	var audio = {
		TALK = {
			Audio = "FoodAudio/Cheesecake/Cheesecake_Talk.wav"
		}
	}
	character = Character.new("Narrator", sprites, "", audio)
