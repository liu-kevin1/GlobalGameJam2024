class_name CharacterManager
extends Node

var CHARACTERS : Dictionary = {}
static var instance : CharacterManager = null

func addCharacter(c):
	var obj = c.new()
	# instance.get_parent().get_parent().add_child(obj)
	CHARACTERS[obj.character.characterName] = obj
	print(CHARACTERS)

# func _init():
# 	instance = self

func _ready():
	instance = self
	
	instance.addCharacter(Cheesecake)
	instance.addCharacter(Pizza)
	instance.addCharacter(Player)
	instance.addCharacter(PrimeRib)
	instance.addCharacter(RockCandy)
	instance.addCharacter(Sashimi)
	instance.addCharacter(Server)
	instance.addCharacter(Spaghetti)
	instance.addCharacter(TestCharacter)
	
# static func getCharacterManager():
# 	return instance
# func _init():
#     print("Initializing character list...")