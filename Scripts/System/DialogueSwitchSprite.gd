class_name DialogueSwitchSprite
extends DialogueAction

var characterName : String
var spriteModifier : String

func _init(
	aCharacterName : String, 
	aSpriteModifier : String = "IDLE"
	):

	characterName = aCharacterName
	spriteModifier = aSpriteModifier
