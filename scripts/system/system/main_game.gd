extends Control

@onready var cat: Cat = $cat

func _ready() -> void:
	GeralBgm.play_music(6)
