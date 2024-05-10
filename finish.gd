extends CSGBox3D
var held = false
func _on_body_entered(body):
	if body.is_in_group("player"):
			if held == true:
				OS.alert("END")
