/*
draw_debug_text(temp_x+16, temp_y-16, "FSpecial Type:  " + string(fspecial_type));

draw_debug_text(temp_x+16, temp_y-48, "Old HSP:  " + string(old_hsp));
draw_debug_text(temp_x+16, temp_y-32, "Old VSP:  " + string(old_vsp));
*/

shader_start();
draw_sprite_ext(sprite_get("SB_FSpecial_Hud"), fspecial_type+ 0, temp_x-56, temp_y-74,2,2, 0, c_white,1);
shader_end();
