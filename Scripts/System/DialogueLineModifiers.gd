class_name DialogueLineModifiers

var typewriterModifier : int
var waitForPlayerInput : bool
var options : Array[Option]
var events : Array[Callable]

func _init(
	aTypewriterModifier : int = 1,
	aWaitForPlayerInput : bool = true,
	aOptions : Array[Option] = [],
	aEvents : Array[Callable] = []
	):

	print("Initializing DialogueLineModifiers")
	typewriterModifier = aTypewriterModifier
	waitForPlayerInput = aWaitForPlayerInput
	options = aOptions
	events = aEvents
