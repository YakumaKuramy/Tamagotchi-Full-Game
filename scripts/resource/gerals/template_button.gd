extends Button

func _ready() -> void:
	self.pivot_offset = self.get_size() / 2
	for button in get_tree().get_nodes_in_group("buttons"):
		if not button.pressed.is_connected(self._on_button_pressed.bind(button)):
			button.pressed.connect(self._on_button_pressed.bind(button))


func _on_button_pressed(button: Button) -> void:
	_tween(button, "scale", Vector2(1, 1), Vector2(.9, .9), .2)
	match button.name:
		"button_left":
			GeralSfx.play_sfx(0)
		"button_right":
			GeralSfx.play_sfx(1)
		"button_green":
			GeralSfx.play_sfx(2)
		"button_pink":
			GeralSfx.play_sfx(3)
		"button_white":
			GeralSfx.play_sfx(4)


func _tween(object: Object, property: NodePath, start_val: Variant, end_val: Variant, duration: float) -> void:
	var tween: Tween = get_tree().create_tween()
	tween.tween_property(object, property, end_val, duration)
	tween.tween_property(object, property, start_val, duration)
