//article2_post_draw
with player_id shader_end()
if hitbox_active {
    draw_sprite_ext(sprite_get("scythe_vfx"), element*4 + ((timer/5) mod 4), x, y, -1, 1, 0, c_white, vfx_alpha)
}