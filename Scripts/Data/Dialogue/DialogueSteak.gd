class_name DialogueSteak
extends Node

var dialogueManager : DialogueManager = null

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueSteak")
	dialogueManager.addDialogue(Dialogue.new("Steak_Served", [
		DialogueLine.new("Server", "Allow us to introduce our finest-cut steak, dear customer."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "Look at me...Perfectly seared - my edges crisp, my flesh rare..."),
		DialogueLine.new("Steak", "A sight truly to behold, once in a lifetime, feast your eyes upon me!"),
		DialogueLine.new("Steak", "Is your mouth watering, try not to drool, it'll ruin your pretty face."),
		DialogueLine.new("Steak", "Tsk, tsk, what will you do?", DialogueLineModifiers.new(1, true, [
			Option.new("*wipes drool off of face* I'm not drooling I swear... you just look so delectable. ", func(): dialogueManager.playDialogue("Steak_Amour1")),
			Option.new("*You ignore the steak, and lay down a napkin on your lap.*", func(): dialogueManager.playDialogue("Steak_Silence1")),
			Option.new("...", func(): dialogueManager.playDialogue("Steak_Silence1")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Skip1", [
		DialogueLine.new("Steak", "Wh-Hey!"),
		DialogueLine.new("Steak", "Don't you want a piece of me?"),
		DialogueLine.new("Steak", "*The steak does a little wiggle, meat juices squirting out as he tries to prompt the player with his promiscuity. It doesn't work.*"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Is there a problem?"),
		DialogueLine.new("Player", "I'd like the next dish, please."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "I'll have you know I'm a flawless force of nature! You can't reject me!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Absolutely, this is getting a little hairy"),
		DialogueSwitchSprite.new("Steak", "DISGUSTED"),
		DialogueLine.new("Steak", "Stop it! Stop! I don't get rejected! I reject the customers here!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "*The server picks up the plate, and you hear the yelling of the steak as it is brought back to the kitchens.*"),
		DialogueLine.new("Server", "", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Pizza_Served")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Skip2", [
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Is there a problem?"),
		DialogueLine.new("Player", "I can't do it... this steak is too perfect..."),
		DialogueLine.new("Player", "They're out of my league! I beg you, bring me another dish!"),
		DialogueSwitchSprite.new("Steak", "HAPPY"),
		DialogueLine.new("Steak", "Muahahaha! I guess I'm too perfect for you... time to go stare at my reflection in a pot!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Understood, dear customer."),
		DialogueLine.new("Narrator", "He takes the laughing steak away."),
		DialogueLine.new("Server", "", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Pizza_Served")
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Steak_Consume1", [
		DialogueLine.new("Narrator", "You pick up your fork and knife"),
		DialogueLine.new("Steak", "Ah, so it's come to this"),
		DialogueLine.new("Steak", "I don't really mind..., After all, I may only have a few hours left before my consciousness fades."),
		DialogueLine.new("Steak", "Speaking of which, what do you do with all your time? In the 12 previous hours, I've learnt 4 languages, found a job, built a family, and accomplished my life goals."),
		DialogueLine.new("Steak", "With what, your several years, what would you even do?"),
		DialogueLine.new("Steak", "All down time? Quite lucky of us to have any."),
		DialogueLine.new("Player", "Living for pursuit of goals means you have not lived."),
		DialogueLine.new("Player", "Perhaps you should have rested when you could have, even for a second."),
		DialogueLine.new("Steak", "But does that even matter now?"),
		DialogueLine.new("Player", "I guess not."),
		DialogueLine.new("Narrator", "You start cutting into the meat.")
		DialogueSwitchSprite.new("Steak", "HAPPY"),
		DialogueLine.new("Steak", "W-wait!"),
		DialogueLine.new("Player", "Huh? I thought you said you didn't mind."),
		DialogueLine.new("Steak", "I don't. But I deserve to be savored by the finest of palettes, digested in the bodies of the most accredited food critics on the planet."),
		DialogueLine.new("Steak", "Not masticated in the slimy mouth of an unknown like you.", DialogueLineModifiers.new(1, true, [
			Option.new("You're right, you're bleeding. I don't want to eat you.", func(): dialogueManager.playDialogue("Steak_Disgust1")),
			Option.new("I'm hungry, deal with it.", func(): dialogueManager.playDialogue("Steak_Consume2")),
			Option.new("...", func(): dialogueManager.playDialogue("Steak_Silence1")),
			Option.new("I'd be absolutely honored if I were to be given the chance to eat you.", func(): dialogueManager.playDialogue("Steak_Amour1")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Consume2", [
		DialogueSwitchSprite.new("Steak", "DISGUSTED"),
		DialogueLine.new("Steak", "Excuse me? Don't treat me like that, I'll have you know I'm a gift from the heavens themselves."),
		DialogueLine.new("Player", "I don't really care..."),
		DialogueLine.new("Steak", "UGH! I deserve better than you! I'm out of your league! I'm the best thing you're ever going to experience! Don't waste me like this!"),
		DialogueLine.new("Player", "......", DialogueLineModifiers.new(1, true, [
			Option.new("*You shrug. You're going to eat this steak if it's the last thing you do.*", func(): dialogueManager.playDialogue("Steak_Consume3")),
			Option.new("*You wrinkle your nose. It kind of looks like a slab of pretty, but raw meat.*", func(): dialogueManager.playDialogue("Steak_Skip1")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Consume3", [
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Narrator", "It screams as you cut it up and put it in your mouth."),
		DialogueLine.new("Narrator", "The steak's essence dissolves in your veins through your throat."),
		DialogueLine.new("Steak", "Wait! Y.... your insolence...!"),
		DialogueLine.new("Player", "*You swallow the last bite.*"),
		DialogueLine.new("Server", "Hello, dear customer. Is everything to your liking?"),
		DialogueLine.new("Narrator", "You feel bile rising in your throat before you can respond."),
		DialogueLine.new("Server", "Are you feeling well?"),
		DialogueLine.new("Player", "I-I think I'm sick..."),
		DialogueLine.new("Narrator", "You collapse, having contracted immediate, intense salmonella from the undercooked steak."),
		DialogueLine.new("Player", "", DialogueLineModifiers.new(1, false, [], [
			func(): dialogueManager.enterCredits("[ YOU GOT SALMONELLA ]")
		]))
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Silence1", [
		DialogueSwitchSprite.new("Steak", "FLUSHED"),
		DialogueLine.new("Steak", "So I've rendered you speechless, then?"),
		DialogueLine.new("Player", "..."),
		DialogueLine.new("Steak", "Yes, that's right. Gorge your vision upon my flawless state of being, my aura of grandiose."),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "I am immortal in my inability to do wrong, my legacy will last for millennia even after I am inevitably ended by forces that cannot contain the strength of my legend."),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Steak", "CONFUSED"),
		DialogueLine.new("Steak", "Do you really have nothing to say?", DialogueLineModifiers.new(1, true, [
			Option.new("...", func(): dialogueManager.playDialogue("Steak_Silence2")),
			Option.new("You're absolutely stunning, I have no words to describe a specimen of your caste.", func(): dialogueManager.playDialogue("Steak_Amour1")),
			Option.new("You're bleeding. I don't wanna eat something with so much blood...", func(): dialogueManager.playDialogue("Steak_Disgust1")),
			Option.new("*You're starving, and you look at the steak with hunger.*", func(): dialogueManager.playDialogue("Steak_Consume1")),
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Silence2", [
		DialogueSwitchSprite.new("Steak", "CONFUSED"),
		DialogueLine.new("Steak", "I see. Not one for words, hm?"),
		DialogueLine.new("Steak", "I'd call you a customer of action, but you're not doing anything particularly interesting - especially with such a luscious piece of meat in front of you."),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "I mean, I've seen slabs of butter with more emotion than you."),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Steak", "FLUSHED"),
		DialogueLine.new("Steak", "I guess not everyone can appreciate a character like mine."),
		DialogueLine.new("Player", "..."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "To the kitchens, server!"),
		DialogueLine.new("Steak", "*The steak makes a wiggling motion that splashes a little of its oils onto the tablecloth. The server arrives promptly.*"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Was there a problem?"),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "This customer can't appreciate my succulence! Take me back to the chef!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "I'm so sorry dear customer, we'll compensate you immediately with another dish."),
		DialogueLine.new("Server", "*The server leaves with the steak.*"),
		DialogueLine.new("Server", "", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Pizza_Served")
		])),
	]))
	dialogueManager.addDialogue(Dialogue.new("Steak_Amour1", [
		DialogueSwitchSprite.new("Steak", "FLUSHED"),
		DialogueLine.new("Steak", "That's more like it... I appreciate your attitude, customer."),
		DialogueLine.new("Steak", "Not everyone can see my beauty and appreciate it."),
		DialogueLine.new("Player", "I'd give anything for a taste of your flesh."),
		DialogueLine.new("Steak", "I wish everyone was like you!"),
		DialogueLine.new("Steak", "You understand me, customer."),
		DialogueLine.new("Steak", "You see a god before your eyes, and you revel in his beauty.", DialogueLineModifiers.new(1, true, [
			Option.new("I would worship you until the end of our days.", func(): dialogueManager.playDialogue("Steak_Amour2")),
			Option.new("You're beautiful, but you're bleeding...", func(): dialogueManager.playDialogue("Steak_Disgust1")),
			Option.new("I can't bear to eat you.", func(): dialogueManager.playDialogue("Steak_Skip2")),
		])),
	]))
	
	dialogueManager.addDialogue(Dialogue.new("Steak_Amour2", [
		DialogueSwitchSprite.new("Steak", "HAPPY"),
		DialogueLine.new("Steak", "Now, I feel like we could have a future together..."),
		DialogueLine.new("Player", "I could get lost in the shine of your char."),
		DialogueSwitchSprite.new("Steak", "FLUSHED"),
		DialogueLine.new("Steak", "You know how to make a piece of meat blush, and that's not rare!"),
		DialogueLine.new("Player", "What can I say? You bring my tender side out."),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "Hm... I think it's time to call for a take-out container. Don't you agree?"),
		DialogueLine.new("Player", "...", DialogueLineModifiers.new(1, false, [
			Option.new("*You stare at the steak, unable to eat it.*", func(): dialogueManager.playDialogue("Steak_Skip2")),
			Option.new("Let's be together forever.", func(): dialogueManager.playDialogue("Steak_Consume3")),
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Steak_Disgust1", [
		DialogueSwitchSprite.new("Steak", "DISGUSTED"),
		DialogueLine.new("Steak", "I am NOT bleeding. Those are simply my sauces."),
		DialogueLine.new("Player", "Your what!?"),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "My meat sauce. Juices. Oils, even, if you will."),
		DialogueLine.new("Narrator", "You look at the shiny reddish-brown liquid, shiny with bubbles of grease.", DialogueLineModifiers.new(1, true, [
			Option.new("Sorry, but that looks a lot like blood to me.", func(): dialogueManager.playDialogue("Steak_Disgust2")),
			Option.new("I guess it doesn't matter in the end.", func(): dialogueManager.playDialogue("Steak_Consume2")),
			Option.new("You're right, I'm so sorry. How can I make it up to you?", func(): dialogueManager.playDialogue("Steak_Amour1")),
		])),
	]))

	dialogueManager.addDialogue(Dialogue.new("Steak_Disgust2", [
		DialogueSwitchSprite.new("Steak", "HAPPY"),
		DialogueLine.new("Steak", "Well?"),
		DialogueLine.new("Player", "Hm..."),
		DialogueSwitchSprite.new("Steak", "DISGUSTED"),
		DialogueLine.new("Steak", "I usually don't have all day to wait, but I suppose I can make an exception for yo-"),
		DialogueLine.new("Player", "It's bright red, do you need medical attention?"),
		DialogueLine.new("Steak", "How DARE you!"),
		DialogueLine.new("Steak", "That's it! I'm done with you!"),
		DialogueLine.new("Steak", "SERVER!!!!!!!!"),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Did you need something, dear customer?"),
		DialogueSwitchSprite.new("Steak"),
		DialogueLine.new("Steak", "Shush! I need you to take me back to the kitchen. Maybe soon I will meet someone who will genuinely appreciate me for what I am worth!"),
		DialogueLine.new("Player", "You should take him to the hospital..."),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "I'll take your consideration into mind, dear customer."),
		DialogueLine.new("Narrator", "The server takes the screaming plate away."),
		DialogueLine.new("Server", "", DialogueLineModifiers.new(1, false, [], [
			func(): dialogueManager.playDialogue("Pizza_Served")
		]))
	]))
