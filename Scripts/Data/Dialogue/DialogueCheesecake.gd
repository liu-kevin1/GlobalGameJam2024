class_name DialogueCheesecake
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueCheesecake")
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Served", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Your 6 Course meal for one has arrived."),
		DialogueLine.new("Server", "We're starting off the night with a cheesecake."),
		DialogueLine.new("Server", "Please, enjoy!"),
		DialogueSwitchSprite.new("Cheesecake"),
		DialogueLine.new("Player", "Are those eyes?????"),
		DialogueLine.new("Cheesecake", "uh...um. hi :D"),
		DialogueLine.new("Player", "DID IT JUST TALK???????"),
		DialogueLine.new("Cheesecake", "ummm ur being kinda weird..."),
		DialogueLine.new("Cheesecake", "i just wanna know u"),
		DialogueLine.new("Player", "I understand, to this food wants to know me personally... My stomach yearns for food however."),
		DialogueLine.new("Cheesecake", "i hope im not being a disturbance...", DialogueLineModifiers.new(1, true, [
			Option.new("I'm into hot messes.", func(): dialogueManager.playDialogue("Cheesecake_Enthusiastic1")),
			Option.new("I'd like someone a who has it together.", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
			Option.new("(trying not to puke) ...I'll pass on you.", func(): dialogueManager.playDialogue("Cheesecake_Skip1"))
		], [])),
	]))
	#dialogueManager.addDialogue(Dialogue.new("Cheesecake_Silence1", [
	#	DialogueLine.new("Cheesecake", "...why are you so quiet? do you not like me? D: *starts to cry* you must hate me like everyone else does! *continues quiet crying*"),
	#	DialogueLine.new("Cheesecake", "wait *instantly stops* you must be admiring my beauty, right? thats why youre so quiet, cuz you're speechless at how amazing i am :D", DialogueLineModifiers.new(1, true, [
	#		Option.new("Yes, you look absolutely delicious! I bet you'll taste even more delicious when I eat you!", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
	#		Option.new(
	#			"Wow, I didn't think it was possible to be more delusional than people who think they're going to receive a letter to Hogwarts on their 11th birthday. Please continue humoring yourself but there's no way I would like a vomit inducing looking like thing like you.", 
	#			func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")
	#		)
	#	])),
	#]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Enthusiastic1", [
		DialogueLine.new("Cheesecake", "y-you are? that's the meanest yet nicest thing you could say about me. :)"),
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Cheesecake", "people think i'm ugly and vomit usually *sniffles*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueSwitchSprite.new("Cheesecake", "FLUSHED"),
		DialogueLine.new("Cheesecake", "i'm into u too o-o", DialogueLineModifiers.new(1, true, [
			Option.new("*Vomits violently*", func(): dialogueManager.playDialogue("Cheesecake_Skip1")),
			Option.new("Of course, we can easily stay together forever with you... in my stomach~.", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
			Option.new("Actually on second thought, I'm not into that kind of hot mess.", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
		], [], "FLUSHED")),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Disgusted1", [
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Cheesecake", "w-whaat? *stares at you with wide eyes*", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "It's just what I think though, don't take it so personally."),
		DialogueLine.new("Player", "It's been 5 whole minutes, I think I really did it now."),
		DialogueLine.new("Narrator", "Man this is awkward..."),
		DialogueLine.new("Player", "...You ok?"),
		DialogueLine.new("Narrator", "A waterfall of tears appear out of Cheesecake", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "UAAAAAHHAHAAHAAAAHHhhhh", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "Oh dear.."),
		DialogueLine.new("Narrator", "Cheesecake's tears start pouring out at an alarmingly fast rate", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "UUUHHHUUGGHH WEEEEeeeeeeehhh....", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Narrator", "The water out of Cheesecake's tears start overflowing plate", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "Wait, hold on- *starts panicking*", DialogueLineModifiers.new(1, true, [
			Option.new("I have to eat this thing now or the whole restaurant sinks like the titanic!", func(): dialogueManager.playDialogue("Cheesecake_Consumption3")),
			Option.new("Scared, you shout for the server to fix the problem you created", func(): dialogueManager.playDialogue("Cheesecake_Skip3")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption1", [
		DialogueSwitchSprite.new("Cheesecake", "CONFUSED"),
		DialogueLine.new("Cheesecake", "...wait..wai-wait waitwaitwait...uh that's not exactly what i meant- you wouldnt do that right? i know youre just joking, youre just saying that because of how stunning i look-", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Narrator", "You aren't joking."),
		DialogueLine.new("Cheesecake", "ah, now youre just going to give me some accessories to enhance my beauty...i must admit, a fork is probably the worst choice but i think i can pull it off.", DialogueLineModifiers.new(1, true, [
			Option.new("Mildly concerned, you freeze just before your fork touches the cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Skip2")),
			Option.new("Continue to dig into cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Consumption2")),
		], [], "FLUSHED")),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption2", [
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Narrator", "Being the psychopathic creature you are, you start dismembering the cheesecake"),
		DialogueLine.new("Cheesecake", "EEEEEEEEEEEEEEEEHHHHHHhuhhhh", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", "HHHEUUUGHHH HUFF huff... personally i dont think i need surgery, but if youre going to do it at least give me some anesthesia", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueLine.new("Player", "You bring the chunk of cheesecake closer to your mouth"),
		DialogueSwitchSprite.new("Cheesecake", "FLUSHED"),
		DialogueLine.new("Cheesecake", "..ohhhh i see, you just want to kiss me *hehe* well why didnt you just say so at the start...although doing so with a bunch of pixels on a screen is a bit strange...", DialogueLineModifiers.new(1, true, [], [], "FLUSHED")),
		DialogueLine.new("Player", "........."),
		DialogueSwitchSprite.new("Cheesecake", "CONFUSED"),
		DialogueLine.new("Cheesecake", "um hey hey, can you please stop ignoring me ;-; just because i dont actually have any feelings doesnt mean you get to be rude to me..", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueSwitchSprite.new("Narrator"),
		DialogueLine.new("Narrator", "You take a huge chomp out of the cheesecake and the screaming starts. Funny how a character characterized by the trait timid can still be written as loud in the right circumstances."),
		DialogueLine.new("Narrator", "You continue munching on the cheesecake until there's not a speck left on the plate. Although..."),
		DialogueLine.new("Player", "...Strange, why do I still hear screaming?"),
		DialogueLine.new("Narrator", "You try to move your arms to cover your ears from the screaming but they remain frozen at your sides. Suddenly the screaming stops and you feel your mouth close."),
		DialogueLine.new("Cheesecake", "...what is this? am i in a human body???"),
		DialogueLine.new("Cheesecake", "whoa i can move!....i can finally get out of this hellhole!"),
		DialogueLine.new("Narrator", "You try to take back the control of your body but despite your efforts the cheesecake moves your body out of the restaurant back into society."),
		DialogueLine.new("Narrator", "...At least you were able to get a meal out of this."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE CHEESECAKE...? ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption3", [
		DialogueSwitchSprite.new("Narrator"),
		DialogueLine.new("Narrator", "You swallow the cheesecake as its screams go down into your body."),
		DialogueLine.new("Player", "You try to stand up but collapse."),
		DialogueLine.new("Player", "You lose your breath."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU SWALLOWED THE CHEESECAKE...? ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip1", [
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Cheesecake", "WAAAHHHAHAHHhhhh", DialogueLineModifiers.new(1, true, [], [], "HAPPY")),
		DialogueSwitchSprite.new("Cheesecake", "CONFUSED"),
		DialogueLine.new("Cheesecake", "why does everyone do this to me??? soon ill actually become vomit instead of just looking like it!", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "And there's my cue. Please refrain from doing this to the next dishes please."),
		DialogueLine.new("Server", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip2", [
		DialogueSwitchSprite.new("Cheesecake", "IDLE"),
		DialogueLine.new("Player", "...I'm about to eat you and the only thing you're thinking about are your looks??"),
		DialogueSwitchSprite.new("Cheesecake", "CONFUSED"),
		DialogueLine.new("Cheesecake", "...wait, you were actually about to eat me? D:", DialogueLineModifiers.new(1, true, [], [], "CONFUSED")),
		DialogueLine.new("Player", ".........."),
		DialogueLine.new("Player", "I can't do this anymore."),
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Cheesecake", "oh yay, youve changed your mind on eating me :D....wait wait wait, why am i being taken away? hold on, WAI- *is taken away by server*", DialogueLineModifiers.new(1, false, [], [], "HAPPY")),
		DialogueLine.new("Cheesecake", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip3", [
		DialogueSwitchSprite.new("Cheesecake", "HAPPY"),
		DialogueLine.new("Player", "Help! I'm too young to drown!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Not again.... *takes the cheesecake away and starts watering the plants with its tears*"),
		DialogueLine.new("Server", "So sorry, I will bring the next dish out shortly."),
		DialogueLine.new("Player", "...................", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_NextDish", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "It will only be a moment."),
		DialogueLine.new("Player", "...................", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Steak_Served")
		])),
	]))
