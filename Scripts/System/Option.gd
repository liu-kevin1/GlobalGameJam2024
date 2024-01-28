class_name Option
extends Node

var optionText : String
var optionCall : Callable

func _init(aOptionText : String, aOptionCall : Callable = func(): return):
	optionText = aOptionText
	optionCall = aOptionCall
