extends StaticBody2D
enum BIG_CHEST {SILVER,BROWN}
@export var type: BIG_CHEST
func _ready(): $Sprite2D.region_rect = Rect2(32 + 16 * type, 0, 16, 16)