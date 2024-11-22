class_name DialogueSwitchSprite
extends DialogueAction

var characterName : String
var spriteModifier : String
var currentCharacter : Character

func _init(
	aCharacterName : String, 
	aSpriteModifier : String = "IDLE",
	):

	characterName = aCharacterName
	spriteModifier = aSpriteModifier
	currentCharacter = CharacterManager.instance.CHARACTERS[characterName].character
