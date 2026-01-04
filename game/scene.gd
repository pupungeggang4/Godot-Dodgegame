extends Node2D

func _process(delta: float) -> void:
    if not Game.game_over:
        Game.elapsed_time += delta
        Game.score = int(Game.elapsed_time)
