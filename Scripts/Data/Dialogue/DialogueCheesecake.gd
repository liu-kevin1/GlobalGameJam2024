class_name DialogueCheesecake
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Served", [
		DialogueLine.new("Server", "\"And here is the cheesecake for you, esteemed customer.\""),
		DialogueLine.new("Cheesecake", "\"uh...um. hi :D\""),
		DialogueLine.new("Cheesecake", "\"..i hope im not being a disturbance...\"", DialogueLineModifiers.new(1, true, [
			Option.new("\"...\"", func(): dialogueManager.playDialogue("Cheesecake_Enthusiastic1")),
			Option.new("\"What a unique way to serve a cheesecake!\"", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
			Option.new("*vomits all over cheesecake* \"...yeah, no thanks.\"", func(): dialogueManager.playDialogue("Cheesecake_Skip1"))
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Silence1", [
		DialogueLine.new("Cheesecake", "\"...why are you so quiet? do you not like me? D:\" *starts to cry* \"you must hate me like everyone else does!\" *continues quiet crying*"),
		DialogueLine.new("Cheesecake", "\"wait\" *instantly stops* \"you must be admiring my beauty, right? thats why youre so quiet, cuz you're speechless at how amazing i am :D\"", DialogueLineModifiers.new(1, true, [
			Option.new("\"Yes, you look absolutely delicious! I bet you'll taste even more delicious when I eat you!\"", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
			Option.new(
				"\"Wow, I didn't think it was possible to be more delusional than people who think they're going to receive a letter to Hogwarts on their 11th birthday. Please continue humoring yourself but there's no way I would like a vomit inducing looking like thing like you.\"", 
				func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")
			)
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Enthusiastic1", [
		DialogueLine.new("Cheesecake", "\"..*gasp* i think i've found the love of my life..you're the first person to use such a positive word for me :)\""),
		DialogueLine.new("Cheesecake", "\"usually others start vomiting all over me just at the first sight of me\" *sniffles*"),
		DialogueLine.new("Cheesecake", "\"can i marry you o-o\"", DialogueLineModifiers.new(1, true, [
			Option.new("*Vomits all over cheesecake*", func(): dialogueManager.playDialogue("Cheesecake_Skip1")),
			Option.new("\"Of course, we can easily stay together forever with you in my stomach.\"", func(): dialogueManager.playDialogue("Cheesecake_Consumption1")),
			Option.new("\"Why? So that my eyes can be burned everyday by your ugliness?\"", func(): dialogueManager.playDialogue("Cheesecake_Disgusted1")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Disgusted1", [
		DialogueLine.new("Cheesecake", "*stares at you with wide eyes*"),
		DialogueLine.new("Player", "You never thought it was possible for someone's..or something's eyes to expand to half the size of it."),
		DialogueLine.new("Player", "Intrigued, you stare silently back at it."),
		DialogueLine.new("Player", "*5 minutes later*"),
		DialogueLine.new("Player", "*feeling uneasy* \"....hello? Did I break you?\""),
		DialogueLine.new("Cheesecake", "*waterfall of tears start pouring out of its eyes*"),
		DialogueLine.new("Player", "\"Oh dear..\""),
		DialogueLine.new("Cheesecake", "*tears start pouring out at an alarmingly fast rate*"),
		DialogueLine.new("Cheesecake", "*tears start overflowing plate*"),
		DialogueLine.new("Player", "\"Wait, hold on-\" *starts panicking*", DialogueLineModifiers.new(1, true, [
			Option.new("At a loss, you decide to shove the cheesecake into your mouth to prevent the restaurant from flooding", func(): dialogueManager.playDialogue("Cheesecake_Consumption3")),
			Option.new("Scared, you shout for the server to fix the problem you created", func(): dialogueManager.playDialogue("Cheesecake_Skip3")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption1", [
		DialogueLine.new("Cheesecake", "\"...wait..wai-wait waitwaitwait...uh that's not exactly what i meant- you wouldnt do that right? i know youre just joking, youre just saying that because of how stunning i look-\""),
		DialogueLine.new("Player", "You take the fork placed on the table"),
		DialogueLine.new("Cheesecake", "\"ah, now youre just going to give me some accessories to enhance my beauty...i must admit, a fork is probably the worst choice but i think i can pull it off.\"", DialogueLineModifiers.new(1, true, [
			Option.new("Mildly concerned, you freeze just before your fork touches the cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Skip2")),
			Option.new("Continue to dig into cheesecake", func(): dialogueManager.playDialogue("Cheesecake_Consumption2")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Consumption2", [
		DialogueLine.new("Player", "Being the psychopathic creature you are, you start dismembering the cheesecake"),
		DialogueLine.new("Cheesecake", "*starts shrieking*"),
		DialogueLine.new("Cheesecake", "*continues shrieking* \"personally i dont think i need surgery, but if youre going to do it at least give me some anesthesia\""),
		DialogueLine.new("Player", "You bring the chunk of cheesecake closer to your mouth"),
		DialogueLine.new("Cheesecake", "\"..ohhhh i see, you just want to kiss me\" *blushes* \"well why didnt you just say so at the start...although doing so with a bunch of pixels on a screen is a bit strange...\""),
		DialogueLine.new("Player", "........."),
		DialogueLine.new("Cheesecake", "\"um hey hey, can you please stop ignoring me ;-; just because i dont actually have any feelings doesnt mean you get to be rude to me..\""),
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
		DialogueLine.new("Cheesecake", "*starts wailing*"),
		DialogueLine.new("Cheesecake", "\"why does everyone do this to me??? soon ill actually become vomit instead of just looking like one!\""),
		DialogueLine.new("Server", "\"And there's my cue. Please refrain from doing this to the next dishes please.\""),
		DialogueLine.new("Server", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip2", [
		DialogueLine.new("Player", "\"...I'm about to eat you and the only thing you're thinking about are your looks??\""),
		DialogueLine.new("Cheesecake", "\"...wait, you were actually about to eat me? D:\""),
		DialogueLine.new("Player", "\"..........\""),
		DialogueLine.new("Player", "\"I can't do this anymore.\""),
		DialogueLine.new("Cheesecake", "\"oh yay, youve changed your mind on eating me :D....wait wait wait, why am i being taken away? hold on, WAI-\" *is taken away by server*"),
		DialogueLine.new("Cheesecake", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_Skip3", [
		DialogueLine.new("Player", "\"Help! I'm too young to drown!\""),
		DialogueLine.new("Server", "\"Not again....\" *takes the cheesecake away and starts watering the plants with its tears*"),
		DialogueLine.new("Server", "\"So sorry, I will bring the next dish out shortly.\""),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_NextDish")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Cheesecake_NextDish", [
		DialogueLine.new("Server", "\"It will only be a moment.\" The server returns to the kitchen, before walking back with a new dish."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Steak_Served")
		])),
	]))
