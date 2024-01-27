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
	
	addCharacter(TestCharacter)

# static func getCharacterManager():
# 	return instance
# func _init():
#     print("Initializing character list...")
