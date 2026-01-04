extends Node2D

@onready var bullet_list = get_tree().current_scene.get_node('BulletList')
var speed = 320.0

func _process(delta: float) -> void:
    if not Game.game_over:
        if Input.is_action_pressed('left'):
            position.x -= speed * delta
        if Input.is_action_pressed('right'):
            position.x += speed * delta
        if Input.is_action_pressed('up'):
            position.y -= speed * delta
        if Input.is_action_pressed('down'):
            position.y += speed * delta
    else:
        if Input.is_action_just_pressed('ui_accept'):
            position = Vector2(400.0, 300.0)
            Game.score = 0
            Game.elapsed_time = 0
            bullet_list.spawn_time = bullet_list.spawn_interval
            for c in bullet_list.get_children():
                bullet_list.remove_child(c)
                c.queue_free()
            Game.game_over = false
