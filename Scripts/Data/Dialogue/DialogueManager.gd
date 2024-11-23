class_name DialogueManager
extends Node

var DIALOGUE : Dictionary = {}
static var instance : DialogueManager = null

const templateAudioStreamPlayer = preload("res://Assets/Instances/TemplateAudioStreamPlayer.tscn")
const templateButton = preload("res://Assets/Instances/TemplateButton.tscn")
const clickEffect = preload("res://Assets/Instances/ClickEffect.tscn")

var dialogueBox : Label = null
var choiceButtons : Node = null
# var templateButton : Button = null

var characterSprite : Sprite2D = null
var backgroundSprite : Sprite2D = null

var plateInstance : Node2D = null
var currentCharacter : Character = null
var currentSpriteCharacter : Character = null
var audioInstancesNode : Node = null

var hasPressedEnter : bool = false
var lastEnterPress : float = 0
var enterPressDebounce : float = 10
var currentDialogue : Dialogue = null
var markCurrentDialogueForKill : bool = false

var _thread_blink_continue = false

signal pressedEnter
signal optionPressed
signal dialogueFinished

func addDialogue(dial):
	# Store a reference to the dialogue
	DIALOGUE[dial.dialogueName] = dial
	# print(DIALOGUE)

func _ready():
	instance = self
	
	# Initialize object references
	var root = get_tree().get_root()
	
	dialogueBox = root.get_node("MainGameScene/DialogueBox")
	choiceButtons = root.get_node("MainGameScene/ChoiceButtons")
	characterSprite = root.get_node("MainGameScene/CharacterSprite")
	backgroundSprite = root.get_node("MainGameScene/BackgroundSprite")
	audioInstancesNode = root.get_node("MainGameScene/AudioInstances")
	plateInstance = root.get_node("MainGameScene/PlateSprite")
	dialogueBox.visible = true
	
	
	# Initialize the dialogue modules
	DialogueIntro.new()
	DialogueCheesecake.new()
	DialoguePizza.new()
	DialoguePrimeRib.new()
	DialogueSashimi.new()
	DialogueSpaghetti.new()
	DialogueSteak.new()

	# Test dialogue
	# addDialogue(Dialogue.new("TestDialogue", [
	# 	DialogueLine.new("TestCharacter", "Hey, this is a test line of dialogue! Woohoo! Press ENTER to continue to the next line.", DialogueLineModifiers.new(0.25)),
	# 	DialogueLine.new("TestCharacter", "This is the second line of dialogue. This is normal speed, but it won't wait for you to press enter before going to the next line, so, toodles!!", DialogueLineModifiers.new(1, false)),
	# 	DialogueLine.new("TestCharacter", "Aaaaaaaaaaaaaaaaand this is the third line of dialogue and it's so so much faster!!! WOOOO!!!!", DialogueLineModifiers.new(2))
	# ]))

	
	# Play the first dialogue
	# We start with serving the cheesecake
	DialogueManager.instance.changeSprite("Player")
	DialogueManager.instance.playDialogue("IntroScene")

	# Start the sprite animation thread
	startCharacterAnimation()
	
func registerContinue():
	if Time.get_ticks_msec() - lastEnterPress > enterPressDebounce:
		hasPressedEnter = true
		lastEnterPress = Time.get_ticks_msec()
	
		pressedEnter.emit()

func generateClickEffect(position):
	# Create an instance of the click effect
	var effect = clickEffect.instantiate()
	get_tree().get_root().add_child(effect)

	effect.position.x = position.x
	effect.position.y = position.y

	# Get the sprite, we'll need it later
	# since we want to destroy the click effect
	# when the animation finishes
	var sprite = effect.get_node("AnimatedSprite2D")
	sprite.connect("animation_finished", func():
		effect.queue_free())
	sprite.play("Click")

	playAudio("light_tap.wav", 2.0)


func _input(event):
	if event is InputEventKey:
		# Trigger when ENTER or SPACE is pressed
		if event.pressed and event.keycode == KEY_ENTER or event.keycode == KEY_SPACE:
			# This has to be before the signal is emitted, otherwise dialogue gets skipped to the end
			# when continuing past the last line of dialogue
			registerContinue()
	elif event is InputEventMouseButton:
		# Generate a new click effect
		if event.pressed:
			generateClickEffect(event.position)

			registerContinue()

