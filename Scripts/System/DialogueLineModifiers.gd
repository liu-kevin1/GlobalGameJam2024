class_name DialogueLineModifiers

var typewriterModifier : int
var waitForPlayerInput : bool
var options : Array[Option]
var events : Array[Callable]
var spriteName : String

func _init(
	aTypewriterModifier : int = 1,
	aWaitForPlayerInput : bool = true,
	aOptions : Array[Option] = [],
	aEvents : Array[Callable] = [],
	aSpriteName : String = "IDLE"
	):

	# print("Initializing DialogueLineModifiers")
	typewriterModifier = aTypewriterModifier
	waitForPlayerInput = aWaitForPlayerInput
	options = aOptions
	events = aEvents
	spriteName = aSpriteName
