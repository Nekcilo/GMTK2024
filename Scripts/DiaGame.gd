extends Node2D

var Count

func _ready():
	Count = 1
	print("Dialogue game, Start!")
	#Dialogic.start("Interaction_1")
	Dialogic.signal_event.connect(_on_dialogic_signal)

func _on_dialogic_signal(argument:String):
	if argument == "timeline_end":
		Count = Count + 1
		print(Count)
		#appends Dialogic.VAR.Score to an array with the index 0-7, corresponding to the score of each interaction
		Global.total_scores.append(Dialogic.VAR.Score)
		print(Global.total_scores)
		change_scene()

func change_scene():
	match Count:
		#0:
			#Opening Cutscene
			#print("Opening Cutscene")
		1:
			#Moon Phase 1
			print("Moon Phase 1")
			Dialogic.start("Interaction_1")
		2: 
			#Moon Phase 2
			print("Moon Phase 2")
			Dialogic.start("Interaction_2")
		3: 
			#Moon Phase 3
			print("Moon Phase 3")
			Dialogic.start("Interaction_3")
		4: 
			#Moon Phase 4
			print("Moon Phase 4")
			Dialogic.start("Interaction_4")
		5: 
			#Moon Phase 5
			print("Moon Phase 5")
			Dialogic.start("Interaction_5")
		6: 
			#Moon Phase 6
			print("Moon Phase 6")
			Dialogic.start("Interaction_6")
		7: 
			#Moon Phase 7
			print("Moon Phase 7")
			Dialogic.start("Interaction_7")
		8: 
			#Moon Phase 8
			print("Moon Phase 8")
			Dialogic.start("Interaction_8")
		9: 
			#Moon Cycle Complete!
			print("Moon Cycle Complete!")
			get_tree().change_scene_to_file("res://Game.tscn")
