extends StaticBody2D
enum SMALL_CHEST {BROWN,SILVER}
@export var type: SMALL_CHEST
func _ready(): $Sprite2D.region_rect = Rect2(16 * type, 0, 16, 16)