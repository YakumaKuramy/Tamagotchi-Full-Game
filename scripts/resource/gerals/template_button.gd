extends Button

func _ready() -> void:
	for button in get_tree().get_nodes_in_group("buttons"):
		if not button.pressed.is_connected(self._on_button_pressed.bind(button)):
			button.pressed.connect(self._on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	match button.name:
		"button_left":
			GeralSfx.play_sfx(3)
		"button_right":
			GeralSfx.play_sfx(2)
