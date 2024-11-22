class_name Pizza2
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/FoodSprites/NewYorkPizza/NY_Pizza.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/FoodSprites/NewYorkPizza/NY_Pizza_blink.png"),
			# Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 0.75 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		},
		DISGUSTED = {
			Texture = preload("res://Assets/Images/FoodSprites/NewYorkPizza/NY_Pizza_disgusted.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		FLUSHED = {
			Texture = preload("res://Assets/Images/FoodSprites/NewYorkPizza/NY_Pizza_flushed.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		HAPPY = {
			Texture = preload("res://Assets/Images/FoodSprites/NewYorkPizza/NY_Pizza_happy.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		PLATE = {
			Texture = preload("res://Assets/Images/Plate.png")
		}
	}
	var audio = {
		TALK = {
			Audio = "FoodAudio/Pizza/Pizza_Talk.wav"
		}
	}
	character = Character.new("Pizza 2", sprites, "Chill Pizza", audio)
	usesPlate = true
