extends Node2D

#static vars
var cut_particle = preload("res://Cooking_Mini_Games/assets/cut_particle.tscn")
var inputs = 0
var pos_1
var steps = 100

#calls when any input is detectecd
#checks for a click and an unclick of the mbl
func _input(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		#print("Pos", event.position)
		
		inputs += 1
		if(inputs==1):
			pos_1 = event.position
		if(inputs==2):
			cut_effect(pos_1, event.position)
			inputs=0
			

#cut animation and proccess
func cut_effect(pos1, pos2):
	var current_pos1 = pos1[0]
	var current_pos2 = pos1[1]
	var delta_x = (pos2[0]+0.0-pos1[0])/steps
	var delta_y = (pos2[1]+0.0-pos1[1])/steps
	var rotate = atan((pos2[1]-pos1[1])/(pos2[0]-pos1[0]))
	
	for i in range(0, steps):
		print(current_pos1)
		var new_particle = cut_particle.instantiate()
		new_particle.position = Vector2(current_pos1, current_pos2)
		new_particle.lifetime = 0.2
		new_particle.process_material.angle_min = rad_to_deg(rotate)
		new_particle.process_material.angle_max = rad_to_deg(rotate)
		add_child(new_particle)
		
		current_pos1 += delta_x
		current_pos2 += delta_y
		
	print("end")



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
