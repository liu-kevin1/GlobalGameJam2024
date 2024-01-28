class_name CharacterManager
extends Node

var CHARACTERS : Dictionary = {}
static var instance : CharacterManager = null

func addCharacter(c):
	var obj = c.new()
	CHARACTERS[obj.character.characterName] = obj
	print(CHARACTERS)

func _ready():
	instance = self
	
	instance.addCharacter(Cheesecake)
	instance.addCharacter(Pizza1)
	instance.addCharacter(Pizza2)
	instance.addCharacter(Player)
	instance.addCharacter(PrimeRib)
	instance.addCharacter(RockCandy)
	instance.addCharacter(Sashimi)
	instance.addCharacter(Server)
	instance.addCharacter(ShinjiChair)
	instance.addCharacter(Spaghetti)
	instance.addCharacter(TestCharacter)
