#use this sparingly, try to locally pass data through scenes instead
extends Node

#define global vars below - call global vars with global."var_name"
var SELECTED_CHOICE = -1
var CREDIT_TEXT = ""
var FADE = false
var MAIN_SCENE = preload("res://Scenes/Main/MainGameScene.tscn")
var CREDITS_SCENE = preload("res://Scenes/Main/Credits.tscn")
var MAIN_MENU = preload("res://Scenes/Main/MainMenu.tscn")
