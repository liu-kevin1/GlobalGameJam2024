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
	await get_tree().create_timer(1).timeout
	self.visible = false

func _ready():
	self.visible = true
	pass


	
