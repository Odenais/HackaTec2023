extends CharacterBody2D

var speed := 100
var direccion := 0.0
var jump := 200
const gravity:= 9

# Agrega una referencia a la animación de salto en el AnimationPlayer
@onready var anim := $AnimationPlayer
@onready var sprite := $Sprite2D

func _physics_process(delta):
	direccion = Input.get_axis("ui_left", "ui_right")
	velocity.x = direccion * speed

	# Cambia las animaciones según el estado del personaje
	if is_on_floor():
		if direccion != 0:
			anim.play("walk")
		else:
			anim.play("idle")

		if Input.is_action_just_pressed("ui_up"):
			anim.play("jump")
			velocity.y = -jump # Cambia a -jump para dar un impulso hacia arriba
			
		if Input.is_action_pressed("ui_accept"):
			anim.play("walk")
	else:
		anim.play("jump") # Reproduce la animación de salto mientras el personaje está en el aire
		velocity.y += gravity

	sprite.flip_h = direccion < 0 if direccion != 0 else sprite.flip_h

	move_and_slide() # Agrega la dirección de colisión como Vector2.UP para mejorar el deslizamiento
