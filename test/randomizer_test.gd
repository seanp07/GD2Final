extends CharacterBody3D


const SPEED = 5.0
const JUMP_VELOCITY = 4.5

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")

@onready var w1 = $Head/Camera3D/test_weapon2
@onready var w2 = $Head/Camera3D/test_weapon3

var weapons = [
	w1,
	w2
]

var rng = RandomNumberGenerator.new()
func _ready():
	var random_number = rng.randi_range(0, 1)
	var blaster = weapons[random_number]
	if blaster == w1:
		w1.visible = w1.visible
		w2.visible = !w2.visible
	elif blaster == w2:
		w2.visible = w2.visible
		w1.visible = !w1.visible
	

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y -= gravity * delta

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var input_dir = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction = (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		velocity.z = move_toward(velocity.z, 0, SPEED)

	move_and_slide()
