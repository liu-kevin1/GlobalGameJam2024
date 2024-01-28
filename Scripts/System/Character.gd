# character.gd

# @icon("res://interface/icons/item.png")
class_name Character
extends Node2D

var characterName : String
var characterSprites : Dictionary

func _init(name, sprites):
	# print("Initializing character <%s>..." % name)
	characterName = name
	characterSprites = sprites