func startCharacterAnimation():
	# Create a thread to handle blinking
	# This makes it so that characters can blink randomly,
	# and it won't stop execution
	var blinkThread = Thread.new()
	blinkThread.start(_thread_blink.bind())

func _thread_blink():
	var rng = RandomNumberGenerator.new()

	while true:
		var chance = rng.randf()

		var characterSprites = currentSpriteCharacter.characterSprites
		print("b) currentSpriteCharacter.characterName: <" + currentSpriteCharacter.characterName + ">")
		var blinkInfo = characterSprites.get("BLINK", null)
		if blinkInfo != null and blinkInfo.has("Frequency"):
			var frequency = blinkInfo.Frequency

			# Only blink if the character sprite is on an idle animation (commented out because we have new sprites)
			# if characterSprite.texture == characterSprites.IDLE.Texture and chance <= frequency:
			if chance <= frequency:
				var oldTexture = characterSprite.texture
				characterSprite.texture = blinkInfo.Texture
				await get_tree().create_timer(blinkInfo.Duration).timeout

				# If either of these conditions are true, then don't revert the change
				# instead, just leave things how they are
				if characterSprites != currentSpriteCharacter.characterSprites or characterSprite.texture != blinkInfo.Texture:
					continue
				characterSprite.texture = oldTexture

		var waitDuration = 1
		if blinkInfo != null and blinkInfo.has("Wait"):
			waitDuration = blinkInfo.Wait
		await get_tree().create_timer(waitDuration).timeout

func changeBackgroundSprite(backgroundName : String):
	var newBackgroundSprite = load("res://Assets/Images/" + backgroundName + ".png")
	backgroundSprite.texture = newBackgroundSprite

func changeSprite(characterName : String, spriteModifier : String = "IDLE"):
	var character = CharacterManager.instance.CHARACTERS[characterName].character

	print("Set currentSpriteCharacter to be: " + characterName)
	currentSpriteCharacter = character
	print("a) currentSpriteCharacter.characterName: " + currentSpriteCharacter.characterName)
	# Update the character sprite with the current speaker
	var spriteInfo = character.characterSprites[spriteModifier]
	
	characterSprite.texture = spriteInfo.Texture
	characterSprite.scale = spriteInfo.Scale
	characterSprite.position = spriteInfo.Position
	
	if character.characterSprites.get("PLATE", null) != null:
		plateInstance.texture = character.characterSprites.PLATE.Texture


func playDialogue(dialogueName : String):
	# If we're currently playing dialogue, send it a signal to die
	# Wait for it to die
	# Then start playing this dialogue
	if currentDialogue != null:
		markCurrentDialogueForKill = true
		await dialogueFinished
		markCurrentDialogueForKill = false

	# print("Playing dialogue...")
	# Load the dialogue from reference
	var dial : Dialogue = DIALOGUE[dialogueName]
	currentDialogue = dial

	# For each line in the dialogue...
	for line in dial.dialogueActions:
		# Initialize our variables
		if line is DialogueSwitchBackground:
			changeBackgroundSprite(line.backgroundName)

		elif line is DialogueSwitchSprite:
			changeSprite(line.characterName, line.spriteModifier)
			if(line.currentCharacter.usesPlate):
				togglePlate(true)
			else:
				togglePlate(false)

		elif line is DialogueLine:
			var character = CharacterManager.instance.CHARACTERS[line.characterName]
			var text : String = line.dialogueText
			var buffer : String = ""
			var modifiers : DialogueLineModifiers = line.modifiers
			var options = modifiers.options
			var events = modifiers.events

			currentCharacter = character.character

			# # Update the character sprite with the current speaker
			# var spriteInfo = character.character.characterSprites[modifiers.spriteName]
			# characterSprite.texture = spriteInfo.Texture
			# characterSprite.scale = spriteInfo.Scale
			# characterSprite.position = spriteInfo.Position

			# Get the name that the player should see, when referring to a character
			var nickname = "\n"
			if character.character.characterNickname != "":
				nickname = character.character.characterNickname + ":\n"
			buffer = nickname

			# Reset the enter tracker
			hasPressedEnter = false
			var talkAudio = currentCharacter.characterAudio.get("TALK", null)
			var lastTalk = Time.get_unix_time_from_system()
			var talkDelay = 0.1

			for c in text:
				buffer += c
				dialogueBox.text = buffer
				# Wait a short bit before moving onto the next character
				await get_tree().create_timer(0.02 * modifiers.typewriterModifier).timeout

				if talkAudio != null:
					if (Time.get_unix_time_from_system() - lastTalk) >= talkDelay:
						lastTalk = Time.get_unix_time_from_system()
						playAudio(talkAudio.Audio)

				# If the player presses enter, skip to the end 
				if hasPressedEnter:
					buffer = nickname + text
					dialogueBox.text = buffer
					break

				# If we've received a signal to kill, then kill the text loop
				if markCurrentDialogueForKill:
					break


			# If we've received a signal to kill, then kill the dialogue line loop
			if markCurrentDialogueForKill:
				break
			
			# If there are options, generate them
			if options.size() > 0:
				generateOptions(options)
				await optionPressed
			elif modifiers.waitForPlayerInput:
				await get_tree().create_timer(0.25).timeout
				dialogueBox.text = dialogueBox.text + "\n\nPress (SPACE/ENTER/MOUSE) to continue..."
				await pressedEnter

			# Call all of the attached events for this dialogue line
			for event in events:
				event.call()

			# Tell everybody that we finished playing this dialogue
			dialogueFinished.emit()

