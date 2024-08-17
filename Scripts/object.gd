extends Node2D

var draggable = false
#removed var is_inside_droppable = false
#removed var body_ref
var offset: Vector2
var initialPos: Vector2
var array_of_bodies = [] #added

func _process(delta):
	if draggable:
		if Input.is_action_just_pressed("Click"):
			initialPos = global_position
			offset = get_global_mouse_position() - global_position
			Global.is_dragging = true
			array_of_bodies.clear()
			#ADDED to clear array if the original location was added to the array when using tween back to the initialPos
			
		if Input.is_action_pressed("Click"):
			global_position = get_global_mouse_position()
		elif Input.is_action_just_released("Click"):
			Global.is_dragging = false
			var tween = get_tree().create_tween()
			#Removed if is_inside_droppable: tween.tween_property(self,"position", body_ref.position, 0.2).set_ease(Tween.EASE_OUT)
			#removed else: tween.tween_property(self,"global_position", initialPos, 0.2).set_ease(Tween.EASE_OUT)
			if not array_of_bodies.is_empty(): #ADDED
				tween.tween_property(self,"position",array_of_bodies.back().position,0.2).set_ease(Tween.EASE_OUT) #ADDED
				array_of_bodies.clear() #ADDED
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
	if body.is_in_group('droppable'):
		#removed is_inside_droppable = true
		array_of_bodies.append(body) #ADDED
		body.modulate = Color(Color.html("000000"), 1)
		#removed body_ref = body

func _on_area_2d_body_exited(body):
	if body.is_in_group('droppable'):
		#REMOVED is_inside_dropable = false
		array_of_bodies.erase(body) #ADDED
		body.modulate = Color(Color.html("000000"), 0.7)
