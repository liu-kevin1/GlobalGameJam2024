class_name Dialogue
extends Node

var dialogueName : String
var dialogueActions : Array[DialogueAction]

func _init(aDialogueName : String, aDialogueActions : Array[DialogueAction] = []):
	dialogueName = aDialogueName
	dialogueActions = aDialogueActions
