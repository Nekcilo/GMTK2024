extends StaticBody2D

var occupied: bool = false

func _ready():
	modulate = Color(Color.html("000000"), 0.3)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Global.is_dragging:
		visible = true
	else:
		visible = false
