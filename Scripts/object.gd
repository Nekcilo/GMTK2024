extends Node2D

var draggable = false
var offset: Vector2
var initialPos: Vector2
var array_of_bodies = [] #added
var occupied: bool

func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("Click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			Global.is_dragging = true
			array_of_bodies.clear()
			
		if Input.is_action_pressed("Click"):
			global_position = get_global_mouse_position()
		elif Input.is_action_just_released("Click"):
			Global.is_dragging = false
			var tween = get_tree().create_tween()
			if not array_of_bodies.is_empty():
				tween.tween_property(self,"position",array_of_bodies.back().position,0.2).set_ease(Tween.EASE_OUT)
				array_of_bodies.clear()
			else:
				tween.tween_property(self,"global_position",initialPos,0.2).set_ease(Tween.EASE_OUT) #NOTE this will add the original body to the array

func _on_area_2d_mouse_entered():
	if not Global.is_dragging:
		draggable = true
		scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited():
	if not Global.is_dragging:
		draggable = false
		scale = Vector2(1, 1)

func _on_area_2d_body_entered(body: StaticBody2D):
	if body.is_in_group('droppable') && occupied == false:
		array_of_bodies.append(body) #ADDED
		body.modulate = Color(Color.html("000000"), 0.5)
		occupied = true
		
	#elif occupied == true:
		#self.position = initialPos

func _on_area_2d_body_exited(body):
	if body.is_in_group('droppable'):
		occupied = false
		array_of_bodies.erase(body) #ADDED
		body.modulate = Color(Color.html("000000"), 0.3)

#func _on_area_2d_body_overlap():
	#if occupied == false:
		#print("Can be placed")
	#elif occupied == true:
		#print("Can't be placed")
