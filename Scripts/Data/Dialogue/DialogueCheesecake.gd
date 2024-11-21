class_name DialogueCheesecake
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueCheesecake")
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Served", [
		DialogueLine.new("Server", "\"Your 6 Course meal for one has arrived.\""),
		DialogueLine.new("Server", "\"We're starting off the night with a cheesecake.\""),
		DialogueLine.new("Server", "\"Please, enjoy!\""),
		DialogueLine.new("Cheesecake", "\"uh...um. hi :D\""),
		DialogueLine.new("Cheesecake", "\"i hope im not being a disturbance...\"", DialogueLineModifiers.new(1, true, [
			Option.new("\"I'm into hot messes.\"", func(): dialogueManager.playDialogue("Cheesecake_Enthusiastic1")),
			Option.new("\"I'd like someone a who has it together.\"", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
			Option.new("*trying not to vomit* \"...I'll pass on you.\"", func(): dialogueManager.playDialogue("Cheesecake_Skip1"))
		], [], "FLUSHED")),
	]))
	#dialogueManager.addDialogue(Dialogue.new("Cheesecake_Silence1", [
	#	DialogueLine.new("Cheesecake", "\"...why are you so quiet? do you not like me? D:\" *starts to cry* \"you must hate me like everyone else does!\" *continues quiet crying*"),
	#	DialogueLine.new("Cheesecake", "\"wait\" *instantly stops* \"you must be admiring my beauty, right? thats why youre so quiet, cuz you're speechless at how amazing i am :D\"", DialogueLineModifiers.new(1, true, [
	#		Option.new("\"Yes, you look absolutely delicious! I bet you'll taste even more delicious when I eat you!\"", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
	#		Option.new(
	#			"\"Wow, I didn't think it was possible to be more delusional than people who think they're going to receive a letter to Hogwarts on their 11th birthday. Please continue humoring yourself but there's no way I would like a vomit inducing looking like thing like you.\"", 
	#			func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")
	#		)
	#	])),
	#]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Enthusiastic1", [
		DialogueLine.new("Cheesecake", "\"y-you are? that's the meanest yet nicest thing you could say about me. :)\""),
		DialogueLine.new("Cheesecake", "\"people think i'm ugly and vomit usually\" *sniffles*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "\"i'm into u too o-o\"", DialogueLineModifiers.new(1, true, [
			Option.new("*Vomits violently*", func(): dialogueManager.playDialogue("Cheesecake_Skip1")),
			Option.new("\"Of course, we can easily stay together forever with you... in my stomach~.\"", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
			Option.new("\"Actually on second thought, I'm not into that kind of hot mess.\"", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
		], [], "FLUSHED")),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Disgusted1", [
		DialogueLine.new("Cheesecake", "\"w-whaat?\" *stares at you with wide eyes*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "\"It's just what I think though, don't take it so personally.\""),
		DialogueLine.new("Player", "It's been 5 whole minutes, I think I really did it now."),
		DialogueLine.new("Player", "*feeling uneasy* \"...You ok?\""),
		DialogueLine.new("Cheesecake", "*waterfall of tears start pouring out of its eyes*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "\"UAAAAAHHAHAAHAAAAHHhhhh\"", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "\"Oh dear..\""),
		DialogueLine.new("Cheesecake", "*tears start pouring out at an alarmingly fast rate*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "\"UUUHHHUUGGHH WEEEEeeeeeeehhh....\"", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "*tears start overflowing plate*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "\"Wait, hold on-\" *starts panicking*", DialogueLineModifiers.new(1, true, [
			Option.new("I have to eat this thing now or the whole restaurant sinks like the titanic!", func(): dialogueManager.playDialogue("Cheesecake_Consumption3")),
			Option.new("Scared, you shout for the server to fix the problem you created", func(): dialogueManager.playDialogue("Cheesecake_Skip3")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption1", [
		DialogueLine.new("Cheesecake", "\"...wait..wai-wait waitwaitwait...uh that's not exactly what i meant- you wouldnt do that right? i know youre just joking, youre just saying that because of how stunning i look-\"", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Player", "You take the fork placed on the table"),
		DialogueLine.new("Cheesecake", "\"ah, now youre just going to give me some accessories to enhance my beauty...i must admit, a fork is probably the worst choice but i think i can pull it off.\"", DialogueLineModifiers.new(1, true, [
			Option.new("Mildly concerned, you freeze just before your fork touches the cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Skip2")),
			Option.new("Continue to dig into cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Consumption2")),
		], [], "FLUSHED")),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption2", [
		DialogueLine.new("Player", "Being the psychopathic creature you are, you start dismembering the cheesecake"),
		DialogueLine.new("Cheesecake", "*starts shrieking*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "*continues shrieking* \"personally i dont think i need surgery, but if youre going to do it at least give me some anesthesia\"", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "You bring the chunk of cheesecake closer to your mouth"),
		DialogueLine.new("Cheesecake", "\"..ohhhh i see, you just want to kiss me\" *hehe* \"well why didnt you just say so at the start...although doing so with a bunch of pixels on a screen is a bit strange...\"", DialogueLineModifiers.new(1, true, [], [], "FLUSHED")),
		DialogueLine.new("Player", "........."),
		DialogueLine.new("Cheesecake", "\"um hey hey, can you please stop ignoring me ;-; just because i dont actually have any feelings doesnt mean you get to be rude to me..\"", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Player", "You take a huge chomp out of the cheesecake and the screaming starts. Funny how a character characterized by the trait \"timid\" can still be written as loud in the right circumstances."),
		DialogueLine.new("Player", "You continue munching on the cheesecake until there's not a speck left on the plate. Although..."),
		DialogueLine.new("Player", "...Strange, why do I still hear screaming?"),
		DialogueLine.new("Player", "You try to move your arms to cover your ears from the screaming but they remain frozen at your sides. Suddenly the screaming stops and you feel your mouth close."),
		DialogueLine.new("Player", "*as Cheesecake* \"...what is this? am i in a human body???\""),
		DialogueLine.new("Player", "*as Cheesecake* \"whoa i can move!....i can finally get out of this hellhole!\""),
		DialogueLine.new("Player", "You try to take back the control of your body but despite your efforts the cheesecake moves your body out of the restaurant back into society."),
		DialogueLine.new("Player", "...At least you were able to get a meal out of this."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE CHEESECAKE...? ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption3", [
		DialogueLine.new("Player", "*swallows*"),
		DialogueLine.new("Player", "*tries to stand up* *fails*"),
		DialogueLine.new("Player", "*tries to speak* *fails*"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU SWALLOWED THE CHEESECAKE...? ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip1", [
		DialogueLine.new("Cheesecake", "*starts wailing*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "\"why does everyone do this to me??? soon ill actually become vomit instead of just looking like it!\"", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Server", "\"And there's my cue. Please refrain from doing this to the next dishes please.\""),
		DialogueLine.new("Server", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip2", [
		DialogueLine.new("Player", "\"...I'm about to eat you and the only thing you're thinking about are your looks??\""),
		DialogueLine.new("Cheesecake", "\"...wait, you were actually about to eat me? D:\"", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Player", "\"..........\""),
		DialogueLine.new("Player", "\"I can't do this anymore.\""),
		DialogueLine.new("Cheesecake", "\"oh yay, youve changed your mind on eating me :D....wait wait wait, why am i being taken away? hold on, WAI-\" *is taken away by server*", DialogueLineModifiers.new(1, false, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip3", [
		DialogueLine.new("Player", "\"Help! I'm too young to drown!\""),
		DialogueLine.new("Server", "\"Not again....\" *takes the cheesecake away and starts watering the plants with its tears*"),
		DialogueLine.new("Server", "\"So sorry, I will bring the next dish out shortly.\""),
		DialogueLine.new("Player", "...................", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_NextDish", [
		DialogueLine.new("Server", "\"It will only be a moment.\""),
		DialogueLine.new("Player", "...................", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Steak_Served")
		])),
	]))
