extends Node2D

var Count
var total_scores = []

func _ready():
	Count = 1
	Dialogic.start("Interaction_1")
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "timeline_end":
		Count = Count + 1
		print(Count)
		total_scores.append(Dialogic.VAR.Score)
		print(total_scores)
		#append Dialogic.VAR.Score to an array with the index 0-7, corresponding to the score of each interaction
		change_scene()

func change_scene():
	match Count:
		1:
			Dialogic.start("Interaction_1")
		2: 
			#cutscene here
			Dialogic.start("Interaction_2")
		3: 
			#cutscene here
			Dialogic.start("Interaction_3")
		4: 
			#cutscene here
			Dialogic.start("Interaction_4")
		5: 
			#cutscene here
			Dialogic.start("Interaction_5")
		6: 
			#cutscene here
			Dialogic.start("Interaction_6")
		7: 
			#cutscene here
			Dialogic.start("Interaction_7")
		8: 
			#cutscene here
			Dialogic.start("Interaction_8")
		9: 
			get_tree().change_scene_to_file("res://Game.tscn")
