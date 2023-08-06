//other_post_draw.gml

if totk_dstrong_earthwake_id == other_player_id {
    with other_player_id {
        var spr = sprite_get("vfx_earthwake")
        var wisp_spr = sprite_get("vfx_earthwake_wisp")
    }
    with other_player_id shader_start()
    
    draw_sprite_ext(spr, floor(totk_dstrong_earthwake_timer/3), totk_dstrong_earthwake_x, totk_dstrong_earthwake_y, 1, 1, 0, c_white, 1)
    if totk_dstrong_earthwake_timer < 30 draw_sprite_ext(wisp_spr, floor(other_player_id.timer/3), ease_quadIn(other_player_id.x, x, totk_dstrong_earthwake_timer, 30), totk_dstrong_earthwake_y, other_player_id.spr_dir, 1, 0, c_white, 1)
    
    
    with other_player_id shader_end()
}