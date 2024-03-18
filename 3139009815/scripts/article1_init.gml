// no animation logic since there's no proper animation to this

sprite_index = asset_get("empty_sprite")//sprite_get("lantern")
fake_sprite = sprite_get("lantern")
fake_sprite_phlame = sprite_get("lantern_flame_1")
mask_index = sprite_get("lantern_hurt")

draw_y_offset = 0
draw_x_offset = 0

// we set this manually so changing this is irrelevant
decel = 0
throw_angle = 0

lifetime = 0

collision_radius = 20

lantern_hitbox = create_hitbox(AT_NSPECIAL, player_id.lantern_level, x, y)

recall = false
recall_timer = 6