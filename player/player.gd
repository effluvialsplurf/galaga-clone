extends CharacterBody2D

# constants 
const SPEED = 900

# exports
@onready var camera := $Camera2D as Camera2D

# this is for if I ever impliment 2player
@onready var action_suffix := ""

# functions
func _physics_process(_delta: float) -> void:
    var xDirection := Input.get_axis("move_left" + action_suffix, "move_right" + action_suffix) * SPEED
    var yDirection := Input.get_axis("move_up" + action_suffix, "move_down" + action_suffix) * SPEED
    velocity.x = move_toward(velocity.x, xDirection, SPEED)
    velocity.y = move_toward(velocity.y, yDirection, SPEED)
    move_and_slide()
