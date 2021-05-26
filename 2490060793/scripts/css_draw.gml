//css-draw
if !(variable_instance_exists(id, "cssTimer")) {
    cssTimer = 0;
}

if cssTimer == 0 {
    set_color_profile_slot_range( 3, 1, 1, 1 );
    set_color_profile_slot_range( 4, 1, 1, 1 );
}

user_event(1)
init_shader()

var blend = gpu_get_blendmode(); //gets the current blend mode
gpu_set_blendmode(bm_add); //use additive blending for next draw_* calls
draw_sprite_ext(sprite_get("hud_glow"), 0, x + 8, y + 8, 1, 1, 0, c_white, dsin(cssTimer*1.5)/4 + 0.2)
gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