func generateOptions(options : Array[Option]):
	# print("Generating options for", options)

	# Used for the y offset between option buttons
	var yOffset = 60

	# Get the base values
	var example = templateButton.instantiate()
	var xPosition = example.position.x
	var yPosition = example.position.y
	# Destroy the example instance after we get our necessary variables
	example.queue_free()

	# Store the generated buttons to be destroyed once an option is chosen
	var generatedButtons : Array[Button] = []

	for option in options:
		# print("Option:", option)
		# Create a copy
		var newButton = templateButton.instantiate()
		# Set the text to be empty
		newButton.text = ""
		# We set the text of the label rather than the button, 
		# because labels support word wrapping and buttons do not
		newButton.get_node("Label").text = option.optionText

		# Set the position of the new button
		newButton.position.x = xPosition
		newButton.position.y = yPosition

		# Make it able to be seen
		newButton.visible = true

		# Add it as a child under the choiceButtons node
		choiceButtons.add_child(newButton)

		# Hook a function to the buttons
		newButton.pressed.connect(
			func():
				# print("Button clicked")

				# Upon being clicked:
				# - call the attached option function
				# - tell everybody that an option was pressed
				# - destroy all the generated buttons
				option.optionCall.call()
				optionPressed.emit()
				for button in generatedButtons:
					button.queue_free()
		)

		# Have the button change colors when the mouse enters / exits
		# Store the original color to revert back when the mouse exits
		# var baseColor
		# var newColor = 
		# newButton.mouse_entered.connect(
		# 	func():
		# 		newButton.
		# )
		# newButton.mouse_exited.connect(
		# 	func():
		# 		newButton.
		# )

		# Store the generated button
		generatedButtons.push_back(newButton)

		# Increment the y position for the next button
		yPosition += yOffset

	# print(generatedButtons)

func enterCredits(text):
	# print("---------ENTERING CREDITS-----------")
	# print(text)

	# Get the credits scene, set the text to be loaded, and transition
	var credits = Global.CREDITS_SCENE
	Global.CREDIT_TEXT = text
	# Transition to the game scene
	get_tree().change_scene_to_packed(credits)

func playAudio(audioName, volume=1.0):
	var audioStreamPlayer = templateAudioStreamPlayer.instantiate()

	var audioSource : AudioStream = load("res://Assets/Audio/" + audioName)

	audioStreamPlayer.stream = audioSource
	audioStreamPlayer.volume_db = volume

	audioInstancesNode.add_child(audioStreamPlayer)
	# audioStreamPlayer.play()

	# audioStreamPlayer.finished.connect(func() : print("Finished playing"))
	audioStreamPlayer.finished.connect(func(): audioStreamPlayer.queue_free())

func togglePlate(enable : bool):
	plateInstance.visible = enable
	

# 
# Dialogue Effects
# 

# Moving
# func moveSprite(characterSprite):


# Shaking
# func shakeSprite(characterSprite):


# Rotating
# func rotateSprite(characterSprite):

