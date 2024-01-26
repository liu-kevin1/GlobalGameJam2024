extends CanvasLayer

const CHAR_READ_RATE = 0.5
@onready var textbox_container : MarginContainer = $TextContainer
@onready var label : Label  = $TextContainer/Panel/MarginContainer/HBoxContainer/Label
var tween : Tween = Tween.new()
var text_queue = []

enum State{
	READY,
	FINISHED
}
func _ready():
	
	queue_text("First Text")
	queue_text("Second Text")
	queue_text("Third Text")
	queue_text("Fourth Text")
	display_text()

func _process(delta):
	if(Input.is_action_just_pressed("ui_accept")):
		hide_textbox()
		if !text_queue.is_empty():
			display_text()
	

func hide_textbox():
	label.text = " "
	textbox_container.hide()

func show_textbox():
	textbox_container.show()

func display_text():
	var next_text = text_queue.pop_front()
	label.text = next_text
	show_textbox()
	tween.tween_property(label,"percent_visible",0.0,1.0)
	tween.tween_interval(len(next_text)*CHAR_READ_RATE)
	
func queue_text(next_text):
	text_queue.push_back(next_text)
	

	
	
	
	

	
