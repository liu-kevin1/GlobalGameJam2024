class_name Cheesecake
extends Character

var character : Character

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake_Blink.png"),
			# Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 0.75 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		},
		CONFUSED = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake_Confused.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		DISGUSTED = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake_Disgusted.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		FLUSHED = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake_Flushed.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		},
		HAPPY = {
			Texture = preload("res://Assets/Images/FoodSprites/Cheesecake/Cheesecake_Happy.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.5, 0.5),
			Position = Vector2(1147, 876)
		}
	}
	var audio = {
		TALK = {
			Audio = "FoodAudio/Cheesecake/Cheesecake_Talk.wav"
		}
	}
	character = Character.new("Cheesecake", sprites, "Mashed Up Cheesecake", audio)

