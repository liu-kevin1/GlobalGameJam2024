class_name PrimeRib
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 820)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib_blink.png"),
			# Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 0.75 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		},
		CONFUSED = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib_confused.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731)
		},
		DISGUSTED = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib_disgusted.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731)
		},
		FLUSHED = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib_flushed.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731)
		},
		HAPPY = {
			Texture = preload("res://Assets/Images/CharacterSprites/PrimeRib/Prime_Rib_happy.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1174, 731)
		},
		PLATE = {
			Texture = preload("res://Assets/Images/Plate.png")
		}
	}
	var audio = {
		TALK = {
			Audio = "CharacterAudio/Cheesecake/Cheesecake_Talk.wav"
		}
	}
	character = Character.new("PrimeRib", sprites, "1 Oz of Prime Rib", audio)
