//article5_draw.gml

if mantis_num == 1 && state == PS_RESPAWN && state_timer > 90 && state_timer < 180 {
    var _scale = (state_timer/2) mod 5
    var _alpha = (5 - (state_timer/2) mod 5)/10
    draw_sprite_ext(sprite_get("reverb_vfx"), 0, x, y-40, _scale, _scale, 0, c_white, _alpha);
}