//post-draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7
with other_player_id {
    var spr_drenched_back = sprite_get("vfx_drenched_back")
}

if omen_drenched_id == other_player_id && instance_exists(other_player_id) {
    draw_sprite_ext(spr_drenched_back, other_player_id.timer/6, x, y - char_height/2, 1, 1, 0, c_white, 1)
}