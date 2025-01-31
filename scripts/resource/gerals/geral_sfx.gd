extends AudioStreamPlayer

var sfx: Array = [
	preload("res://assets/audio/ui_sound_effects/Abstract1.ogg"), # 0
	preload("res://assets/audio/ui_sound_effects/Abstract2.ogg"), # 1
	preload("res://assets/audio/ui_sound_effects/African1.ogg"), # 2
	preload("res://assets/audio/ui_sound_effects/African2.ogg") # 3
]

func play_sfx(index: int) -> void:
	stream = sfx[index]
	play()
