class_name DialoguePrimeRib
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	#crap
	# print("Initialized DialoguePrimeRib")
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Served", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "This is one of our finest dishes ever cooked up; a delectable dinner in a bite sized chunk.", DialogueLineModifiers.new(0.5)),
		DialogueSwitchSprite.new("PrimeRib"),
		DialogueLine.new("PrimeRib", "Certainly not the most elegant of ways that I have been introduced. Perhaps I should have tried my luck at a different restaurant; the service here is mediocre.", DialogueLineModifiers.new(1)),
		DialogueLine.new("Player", "Mediocre? I thought that was pretty formal.", DialogueLineModifiers.new(1)),
		DialogueLine.new("PrimeRib", "Anyways, I suppose I'm here now. What do you want with me, commoner?", DialogueLineModifiers.new(1, true, [
			Option.new("I want to get to know you.", func(): dialogueManager.playDialogue("PrimeRib_Consumption1")),
			Option.new("You don't seem like a delectable dinner nor date to me.", func(): dialogueManager.playDialogue("PrimeRib_Honest1")),
			Option.new("Are you always this small?", func(): dialogueManager.playDialogue("PrimeRib_Curious1")),
			Option.new("Hard pass. Yikes.", func(): dialogueManager.playDialogue("PrimeRib_Skip1"))
		]))
	]))
	
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Consumption1", [
		DialogueLine.new("PrimeRib", "Oh? You think you're worthy of getting to know me? Hm."),
		DialogueSwitchSprite.new("PrimeRib", "DISGUSTED"),
		DialogueLine.new("PrimeRib", "FOOL! YOU ABSOLUTE BUFFOON!"),
		DialogueLine.new("PrimeRib", "I'll have you know, I have seventeen separate doctorates, all in different fields!"),
		DialogueLine.new("Player", "....Sure.", DialogueLineModifiers.new(0.2)),
		DialogueSwitchSprite.new("PrimeRib", "HAPPY"),
		DialogueLine.new("PrimeRib", "Indeed! I am an esteemed scholar in all of the fields, too. I'd be more surprised if somebody DIDN'T know me at any of the local research convention, honestly."),
		DialogueLine.new("Player", "...How is this related to getting to know you better"),
		DialogueSwitchSprite.new("PrimeRib"),
		DialogueLine.new("PrimeRib", "Bah! What a foolish question, befitting a narrow-brained person like you. Of course it is! Though, not for you. My intelligence would go to waste on a specimen such as yourself."),
		DialogueLine.new("Player", "That's so harsh....", DialogueLineModifiers.new(0.2, true, [
			Option.new("Actually, I think I want to learn about you even more now.", func(): dialogueManager.playDialogue("PrimeRib_Consumption2")),
			Option.new("I suppose I wouldn't be fit for you, then...", func(): dialogueManager.playDialogue("PrimeRib_Curious2")),
			Option.new("What traits would I need in order to be worthy?", func(): dialogueManager.playDialogue("PrimeRib_Curious2"))
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Consumption2", [
		DialogueSwitchSprite.new("PrimeRib", "DISGUSTED"),
		DialogueLine.new("PrimeRib", "Foolish fool! You fool! Hey- Get your eating utensils away from my magnificent form!"),
		DialogueLine.new("Player", "I didn't even move them, though?"),
		DialogueLine.new("PrimeRib", "You lie. I can see it in your eyes- you hunger for the flesh of a highly intelligent being such as myself."),
		DialogueLine.new("Player", "You reach for the fork and knife."),
		DialogueLine.new("PrimeRib", "AHHH! I knew it! I called it, I knew it, I said it! You've shown your true intentions!!"),
		DialogueLine.new("Player", "You begin wiping off your utensils with your napkin."),
		DialogueLine.new("PrimeRib", "....A-ah, but you see, I knew you were actually going to do that instead of eat me! So, it seems you honor my intelligence, then?"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [
			Option.new("Plunge your fork into the prime rib.", func(): dialogueManager.playDialogue("PrimeRib_Consumption3")),
			Option.new("Decide not to eat them.", func(): dialogueManager.playDialogue("PrimeRib_Skip1"))
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Consumption3", [
		DialogueLine.new("Player", "You take your fork, positioning above the tiny chunk of prime rib."),
		DialogueLine.new("PrimeRib", "According to my calculations, you will not-"),
		DialogueLine.new("Player", "And you stab straight down, into the center of the piece of meat."),
		DialogueLine.new("PrimeRib", "UUUAAAAUAUAUUAUAUAAEEAAEEAAWEWAAAAAAGH!!!!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("PrimeRib", "YEEEEEOOOOOOWWWCCHH!!!! AAEAEOAEOOAEOAE!!!!!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("PrimeRib", "AAAAAAAAAEEEEEEEIIIIIII!!!!!!!!!!!!", DialogueLineModifiers.new(1, false)),
		DialogueLine.new("Player", "Stop squirming."),
		DialogueLine.new("Player", "You tighten your grip on your fork, before lifting it up to your mouth."),
		DialogueLine.new("PrimeRib", "W-wait! Please, we can talk this through!"),
		DialogueLine.new("Player", "You continue ferrying the delicious hunk of rib to your incisors."),
		DialogueLine.new("PrimeRib", "Noooo!! I don't want to die!!! I still have so much to reseeeaaaaaarch-"),
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Player", "You bite down on the meat, sliding your fork out of your mouth."),
		DialogueLine.new("PrimeRib", "- muffled screaming -"),
		DialogueLine.new("Narrator", "You chew happily on the meat. The flavor is delightful, and the texture is just right. Simply an incredible dish."),
		DialogueLine.new("Narrator", "You continue chewing for a while longer, before realizing that it seems a bit too juicy. It tastes a bit bloody, even."),
		DialogueLine.new("Narrator", "...Was it raw? Wait, does that explain why it was so soft?!"),
		DialogueLine.new("Narrator", ".........Ah, oh well. What's done is done.", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.enterCredits("[ YOU ATE THE... RAW PRIME RIB? ]")
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Honest1", [
		DialogueLine.new("PrimeRib", "Honestly, I'm not quite sure how to feel about that. A peasant like you doesn't view me as something worth eating. On one hand, it's great in that I won't be eaten by the likes of you, but on the other, it makes me feel like I've lost as food..."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [
			Option.new("You just don't seem very appetizing."),
			Option.new("I... I think I'd like a different dish.", func(): dialogueManager.playDialogue("PrimeRib_Skip1")),
			Option.new("Well, to each their own.")
		])),
		DialogueLine.new("PrimeRib", "...Well. What a boorish and and boring statement. Don't you have anything better to say? Hm?"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [
			Option.new("Stay silent."),
			Option.new("I think I want another dish", func(): dialogueManager.playDialogue("PrimeRib_Skip1")),
			Option.new("Look at the prime rib with a disapproving glare.")
		])),
		DialogueSwitchSprite.new("PrimeRib", "CONFUSED"),
		DialogueLine.new("PrimeRib", "...Hey. Why are you like that, all of a sudden?"),
		DialogueLine.new("Player", "You continue with your action. The prime rib seems more and more on edge from this."),
		DialogueLine.new("PrimeRib", "What are you plotting, huh? Think I can't see your thoughts behind that conniving gaze?"),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [
			Option.new("Change dishes.", func(): dialogueManager.playDialogue("PrimeRib_Skip1")),
			Option.new("Take a bite out of the prime rib.", func(): dialogueManager.playDialogue("PrimeRib_Consumption3"))
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Curious1", [
		DialogueSwitchSprite.new("PrimeRib", "CONFUSED"),
		DialogueLine.new("PrimeRib", "What? Is there a problem? All I'm seeing is that I'm refined goodness. None of that useless additional mass, which also gives me a smaller hitbox. You should know that much, at least."),
		DialogueLine.new("Player", "Smaller... hitbox? Well, it sounds right, but..."),
		DialogueLine.new("PrimeRib", "You're shaming me like I'm compensating for something..."),
		DialogueLine.new("Player", "Can you really blame me? That was a really nerdy thing you just said"),
		DialogueLine.new("Player", "And it's not like I'm shaming you, I just expected something bigger. Dork."),
		DialogueLine.new("PrimeRib", "DON'T CALL ME A DORK"),
		DialogueLine.new("PrimeRib", "I clearly have more worth than that"),
		DialogueLine.new("Player", "...", DialogueLineModifiers.new(1, true, [
			Option.new("Worthy of my stomach...", func(): dialogueManager.playDialogue("PrimeRib_Consumption1")),
			Option.new("Am I worthy of eating you?", func(): dialogueManager.playDialogue("PrimeRib_Curious2")),
			Option.new("Am I worthy even worthy of you?", func(): dialogueManager.playDialogue("PrimeRib_Love"))
			
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Curious2", [
		DialogueSwitchSprite.new("PrimeRib", "HAPPY"),
		DialogueLine.new("PrimeRib", "Hm. For somebody to be worthy of eating me... They'd need at least twenty different papers, all published in separate fields. At least that much, anyways. Past that, hm..."),
		DialogueLine.new("Narrator", "The Prime Rib appears to be lost in thought."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [
			Option.new("Take this opportunity and POUNCE.", func(): dialogueManager.playDialogue("PrimeRib_Consumption3"))
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Skip1", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Narrator", "The server comes over, and he takes the plate of prime rib away."),
		DialogueLine.new("PrimeRib", "Ha! It seems that I am too much for you to handle, after all."),
		DialogueLine.new("Server", "I will be right back with your next dish."),
		DialogueLine.new("Player", ".........", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Spaghetti_Served")
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("PrimeRib_Love", [
		DialogueLine.new("PrimeRib", "I'm not sure what you mean when you would say you are worthy of me"),
		DialogueLine.new("Player", "I mean am I worthy of your company my dearest meat"),
		DialogueLine.new("Player", "My meatness"),
		DialogueSwitchSprite.new("PrimeRib", "HAPPY"),
		DialogueLine.new("PrimeRib", "That is certainly not a word in my lexicon but I take that as a compliment"),
		DialogueLine.new("Player", "How could I possibly eat something as elegant and posh as this!"),
		DialogueSwitchSprite.new("PrimeRib", "FLUSHED"),
		DialogueLine.new("PrimeRib", "Would you kiss my meat?"),
		DialogueLine.new("Player", "Please don't say it like that."),
		DialogueLine.new("Player", "But yes I would let you"),
		DialogueSwitchSprite.new("PrimeRib", "HAPPY"),
		DialogueLine.new("Narrator", "Juice oozes out of the prime rib"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Your next course is ready sir.", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Spaghetti_Served")
		]))
	]))
