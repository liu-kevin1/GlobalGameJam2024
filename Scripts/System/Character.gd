# character.gd

# @icon("res://interface/icons/item.png")
class_name Character
extends Node2D

var characterName : String
var characterSprites : Dictionary
var characterNickname : String
var characterAudio : Dictionary

func _init(name, sprites, nickname="", audio={}):
	if not sprites.has("IDLE"):
		print("Warning: Sprite <%s> does not have an IDLE sprite, which is required.", name)
	# print("Initializing character <%s>" % name)
	characterName = name
	characterSprites = sprites
	characterNickname = nickname
	characterAudio = audio

	# Initialize more sprites using IDLE as a reference
	var spriteNames = [
		"BLINK",
		"FLUSHED",
		"DISGUSTED",
		"CONFUSED",
		"HAPPY"
	]
	for spriteName in spriteNames:
		if not characterSprites.has(spriteName):
			characterSprites[spriteName] = characterSprites.IDLE
