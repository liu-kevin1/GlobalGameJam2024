class_name Server
extends Character

var character : Character 

func _init():
	var sprites = {
		IDLE = {
            Texture = preload("res://Assets/Images/Emperor.png"),
            Scale = Vector2(1, 1),
            Position = Vector2(1147, 776)
        }
	}
	character = Character.new("Server", sprites)


