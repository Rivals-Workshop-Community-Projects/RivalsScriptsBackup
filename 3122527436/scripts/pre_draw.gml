shader_start()
// pre-draw
if (state == PS_RESPAWN || respawn_taunt > 0) draw_sprite_ext(sprite_get("plat_bg"), game_time * plat_speed, x, y, 1, 1, 0, c_white, 1);
shader_end()

