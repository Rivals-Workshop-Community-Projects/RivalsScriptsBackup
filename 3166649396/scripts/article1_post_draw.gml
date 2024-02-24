//article1_post_draw

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

if state == 2 {
    var col = c_white
    switch element {
        case MOON: col = $cb57ff break;
        case FIRE: col = $007cff break;
        case EARTH: col = $00ff68 break;
        case ICE: col = $f6ff00 break;
        case WATER: col = $ff8100 break;
        case LIGHTNING: col = $b8fdff break;
        case SHADOW: col = $ff00bb break;
    }
    draw_sprite_ext(sprite_get("vfx_orb_dissipate"), clamp(floor(state_timer/5), 0, 7), x, y, 1, 1, 0, col, 1)
}