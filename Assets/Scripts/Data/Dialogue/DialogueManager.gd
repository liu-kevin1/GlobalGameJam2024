class_name DialogueManager
extends Node

var DIALOGUE : Dictionary = {}
static var instance : DialogueManager = null

var dialogueBox = null
signal pressedEnter

func addDialogue(dial):
	DIALOGUE[dial.dialogueName] = dial
	print(DIALOGUE)

func _ready():
	instance = self

	addDialogue(Dialogue.new("TestDialogue", [
		DialogueLine.new("TestCharacter", "Hey, this is a test line of dialogue! Woohoo! Press ENTER to continue to the next line.", DialogueLineModifiers.new(0.25)),
		DialogueLine.new("TestCharacter", "This is the second line of dialogue. This is normal speed, but it won't wait for you to press enter before going to the next line, so, toodles!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("TestCharacter", "Aaaaaaaaaaaaaaaaand this is the third line of dialogue and it's so so much faster!!! WOOOO!!!!", DialogueLineModifiers.new(2))
	]))
	
	dialogueBox = get_tree().get_root().get_node("MainGameScene/DialogueBox")
	print("DB: ", dialogueBox)

	DialogueManager.instance.playDialogue("TestDialogue")
	
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			pressedEnter.emit()

func playDialogue(dialogueName):
	print("Playing dialogue...")
	var dial : Dialogue = DIALOGUE[dialogueName]
	#print(dial)

	for line in dial.dialogueLines:
		#print(line)
		var text : String = line.dialogueText
		var buffer : String = ""
		var modifiers : DialogueLineModifiers = line.modifiers
		for c in text:
			buffer += c
			dialogueBox.text = buffer
			await get_tree().create_timer(0.02).timeout
		if modifiers.waitForPlayerInput:
			await pressedEnter
