class_name DialogueIntro
extends Node

var dialogueManager : DialogueManager = null


# Intro Scene
# The game transitions into the player picking up a flier for the new restaurant that opened recently. They’re doing a promotional for a free speed-dating and 6 course meal experience.

# Player: …?
# Player: Free food… I guess it wouldn’t hurt to go………..right?

# [Linger a bit on the flier before transitioning out/in]
# The scene transitions to the restaurant with just the server and an empty table.

# Narrator: “You enter a wide, open room. It’s dimly lit with candles at each table.”
# Narrator: “The server brings you to a booth seat sectioned off by elegant red curtains.”
# Narrator: “This place sure is fancy…”

# [The scene is the empty table with the server]
# Server: “Here you are my esteemer guest. As you are aware, tonight is the grand opening of Meat N’ Eet.”
# Server: “We are a new high-end restaurant whom prides itself in top-quality service and a unique experience unlike any other.”
# Server: “As you know, there is a set 6 course meal to pair with your dinning experience.”
# Server: “The first course will be out shortly. Please enjoy.”

# Narrator: “You sit there. Taking in the pleasant atmosphere of the dinning room.”
# Narrator: ”You haven’t left your room in eons.”
# Narrator: “Every once in a while it’s good to get out…”
# Narrator: “Speaking of which, isn’t there supposed to be a date…?”
# Narrator: “Just as you began to wonder where your mysterious date was, the server returns.”
# [Transition to original cheesecake scene]

func _init():
	dialogueManager = DialogueManager.instance
	# print("Initialized DialogueCheesecake")
	dialogueManager.addDialogue(Dialogue.new("IntroScene", [
        DialogueSwitchBackground.new("IntroScene"),
		DialogueSwitchSprite.new("Player"),
		DialogueLine.new("Player", "...?"),
		DialogueLine.new("Player", "Free food... I guess it wouldn't hurt to go..... right?"),
        DialogueSwitchBackground.new("DiningTableBackground"),
		DialogueSwitchSprite.new("Narrator"),
		DialogueLine.new("Narrator", "You enter a wide, open room. It’s dimly lit with candles at each table."),
		DialogueLine.new("Narrator", "The server brings you to a booth seat sectioned off by elegant red curtains."),
		DialogueLine.new("Narrator", "This place sure is fancy..."),
		DialogueSwitchSprite.new("Server"),
		DialogueLine.new("Server", "Here you are, my esteemed guest. As you are aware, tonight is the grand opening of Meat N’ Eet."),
		DialogueLine.new("Server", "We are a new high-end restaurant whom prides itself in top-quality service and a unique experience unlike any other."),
		DialogueLine.new("Server", "As you know, there is a set 6 course meal to pair with your dinning experience."),
		DialogueLine.new("Server", "The first course will be out shortly. Please enjoy."),
        
		DialogueLine.new("Narrator", "You sit there. Taking in the pleasant atmosphere of the dinning room."),
		DialogueLine.new("Narrator", "You haven’t left your room in eons."),
		DialogueLine.new("Narrator", "Every once in a while it’s good to get out..."),
		DialogueLine.new("Narrator", "Speaking of which, isn’t there supposed to be a date..."),
		DialogueLine.new("Narrator", "Just as you began to wonder where your mysterious date was, the server returns.", DialogueLineModifiers.new(1, true, [], [
			func(): dialogueManager.playDialogue("Cheesecake_Served")
		])),
	]))