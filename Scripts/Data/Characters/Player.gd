class_name Player
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/jerma_red_wine.jpg"),
			Scale = Vector2(0, 0),
			Position = Vector2(1174, 776)
		}
	}
	var audio = {
		TALK = {
			Audio = "click_effect.wav"
		}
	}
	character = Character.new("Player", sprites, "Player", audio, false)
