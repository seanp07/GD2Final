extends Node3D


var packed_scene = [
	preload("res://test/minigun_player.tscn"),
	preload("res://player versions/player_rpg.tscn"),
	preload("res://player versions/player_rifle.tscn"),
	preload("res://player versions/player_pistol.tscn"),
	preload("res://player versions/player_revolver.tscn"),
	preload("res://test/p90_player.tscn")
]

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	var x = randi() % packed_scene.size()
	var scene = packed_scene[x].instantiate()
	add_child(scene)
	scene.position = Vector3(0, 2, 0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

