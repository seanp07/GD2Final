extends CSGCylinder3D

func _on_body_entered(body):
	if body.is_in_group("player"):
		for entity in get_tree().get_nodes_in_group("finish"):
			entity.held = true
