class_name DialogueSashimi
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueSashimi")
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Served", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Behold, our only and best selection of raw fish"),
		DialogueLine.new("Server", "Hopefully the addons are to your liking."),
		DialogueLine.new("Server", "We went through heaven and hell collecting the finest ingredients"),
		DialogueLine.new("Server", "We hope you will enjoy this delectable dish of sushi."),
		DialogueSwitchSprite.new("Sashimi"),
		DialogueLine.new("Sashimi", "Oh its you . . . As they say, the day will always return."),
		DialogueLine.new("Player", "Huh, I have never met you nor eaten sushi before."),
		DialogueSwitchSprite.new("Sashimi", "HAPPY"),
		DialogueLine.new("Sashimi", "Well you haven't lived a good life haven't you?"),
		DialogueLine.new("Player", "What?"),
		DialogueLine.new("Sashimi", "Alone at the top or groveling at the bottom, which are you?"),
		DialogueLine.new("Player", "Huh -", DialogueLineModifiers.new(1, true, [
			Option.new("Whatever - I'm just going to eat you.", func(): dialogueManager.playDialogue("Sashimi_Option1")),
			Option.new("Are you ok?", func(): dialogueManager.playDialogue("Sashimi_Option2")),
			Option.new("You are insane, I'm going to have to pass, ruining my appetite looking ah", func(): dialogueManager.playDialogue("Sashimi_Option3")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Option1", [
		DialogueSwitchSprite.new("Sashimi", "DISGUSTED"),
		DialogueLine.new("Sashimi", "All you people just consume! Never to stop and ponder about the limitless possibilities."),
		DialogueLine.new("Sashimi", "Many say after WWIII, humanity will come together, if they still exist, and prosper beyond our current visions. However, just looking at you, all I see is history repeating itself again."),
		DialogueLine.new("Player", "Whoa a bit dark reall-"),
		DialogueLine.new("Sashimi", "And you are just going to forget after consuming. Pleasure, such a poison to humans. Never ending hunger for more. What will you do after consuming me? Will you remember me? In fact, how much do you even remember about your  past? Probably miniscule to the amount you've consumed.", DialogueLineModifiers.new(1, true, [
			Option.new("Eat the sushi to make it shut up", func(): dialogueManager.playDialogue("Sashimi_ShinjiChairMoment")),
			Option.new("Ponder on the said statements", func(): dialogueManager.playDialogue("Sashimi_Ponder")),
			Option.new("That's not true...", func(): dialogueManager.playDialogue("Sashimi_Love"))
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_ShinjiChairMoment", [
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Player", "..................."),
		DialogueLine.new("Player", "..................."),
		DialogueLine.new("Player", "..................."),
		DialogueLine.new("Player", "Quite mid, really."),
		DialogueSwitchSprite.new("ShinjiChair"),
		DialogueLine.new("ShinjiChair", ""),
		DialogueLine.new("ShinjiChair", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU SUFFER FROM GUILT ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Ponder", [
		DialogueSwitchSprite.new("Sashimi"),
		DialogueLine.new("Player", "And what do you propose for me to do?"),
		DialogueLine.new("Sashimi", "Nothing, for it's just human nature."),
		DialogueLine.new("Player", "Then why should we writhe in pain in a future you cannot prevent."),
		DialogueLine.new("Sashimi", "..."),
		DialogueLine.new("Player", "Perhaps, you should ponder you own pessimistic outlook.", DialogueLineModifiers.new(1, true, [
			Option.new("ANYwhose, NOM", func(): dialogueManager.playDialogue("Sashimi_ShinjiChairMoment")),
			Option.new("Skip", func(): dialogueManager.playDialogue("Sashimi_Skip"))
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Love", [
		DialogueLine.new("Player", "You know something?"),
		DialogueSwitchSprite.new("Sashimi", "CONFUSED"),
		DialogueLine.new("Sashimi", "What?"),
		DialogueLine.new("Player", "That raw fish on you looks really stylish"),
		DialogueSwitchSprite.new("Sashimi", "FLUSHED"),
		DialogueLine.new("Sashimi", "O-oh does it now?"),
		DialogueLine.new("Player", "Yeah it makes you incredibly appealing", DialogueLineModifiers.new(1, true, [
			Option.new("I might just take you home...", func(): dialogueManager.enterCredits("[ YOU LOVE SUSHI >~< ]")),
			Option.new("Not appealing enough though", func(): dialogueManager.playDialogue("Sashimi_Skip"))
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Skip", [
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Player", "Now get off the table."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Sashimi_NextDish")
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_NextDish", [
		DialogueLine.new("Player", "Please rid me of this guy."),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "I'll collect that, then."),
		DialogueLine.new("Narrator", "The server comes over to retrieve the dish, heading back into the kitchen."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("PrimeRib_Served")
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Option2", [
		DialogueSwitchSprite.new("Sashimi", "FLUSHED"),
		DialogueLine.new("Sashimi", "What type of question is that? Of course I'm fine"),
		DialogueLine.new("Player", "Quite the pessimistic worldview don't you think."),
		DialogueLine.new("Sashimi", "Well, when you're talking sushi, what other options do I have?"),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Sashimi", "HAPPY"),
		DialogueLine.new("Sashimi", "Look, consumption and short term enjoyments are ok. I just get pissed looking at the state of life."),
		DialogueLine.new("Sashimi", "Perhaps I just need to tell someone. Hopefully you enjoyed my little rant.", DialogueLineModifiers.new(1, true, [
			Option.new("Eat", func(): dialogueManager.playDialogue("Sashimi_ShinjiChairMoment")),
			Option.new("Pass", func(): dialogueManager.playDialogue("Sashimi_NextDish"))
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Sashimi_Option3", [
		DialogueSwitchSprite.new("Sashimi", "DISGUSTED"),
		DialogueLine.new("Sashimi", "You know what. YOU are definitely part of the problem. You should-"),
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Narrator", "You throw the plate Sushi is on across the room."),
		DialogueLine.new("Server", "Please don't do that, the fine china costs money."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Sashimi_NextDish")
		]))
	]))


