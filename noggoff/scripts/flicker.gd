extends Control

signal flicked(vec:Vector2)

var is_following_mouse :bool= false
var hovering :bool =false
var anchor: Vector2

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	visible = true

func _input(event: InputEvent) -> void:

	if event is InputEventMouseButton:
		if (hovering):
			if event.button_index == 1 and event.is_pressed():
				is_following_mouse = true
			elif event.button_index == 1 and not event.is_pressed():
				flick()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_following_mouse:
		global_position =get_viewport().get_mouse_position()
		


func _on_mouse_entered() -> void:
		
	hovering = true
	visible = true
	print("hover")


func _on_mouse_exited() -> void:
	hovering = false

	position = Vector2(0,0)
#	visible = false

func flick():
	is_following_mouse = false
	
	print(anchor)
	print(position)


	var dir : Vector2 = -position

	position = Vector2(0,0)
	
	flicked.emit(dir)
