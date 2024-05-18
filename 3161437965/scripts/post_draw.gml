//post_draw.gml

gpu_set_fog(true, save_flash_col, 0, 1);
draw_sprite_ext(
    sprite_index, image_index,
    x, y,
    spr_dir, 1,
    spr_angle, c_white,
    save_flash_time/10 //this will make it fade out over time
);
gpu_set_fog(false, c_red, 1, 0);

// draw_sprite_ext(sprite_get("vfx_strike"), 0, x, y, 1, 1, 180 - joy_dir, c_white, 1)
// if juiced_up {
// var blend = gpu_get_blendmode(); //gets the current blend mode
// gpu_set_blendmode_ext_sepalpha(bm_inv_dest_color,bm_inv_src_color,bm_src_alpha,bm_src_alpha);
// gpu_set_alphatestenable(true);
// gpu_set_fog(1, c_white, 0, 1);
// draw_sprite_ext(sprite_index, image_index, x + draw_x, y + draw_y, spr_dir, 1, spr_angle, c_white, 1);
// gpu_set_fog(0, c_white, 0, 0);
// gpu_set_alphatestenable(false);
// gpu_set_blendmode(blend); //goes back to whatever blend mode you were in.
// }   