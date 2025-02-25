extends ParallaxBackground

@onready var parallax_layer: ParallaxLayer = $parallax_layer
@onready var texture: TextureRect = $parallax_layer/texture

@export var direction: Vector2 = Vector2(-1, 1)
@export var move_speed: float = 32.0

var background_image_list: Array[String] = [
	"res://assets/sprites/resource/background/Blue.png",
	"res://assets/sprites/resource/background/Brown.png",
	"res://assets/sprites/resource/background/Gray.png",
	"res://assets/sprites/resource/background/Green.png",
	"res://assets/sprites/resource/background/Pink.png",
	"res://assets/sprites/resource/background/Purple.png",
	"res://assets/sprites/resource/background/Yellow.png",
	"res://assets/sprites/resource/background/file.png",
]

func _ready() -> void:
	texture.texture = load(background_image_list[randi() % background_image_list.size()])


func _process(delta: float) -> void:
	parallax_layer.motion_offset += direction * delta * move_speed
	print(parallax_layer.motion_offset)
