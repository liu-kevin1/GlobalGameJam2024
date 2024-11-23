class_name Server
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/Server/PenguinServerClosedMouth.png"),
			Scale = Vector2(0.448, 0.469),
			Position = Vector2(1204, 727)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/CharacterSprites/Server/PenguinServerOpenMouth.png"),
			Scale = Vector2(0.448, 0.469),
			Position = Vector2(1204, 727),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 0.75 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		}
	}
	var audio = {
		TALK = {
			Audio = "click_effect.wav"
		}
	}
	character = Character.new("Server", sprites, "Server", audio, false)
