extends CharacterBody2D

@export var SPEED = 200

func _process(delta):
	var new_direction = Vector2()
	if Input.is_action_pressed("MOVE_DOWN"):
		new_direction.y += 1
	if Input.is_action_pressed("MOVE_UP"):
		new_direction.y += -1
	if Input.is_action_pressed("MOVE_RIGHT"):
		new_direction.x += 1
	if Input.is_action_pressed("MOVE_LEFT"):
		new_direction.x += -1
	velocity = new_direction.normalized() * SPEED
	move_and_slide()
