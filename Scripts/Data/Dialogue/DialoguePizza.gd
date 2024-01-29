class_name DialoguePizza
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	print("Initialized DialoguePizza")
	dialogueManager.addDialogue(Dialogue.new("Pizza_Served", [
		DialogueLine.new("Server", "\"Please enjoy our local cuisine; the New York Pizza.\""),
		DialogueLine.new("Pizza 1", "\"Hello!\"", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Pizza 2", "\"Hi....\""),
		DialogueLine.new("Player", "\"Sir? I believe you gave me two of these?\""),
		DialogueLine.new("Server", "\"What are you talking about it's just a pizza I meannnnn\""),
		DialogueLine.new("Pizza 1", "\"Yeah!\""),
		DialogueLine.new("Pizza 2", "\"Shoulda read what it said on the menu...\""),
		DialogueLine.new("Player", "\"Don't be snarky with me Pizza.\""),
		DialogueLine.new("Pizza 1", "\"I wasn't being snarky!!\""),
		DialogueLine.new("Player", "\"Not you, I'm talking about the other Pizza\""),
		DialogueLine.new("Pizza 2", "\"So what?\""),
		DialogueLine.new("Player", "\"I don't know how to talk to you guys.\"", DialogueLineModifiers.new(1, true, [
			Option.new("\"Maybe I should put your brother in his place\"", func(): dialogueManager.playDialogue("Pizza_ConsumptionP1")),
			Option.new("\"You're going down the hatch.\"", func(): dialogueManager.playDialogue("Pizza_ConsumptionP2")),
			Option.new("\"But you guys are so adorable looking together.\"", func(): dialogueManager.playDialogue("Pizza_Wholesome")),
			Option.new("\"This pizza is not like the real thing.\"", func(): dialogueManager.playDialogue("Pizza_Skip")),
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_Skip", [
		DialogueLine.new("Server", "\"Please give us just a moment while we prepare the next dish.\" The server strolls back into the kitchen before coming back, holding a delicate platter."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Sashimi_Served")
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_ConsumptionP1", [
		DialogueLine.new("Pizza 1", "\"WHY ME??\""),
		DialogueLine.new("Player", "\"I just don't like loudmouths at my table\""),
		DialogueLine.new("Pizza 1", "\"My brother was the one who was snarky with you though!!\""),
		DialogueLine.new("Pizza 2", "\"I get the last laugh...\""),
		DialogueLine.new("Player", "\"I spare you for now but you better pray that I'm still not hungry\""),
		DialogueLine.new("Pizza 1", "\"PLEEEEEEAAAAAHHHHHHEEEEEEEAAAASSSSSEEEEE\"", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Player", "You slowly lift up the pizza with your hands"),
		DialogueLine.new("Pizza 1", "\"You OBVIOUSLY have no morals do you!!\""),
		DialogueLine.new("Player", "\"Yeah hunger is my moral but you're still just too loud\""),
		DialogueLine.new("Pizza 2", "\"Get him please....\""),
		DialogueLine.new("Player", "\"uhhh\"", DialogueLineModifiers.new(1, true, [
			Option.new("\"Alright then\"", func(): dialogueManager.playDialogue("Pizza_ConsumptionP12")),
			Option.new("\"On second thought....\"", func(): dialogueManager.playDialogue("Pizza_ConsumptionP22")),
			Option.new("\"Not really any appetite right now...\"", func(): dialogueManager.playDialogue("Pizza_Skip")),
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_ConsumptionP12", [
		DialogueLine.new("Pizza 1", "\"NOOOOO\""),
		DialogueLine.new("Pizza 2", "\"serves you right.\""),
		DialogueLine.new("Player", "You begin to chomp on the Pizza as their cheese begins to extend off of them"),
		DialogueLine.new("Pizza 2", "\"nice.\""),
		DialogueLine.new("Player", "\"You're not horrified by this?\""),
		DialogueLine.new("Pizza 2", "\"not really, he was kinda getting on my nerves and you just did me a big favor.\""),
		DialogueLine.new("Player", "\"It's a win-win then\""),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE HOT HEADED PIZZA ]")
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_ConsumptionP2", [
		DialogueLine.new("Pizza 2", "\"I'm not scared of you\""),
		DialogueLine.new("Player", "\"Well you should be.\""),
		DialogueLine.new("Pizza 2", "\"oh my goooooddd....\""),
		DialogueLine.new("Player", "The Pizza sauce splats on the plate as you devour the slice within seconds."),
		DialogueLine.new("Pizza 1", "\"MY OWN BROTHER NOOOO\""),
		DialogueLine.new("Player", "\"That's a wrap on that one hahahaha\""),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE CHILL PIZZA ]")
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_ConsumptionP22", [
		DialogueLine.new("Pizza 2", "\"oh well.....\""),
		DialogueLine.new("Player", "\"See you in the oven\""),
		DialogueLine.new("Pizza 1", "*starts crying*"),
		DialogueLine.new("Player", "you crunch on the harder crust of the Pizza, somehow eating it backwards"),
		DialogueLine.new("Pizza 1", "Not only did you eat him but you ate him... the wrong way...."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE CHILL PIZZA, BUT IN THE WRONG WAY]")
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Pizza_Wholesome", [
		DialogueLine.new("Player", "\"You two are a genuine cuteness overload\""),
		DialogueLine.new("Pizza 1", "\"THANK YOU!\""),
		DialogueLine.new("Pizza 2", "\"please don't be so louud...\""),
		DialogueLine.new("Player", "\"I want to keep you two on my plate until you get cold!\""),
		DialogueLine.new("Pizza 1", "\"It's not like me being cold matters anyway!\""),
		DialogueLine.new("Pizza 2", "\"Yeah we don't even have a perception for that.\""),
		DialogueLine.new("Player", "\"I never knew that my food couldn't feel the temperature!\""),
		DialogueLine.new("Pizza 1", "\"THANK YOU FOR YOUR KIND WO-\" (autoskip"),
		DialogueLine.new("Pizza 2", "\"shut up.....\""),
		DialogueLine.new("Player", "You decide to spare the pizzas"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Pizza_Skip")
		])),
	]))


