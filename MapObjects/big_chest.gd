extends StaticBody2D

@export_enum('Silver','Brown') var type: int
var can_interact: bool = false


func _ready():
    $ChestGlow.hide()
    $ChestSprite.region_rect = Rect2(32 + 16 * type, 0, 16, 16)

func _on_interaction_area_body_entered(body: Node2D):
    if body is Player:
        $ChestGlow.show()
        can_interact = true

func _on_interaction_area_body_exited(body: Node2D):
    if body is Player:
        $ChestGlow.hide()
        can_interact = false