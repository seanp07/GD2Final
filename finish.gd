extends Area3D
var held = false
func _on_body_entered(body):
	if body.is_in_group("player"):
			if held == true:
				if "wr_2" in get_tree().current_scene.name:
					get_tree().change_scene_to_file("res://worlds/wr_3.tscn")
				elif "wr_3" in get_tree().current_scene.name:
					get_tree().change_scene_to_file("res://worlds/wr_4.tscn")
				elif "wr_4" in get_tree().current_scene.name:
					get_tree().change_scene_to_file("res://worlds/wr_5.tscn")
				elif "wr1" in get_tree().current_scene.name:
					get_tree().change_scene_to_file("res://worlds/wr_2.tscn")
				else:
					OS.alert("You won!")
					get_tree().quit()
