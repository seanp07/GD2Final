extends CharacterBody3D

@onready var dmg_area = $DamageArea
@onready var atk_area = $AttackArea
@onready var nav_agent = $NavigationAgent3D
@onready var head = $DamageArea

var weapons = [
	preload("res://test/test_weapon2.tscn"),
	preload("res://test/test_weapon3.tscn")
]


func _ready():
	randomize()
	var x = randi() % weapons.size()
	var scene = weapons[x].instantiate()
	add_child(scene)
	scene.position = Vector3(-0.292, 0.571, 0.556)

