extends Button

var button = self

func _ready():
	button.connect("pressed", _on_PlayButton_pressed)

#updates the global variable to the selected choice
func _on_PlayButton_pressed():
	print(button.name)
	Global.SELECTED_CHOICE = (button.name).to_int()

#check if a player chooses a option
func _process(delta):
	if(Global.SELECTED_CHOICE != -1):
		delete_self()
	pass

#delete the button
func delete_self():
	get_parent().remove_child(self)
	queue_free()
