extends Node2D

# Speed at which the conveyor scrolls vertically
@export var scroll_speed: float = 120.0

# height of the viewport
@export var viewport_height: float = 640.0

# References to the tilemaps
@onready var tilemap_1 = $TileMapLayer
@onready var tilemap_2 = $TileMapLayer2
@onready var tilemap_3 = $TileMapLayer3

func _ready() -> void:
	tilemap_2.position.y = -viewport_height / 4

func _physics_process(delta: float) -> void:
	print(tilemap_1.position.y, tilemap_2.position.y, tilemap_3.position.y)
	tilemap_1.position.y += scroll_speed * delta
	tilemap_2.position.y += scroll_speed * delta
	tilemap_3.position.y += scroll_speed * delta
	if tilemap_1.position.y >= viewport_height:
		tilemap_1.position.y += -viewport_height
	if tilemap_2.position.y >= viewport_height:
		tilemap_2.position.y += -viewport_height
	if tilemap_3.position.y >= viewport_height:
		tilemap_3.position.y += -viewport_height
