# character.gd

# @icon("res://interface/icons/item.png")
class_name Dialogue
extends Node

var dialogueName : String
var dialogueLines : Array[DialogueLine]

func _init(aDialogueName : String, aDialogueLines : Array[DialogueLine] = []):
	dialogueName = aDialogueName
	dialogueLines = aDialogueLines

func test():
	print("DIALOGUE")
