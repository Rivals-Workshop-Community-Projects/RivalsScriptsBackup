//article1_pre_draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

var player_col = get_player_hud_color(player_id.player)
if player_id.in_ditto && state <= 1 {
    draw_sprite_ext(sprite_get("orb_behind"), 0, x, y, 1, 1, 0, player_col, (timer - 16)/20)
}