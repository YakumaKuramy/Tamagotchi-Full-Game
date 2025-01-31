extends AudioStreamPlayer

var music: Array = [
	preload("res://assets/audio/background_music/beanfeast.mp3"),
	preload("res://assets/audio/background_music/dramatic_boi.mp3"),
	preload("res://assets/audio/background_music/dramatic_boi_v2.mp3"),
	preload("res://assets/audio/background_music/dramatic_boi_v3.mp3")
]

func play_music(index: int) -> void:
	stream = music[index]
	play()
