# character.gd

# @icon("res://interface/icons/item.png")
class_name Character
extends Node2D

var characterName : String
var characterSprites : Dictionary
var characterNickname : String

func _init(name, sprites, nickname=""):
	print("Initializing character <%s>" % name)
	characterName = name
	characterSprites = sprites
	characterNickname = nickname
