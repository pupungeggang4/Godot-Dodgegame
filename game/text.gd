extends Label

func _process(delta: float) -> void:
    if not Game.game_over:
        text = 'Score: %d' % [Game.score]
    else:
        text = 'Game Over! Score: %d Press Enter to Restart.' % [Game.score]
