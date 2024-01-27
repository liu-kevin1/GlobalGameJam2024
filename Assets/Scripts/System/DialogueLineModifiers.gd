class_name DialogueLineModifiers

var typewriterModifier : int
var waitForPlayerInput : bool
var events : Array[Callable]

func _init(
	aTypewriterModifier : int = 1,
	aWaitForPlayerInput : bool = true,
	aEvents : Array[Callable] = []
	):

	print("Initializing DialogueLineModifiers")
	typewriterModifier = aTypewriterModifier
	waitForPlayerInput = aWaitForPlayerInput
	events = aEvents

func test():
	print("DIALOGUE")
