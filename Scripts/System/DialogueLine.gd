class_name DialogueLine
extends DialogueAction

var characterName : String
var dialogueText : String
var modifiers : DialogueLineModifiers

func _init(
	aCharacterName : String, 
	aDialogueText : String,
	aModifiers : DialogueLineModifiers = DialogueLineModifiers.new()
	):

	characterName = aCharacterName
	dialogueText = aDialogueText
	modifiers = aModifiers

	# print(character)
