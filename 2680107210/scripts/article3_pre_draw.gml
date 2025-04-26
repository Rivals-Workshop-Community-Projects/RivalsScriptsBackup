//article3_pre_draw
var offset = 1;

gpu_set_blendmode_ext(bm_inv_dest_color,bm_inv_src_color);
draw_set_alpha(player_id.dspecial_big_circle_alpha);
draw_sprite_ext(s_dspecial_pentagram, 0, x, y, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_white, 1);
draw_set_alpha(1);
gpu_set_blendmode(bm_normal);

/*draw_sprite_ext(s_dspecial_pentagram, rot, x-offset*scale_multiplier, y-offset*scale_multiplier, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_black, 1);
draw_sprite_ext(s_dspecial_pentagram, rot, x-offset*scale_multiplier, y+offset*scale_multiplier, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_black, 1);
draw_sprite_ext(s_dspecial_pentagram, rot, x+offset*scale_multiplier, y+offset*scale_multiplier, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_black, 1);
draw_sprite_ext(s_dspecial_pentagram, rot, x+offset*scale_multiplier, y-offset*scale_multiplier, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_black, 1);*/
draw_sprite_ext(s_dspecial_pentagram, rot, x, y, scale_x * scale_multiplier, scale_y * scale_multiplier, 0, c_black, 1);