class_name DialogueCheesecake
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Served", [
		DialogueLine.new("EmperorJohn", "Here you go. The cheesecake that you ordered has arrived.", DialogueLineModifiers.new(0.5)),
		DialogueLine.new("Cheesecake", "Hello! It's me. The one and only. The mighty, magnificent...", DialogueLineModifiers.new(1)),
		DialogueLine.new("Cheesecake", "CHEEEEEEEEEEEEEEESECAAAAAAAAAAAAKEEEEE!!!!!!!!!!!!!!!", DialogueLineModifiers.new(1))
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Base", [
		DialogueLine.new("TestCharacter", "Cheeeeeeeeeeeeeeeeese 1", DialogueLineModifiers.new(0.5)),
		DialogueLine.new("TestCharacter", "Cheeeeeeeeeeese 2", DialogueLineModifiers.new(1, true, [
			Option.new("Option 1", func(): dialogueManager.playDialogue("Cheesecake_Option1")),
			Option.new("Option 2"),
			Option.new("Option 3")
		])),
		DialogueLine.new("TestCharacter", "Cheeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeese 3", DialogueLineModifiers.new(0.25))
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Option1", [
		DialogueLine.new("TestCharacter", "Wow, you chose option 1?", DialogueLineModifiers.new(1)),
		DialogueLine.new("TestCharacter", ".....Incredible.", DialogueLineModifiers.new(1, true, [
			Option.new("Option 1", func(): dialogueManager.playDialogue("Cheesecake_Base")),
			Option.new("Option 2"),
			Option.new("Option 3")
		])),
		DialogueLine.new("TestCharacter", "Anyways, we're here now.", DialogueLineModifiers.new(0.25))
	]))

func test_func():
	print("calling cheesecake test func")
