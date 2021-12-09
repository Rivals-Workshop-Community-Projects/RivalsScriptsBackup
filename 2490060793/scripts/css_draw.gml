//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

if cssTimer == 0 {
    set_color_profile_slot_range( 3, 1, 1, 1 );
    set_color_profile_slot_range( 4, 1, 1, 1 );
}

var alt_cur = get_player_color(player);
var m_r = alt_cur == 0 ? [181,30,30] : [get_color_profile_slot_r(alt_cur,4),get_color_profile_slot_g(alt_cur,4),get_color_profile_slot_b(alt_cur,4)]
var m_w = alt_cur == 0 ? [255,255,255] : [get_color_profile_slot_r(alt_cur,3),get_color_profile_slot_g(alt_cur,3),get_color_profile_slot_b(alt_cur,3)]

user_event(1)
init_shader()

draw_sprite_ext(sprite_get("css_meter_red"), 0, x+8, y+8, 2, 2, 0, make_color_rgb(m_r[0],m_r[1],m_r[2]), 1)
draw_sprite_ext(sprite_get("css_meter_white"), 0, x+8, y+8, 2, 2, 0, make_color_rgb(m_w[0],m_w[1],m_w[2]), 1)

var blend = gpu_get_blendmode(); //gets the current blend mode
gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
draw_sprite_ext(sprite_get("hud_glow"), 0, x + 8, y + 8, 1, 1, 0, c_white, dsin(cssTimer*1.5)/4 + 0.2)
gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.