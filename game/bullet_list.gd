extends Node2D

var spawn_interval = 1.5
var spawn_time = 1.5

func _process(delta: float) -> void:
    if not Game.game_over:
        if spawn_time < 0:
            spawn_time = spawn_interval
            spawn_bullet()
        else:
            spawn_time -= delta
        
func spawn_bullet():
    var bullet = load('res://bullet.tscn').instantiate()
    var where = randi_range(0, 3)
    if where % 2 == 0:
        bullet.position.y = randi_range(20, 580)
        if where == 0:
            bullet.position.x = -20
            bullet.velocity.x = randi_range(150, 250)
        else:
            bullet.position.x = 820
            bullet.velocity.x = randi_range(-250, -150)
    else:
        bullet.position.x = randi_range(20, 780)
        if where == 1:
            bullet.position.y = -20
            bullet.velocity.y = randi_range(150, 250)
        else:
            bullet.position.y = 620
            bullet.velocity.y = randi_range(-250, -150)
    add_child(bullet)
