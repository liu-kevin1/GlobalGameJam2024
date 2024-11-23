class_name PizzaBoth
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/NY_Pizza_Both.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731)
		}
	}
	var audio = {
		TALK = {
			Audio = "CharacterAudio/Pizza/Pizza_Talk.wav"
		}
	}
	character = Character.new("Pizza Both", sprites, "Pizza Siblings", audio)
