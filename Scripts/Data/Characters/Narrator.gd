class_name Narrator
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/Cheesecake/Cheesecake.png"),
			Scale = Vector2(0, 0),
			Position = Vector2(1174, 731)
		}
	}
	var audio = {
		TALK = {
			Audio = "click_effect.wav"
		}
	}
	character = Character.new("Narrator", sprites, "", audio)
