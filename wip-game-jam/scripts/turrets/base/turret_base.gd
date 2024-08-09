extends Node

@export var movement_speed: float
@export var attack_speed: float
@export var attack_range: int
@export var type: String # 'Melee', 'Ranged', or 'Melee and Ranged'
@export var light_emmisions_range: int
@export var bullet_scene: PackedScene 

var locked_enemy: RigidBody2D


func is_immobile() -> bool:
	return movement_speed == 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func attack() -> void:
	match type:
		'Melee':
			# Play animation, deal damage to enemy
			pass
		'Ranged':
			var bullet = bullet_scene.instantiate()
			# Fire bullet
		'Melee and Ranged':
			# Calculate first whether enemy is in melee range
			pass
