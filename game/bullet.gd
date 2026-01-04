extends Node2D

@onready var player = get_tree().current_scene.get_node('Player')
var velocity = Vector2(0, 0)

func _process(delta: float) -> void:
    if not Game.game_over:
        position += velocity * delta
        if position.x < -40 or position.x > 840 or position.y < -40 or position.y > 640:
            queue_free()
        if (position - player.position).length() < 60.0:
            Game.game_over = true
