class_name Pizza2
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/Right/NY_Pizza_right_idle_speak.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1159, 741)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/Right/NY_Pizza_right_blink.png"),
			# Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1159, 741),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 0.75 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		},
		DISGUSTED = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/Right/NY_Pizza_right_disgusted.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1159, 741)
		},
		FLUSHED = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/Right/NY_Pizza_right_flushed.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1159, 741)
		},
		HAPPY = {
			Texture = preload("res://Assets/Images/CharacterSprites/NewYorkPizza/Right/NY_Pizza_right_happy.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1159, 741)
		},
		PLATE = {
			Texture = preload("res://Assets/Images/Plate.png")
		}
	}
	var audio = {
		TALK = {
			Audio = "CharacterAudio/Pizza/Pizza_Talk.wav"
		}
	}
	character = Character.new("Pizza 2", sprites, "Chill Pizza", audio)
	usesPlate = true
