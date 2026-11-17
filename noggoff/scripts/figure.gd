extends CharacterBody2D


@onready var Flicker = $Flicker

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

var direction :Vector2= Vector2.ZERO


func _ready() -> void:
	Flicker.flicked.connect(move)


func _physics_process(delta: float) -> void:

	
	velocity = direction * SPEED
	direction = Vector2.ZERO


	move_and_slide()

func  move(vec: Vector2)-> void:
	direction = vec