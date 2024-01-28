class_name Server
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
			Texture = preload("res://Assets/Images/Penguin_Server.png"),
			Scale = Vector2(0.6, 0.6),
			Position = Vector2(1147, 900)
		}
	}
	character = Character.new("Server", sprites, "Server")


