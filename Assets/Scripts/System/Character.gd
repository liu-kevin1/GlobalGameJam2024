# character.gd

# @icon("res://interface/icons/item.png")
class_name Character
extends Node2D

var characterName;
var characterSprites

func _init(name, sprites):
	print("Initializing character <%s>..." % name)
	characterName = name
	characterSprites = sprites
