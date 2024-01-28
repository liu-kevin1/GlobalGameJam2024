extends ColorRect


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if(Global.FADE == true):
		self.visible = true
		fade()
		Global.FADE = false

func fade():
	$AnimationPlayer.play("Fade")
