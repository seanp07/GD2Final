extends Area3D
var held = false
func _on_body_entered(body):
	if body.is_in_group("player"):
			if held == true:
				get_tree().change_scene_to_file("res://worlds/wr_2.tscn")
