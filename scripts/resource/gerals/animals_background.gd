extends TextureRect


@onready var eat_timer: Timer = $eat_timer
@onready var progress_food: ProgressBar = %progress_food

@export var incremento: int = 10

func _ready() -> void:
	progress_food.value = 0
	eat_timer.wait_time = 60.0
	eat_timer.start()
	eat_timer.timeout.connect(_on_timer_timeout)


func _on_timer_timeout() -> void:
	progress_food.value = clamp(progress_food.value + incremento, progress_food.min_value, progress_food.max_value)
	update_color(progress_food)


func update_color(progress_bar: ProgressBar):
	if progress_bar.value <= 50:
		progress_bar.self_modulate = Color(0, 1, 0)  # Verde
	elif progress_bar.value <= 75:
		progress_bar.self_modulate = Color(1, 1, 0)  # Amarelo
	else:
		progress_bar.self_modulate = Color(1, 0, 0)  # Vermelho
