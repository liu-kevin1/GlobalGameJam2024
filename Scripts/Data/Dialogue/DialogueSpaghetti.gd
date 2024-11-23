class_name DialogueSpaghetti
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueSpaghetti")
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_Served", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "This is a dish from our chef's homeland. Please enjoy it."),
		DialogueSwitchSprite.new("Spaghetti"),
		DialogueLine.new("Spaghetti", "Ciao! Come stai? Sembro proprio bene no?"),
		DialogueLine.new("Player", "They weren't kidding, this really is not from here, and it does look good."),
		DialogueLine.new("Spaghetti", "Oh no you understand me..... How long will it be until you know all of my interests too?"),
		DialogueLine.new("Player", "Listen, we met like not even 2 seconds ago and you're already thinking about this?"),
		DialogueLine.new("Spaghetti", "Of course!"),
		DialogueLine.new("Player", "What interests would you even have, you're confined to a plate"),
		DialogueSwitchSprite.new("Spaghetti", "DISGUSTED"),
		DialogueLine.new("Spaghetti", "You can do a lot on a plate...."),
		DialogueLine.new("Player", "I could do a lot right now.....", DialogueLineModifiers.new(1, true, [
			Option.new("Come Mangiare!", func(): dialogueManager.playDialogue("Spaghetti_ConsumptionBranch")),
			Option.new("サンライトイエローオーバードライブ！", func(): dialogueManager.playDialogue("Jojo's")),
			Option.new("Like admiring your color", func(): dialogueManager.playDialogue("Spaghetti_WholesomeBranch")),
			Option.new("Who eats pasta like this in my America", func(): dialogueManager.playDialogue("Spaghetti_Skip")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_ConsumptionBranch", [
		DialogueLine.new("Spaghetti", "UUAAAAAGGGGHHHH.", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Player", "Relax, I just want to eat you."),
		DialogueSwitchSprite.new("Spaghetti", "DISGUSTED"),
		DialogueLine.new("Spaghetti", "Yeah I know what that means, just because you spoke in my language for 2 seconds doesn't make you any less or more understandable."),
		DialogueLine.new("Player", "Are you scared of me?"),
		DialogueSwitchSprite.new("Spaghetti"),
		DialogueLine.new("Spaghetti", "How is food not supposed to be terrified from hearing that!"),
		DialogueLine.new("Player", "Maybe don't scream next time"),
		DialogueLine.new("Spaghetti", "Think about how it would be in my shoes, you wouldn't want to be devoured right?"),
		DialogueLine.new("Player", "I've never been food before, you're absolutely right."),
		DialogueLine.new("Spaghetti", "Would you still eat me then?"),
		DialogueLine.new("Player", "Well I mean ", DialogueLineModifiers.new(1, true, [
			Option.new("Buon Appetito!", func(): dialogueManager.playDialogue("Spaghetti_Consumption2")),
			Option.new("Relax, I was just kidding!", func(): dialogueManager.playDialogue("Spaghetti_FunnyBranch")),
			Option.new("I'd rather not eat fearful food", func(): dialogueManager.playDialogue("Spaghetti_Skip")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_WholesomeBranch", [
		DialogueSwitchSprite.new("Spaghetti", "HAPPY"),
		DialogueLine.new("Spaghetti", "Well thank you..."),
		DialogueLine.new("Player", "The shrimps in you give you such great aesthetic flair as well."),
		DialogueLine.new("Spaghetti", "They just came with me this is just a natural part of me"),
		DialogueLine.new("Player", "Then that is what your natural beauty is."),
		DialogueSwitchSprite.new("Spaghetti", "FLUSHED"),
		DialogueLine.new("Spaghetti", "You're so kind."),
		DialogueLine.new("Player", "I'm just being me when I say this."),
		DialogueSwitchSprite.new("Spaghetti", "HAPPY"),
		DialogueLine.new("Spaghetti", "I will keep being me then."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Spaghetti_Skip")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Jojo's", [
		DialogueSwitchSprite.new("Spaghetti", "CONFUSED"),
		DialogueLine.new("Spaghetti", "What- huh???"),
		DialogueLine.new("Player", "UUUUURRAAAAAAGGGHHHHH"),
		DialogueSwitchSprite.new("Spaghetti", "HAPPY"),
		DialogueLine.new("Spaghetti", "OOOUUUGGGGGHHH"),
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[YOU USED YOUR HAMON TO DESTROY SPAGHETTO]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_FunnyBranch", [
		DialogueSwitchSprite.new("Spaghetti", "DISGUSTED"),
		DialogueLine.new("Spaghetti", "That's such a cruel joke to make in front of someone like me."),
		DialogueLine.new("Player", "hahahahahaha <3"),
		DialogueLine.new("Spaghetti", "You're completely insane"),
		DialogueLine.new("Player", "Tell me something I don't know."),
		DialogueSwitchSprite.new("Spaghetti", "HAPPY"),
		DialogueLine.new("Spaghetti", "H-Hey what are you doing-", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "PUT ME DOOOOWN!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "PUT ME DOOOWN!!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "PUT ME DOOOOOOOWN!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "PUT ME DOWN!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "PUT ME DOOOOOOOOOOOOWN!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "What was that for???"),
		DialogueLine.new("Player", "Just spinning you around and twirling you that's all"),
		DialogueSwitchSprite.new("Spaghetti", "DISGUSTED"),
		DialogueLine.new("Spaghetti", "I hope we meet never"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Spaghetti_Skip")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_Consumption2", [
		DialogueSwitchSprite.new("Spaghetti", "DISGUSTED"),
		DialogueLine.new("Spaghetti", "I KNEW YOU WOULD DO THIS TO ME"),
		DialogueLine.new("Player", "I knew this too surprisingly enough"),
		DialogueLine.new("Narrator", "You begin to twirl your fork into the spaghetti"),
		DialogueSwitchSprite.new("Spaghetti", "HAPPY"),
		DialogueLine.new("Spaghetti", "NOOOoooOO", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "OOooOOOoO", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Spaghetti", "OOOOOoooO", DialogueLineModifiers.new(1, false)),
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Narrator", "You swallow the spaghetti whole"),
		DialogueLine.new("Player", "This isn't half bad, I should really cook this on my own some time!"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE SPAGHETTI ]")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Spaghetti_Skip", [
		DialogueSwitchSprite.new("Spaghetti"),
		DialogueLine.new("Player", "Sorry but you're personally just not that appetizing to me anyway"),
		DialogueLine.new("Spaghetti", "You could even just talk, you know you don't even have to-", DialogueLineModifiers.new(1, false, [], [
			func(): dialogueManager.playDialogue("Starve")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Starve", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Narrator", "The server comes, taking the dish away."),
		DialogueLine.new("Server", "It seems none of our cuisine was to your liking, esteemed customer."),
		DialogueLine.new("Player", "Yeah, none of it really tickled my fancy, you know?"),
		DialogueLine.new("Player", "Anyways, I think I'll be leaving now."),
		DialogueLine.new("Server", "Unfortunately, I cannot let you do that until you eat a dish. But, as you have already refused all the dishes..."),
		DialogueLine.new("Server", "...I suppose we will have to leave you here to starve, then."),
		DialogueLine.new("Player", "Um, sorry, what?"),
		DialogueLine.new("Narrator", "The server rushes out of the restaurant, and all the doors lock. The windows close automatically, and you find yourself unable to get up from your seat."),
		DialogueLine.new("Player", "......So, this is the end? Starving to death in a restaurant?..."),
		DialogueLine.new("Player", "...This sucks."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU STARVED ]")
		]))
	]))



