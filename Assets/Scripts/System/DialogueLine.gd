class_name DialogueLine
extends Node

var character : Character
var characterName : String
var dialogueText : String
var modifiers : DialogueLineModifiers
var characterManager : CharacterManager

func _init(
	aCharacterName : String, 
	aDialogueText : String,
	aModifiers : DialogueLineModifiers = DialogueLineModifiers.new()
	):

	characterName = aCharacterName
	dialogueText = aDialogueText
	modifiers = aModifiers

	characterManager = CharacterManager.instance

	character = characterManager.CHARACTERS[characterName]
	print(character)

func test():
	print("DIALOGUE")
