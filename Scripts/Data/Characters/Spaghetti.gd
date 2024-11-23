class_name Spaghetti
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget.png"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731)
		},
		BLINK = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget_Blink.png"),
			# Texture = preload("res://Assets/Images/shinji_chair.png"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731),
			Frequency = 0.5, # 0.5 -> 50% chance each second for this sprite to blink
			Duration = 0.5, # 0.5 -> Sprite stays on blink sprite for 0.5 seconds before going back to idle
			Wait = 2 # 0.75 -> Waits 0.75 seconds between each attempt to blink
		},
		CONFUSED = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget_Confused.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731)
		},
		DISGUSTED = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget_Disgusted.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731)
		},
		FLUSHED = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget_Flushed.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731)
		},
		HAPPY = {
			Texture = preload("res://Assets/Images/CharacterSprites/SquidInkSpaghetti/Squid_Ink_Spaget_Happy.png"),
			# Texture = preload("res://Assets/Images/jerma_july.jpg"),
			Scale = Vector2(0.75, 0.75),
			Position = Vector2(1174, 731)
		},
		PLATE = {
			Texture = preload("res://Assets/Images/Plate.png")
		}
	}
	var audio = {
		TALK = {
			Audio = "CharacterAudio/Spaghetti/Spaghetti_Talk.wav"
		}
	}
	character = Character.new("Spaghetti", sprites, "Squid Ink Spaghetti", audio)
