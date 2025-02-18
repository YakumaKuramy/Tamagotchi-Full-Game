extends AnimatedSprite2D

class_name Cat

@onready var timer_meow: Timer = $timer_meow
@onready var timer_eat: Timer = $timer_eat
@onready var fx_meow: AudioStreamPlayer = $fx_meow


func _on_animation_changed() -> void:
	match animation:
		"dead":
			offset = Vector2(0, -120)
		"idle":
			offset = Vector2(40, -55)
		"play":
			offset = Vector2(0, -115)
		"sad":
			offset = Vector2(20, -30)
		"meow":
			offset = Vector2(0, -120)
