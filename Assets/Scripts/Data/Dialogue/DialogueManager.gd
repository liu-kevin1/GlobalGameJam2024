class_name DialogueManager
extends Node

var DIALOGUE : Dictionary = {}
static var instance : DialogueManager = null

var dialogueBox : Label = null
var choiceButtons : Node = null
var templateButton : Button = null
var characterSprite : Sprite2D = null

var hasPressedEnter : bool = false
var lastEnterPress : float = 0
var enterPressDebounce : float = 1
var currentDialogue : Dialogue = null
var markCurrentDialogueForKill : bool = false

signal pressedEnter
signal optionPressed
signal dialogueFinished

func addDialogue(dial):
	DIALOGUE[dial.dialogueName] = dial
	print(DIALOGUE)

# func _init():
# 	instance = self

func _ready():
	instance = self

	DialogueCheesecake.new()

	addDialogue(Dialogue.new("TestDialogue", [
		DialogueLine.new("TestCharacter", "Hey, this is a test line of dialogue! Woohoo! Press ENTER to continue to the next line.", DialogueLineModifiers.new(0.25)),
		DialogueLine.new("TestCharacter", "This is the second line of dialogue. This is normal speed, but it won't wait for you to press enter before going to the next line, so, toodles!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("TestCharacter", "Aaaaaaaaaaaaaaaaand this is the third line of dialogue and it's so so much faster!!! WOOOO!!!!", DialogueLineModifiers.new(2))
	]))

	var root = get_tree().get_root()
	
	dialogueBox = root.get_node("MainGameScene/DialogueBox")
	choiceButtons = root.get_node("MainGameScene/ChoiceButtons")
	templateButton = choiceButtons.get_node("TemplateButton")
	characterSprite = root.get_node("MainGameScene/CharacterSprite")

	DialogueManager.instance.playDialogue("Cheesecake_Base")
	
func _input(event):
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_ENTER:
			# This has to be before the signal is emitted, otherwise dialogue gets skipped to the end
			# when continuing past the last line of dialogue
			if Time.get_ticks_msec() - lastEnterPress > enterPressDebounce:
				hasPressedEnter = true
				lastEnterPress = Time.get_ticks_msec()
			
			pressedEnter.emit()

func playDialogue(dialogueName : String):
	if currentDialogue != null:
		markCurrentDialogueForKill = true
		await dialogueFinished
		markCurrentDialogueForKill = false

	print("Playing dialogue...")
	var dial : Dialogue = DIALOGUE[dialogueName]
	currentDialogue = dial

	hasPressedEnter = false
	for line in dial.dialogueLines:
		var character = CharacterManager.instance.CHARACTERS[line.characterName]
		var text : String = line.dialogueText
		var buffer : String = ""
		var modifiers : DialogueLineModifiers = line.modifiers
		var options = modifiers.options
		var events = modifiers.events

		characterSprite.texture = character.character.characterSprites.IDLE

		hasPressedEnter = false
		for c in text:
			buffer += c
			dialogueBox.text = buffer
			await get_tree().create_timer(0.02).timeout

			# If the player presses enter, skip to the end 
			if hasPressedEnter:
				buffer = text
				dialogueBox.text = buffer
				break

			if markCurrentDialogueForKill:
				break

		if markCurrentDialogueForKill:
			break

		hasPressedEnter = false

		if options.size() > 0:
			generateOptions(options)
			await optionPressed
		elif modifiers.waitForPlayerInput:
			await pressedEnter

	dialogueFinished.emit()

func generateOptions(options : Array[Option]):
	print("Generating options for", options)

	var yOffset = 40

	var xPosition = templateButton.position.x
	var yPosition = templateButton.position.y

	var generatedButtons : Array[Button] = []

	for option in options:
		print("Option:", option)
		var newButton = templateButton.duplicate()
		newButton.text = option.optionText

		newButton.position.x = xPosition
		newButton.position.y = yPosition

		newButton.visible = true

		choiceButtons.add_child(newButton)

		newButton.pressed.connect(
			func():
				print("Button clicked")
				option.optionCall.call()
				optionPressed.emit()
				for button in generatedButtons:
					button.queue_free()
		)

		generatedButtons.push_back(newButton)

		yPosition += yOffset

	print(generatedButtons)
