extends ColorRect
	
func _process(delta):
	if(Global.FADE_OUT):
		fade_out()
		pass
	if(Global.FADE_IN):
		fade_in()


func fade_out():
	self.visible = true
	Global.FADE_OUT = false
	$AnimationPlayer.play("FadeOut")
	

func fade_in():
	self.visible = true
	Global.FADE_IN = false
	$AnimationPlayer.play("FadeIn")

func _ready():
	pass


	
