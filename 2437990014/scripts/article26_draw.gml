//anim26
gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0,room_width,room_height,c_white,c_white,c_white,c_white,false);
draw_set_alpha(1);
draw_sprite_ext(sprite_get("lightning_mask"), 0, x + temp_x, y + temp_y + 18, 2, 2, 0, c_white, image_alpha);
gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext(sprite_get("sheet_lightning"), 0, -145 + temp_x + xOff, y + 91 + temp_y, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("sheet_lightning"), 0, 1235 + temp_x + xOff, y + 91 + temp_y, 2, 2, 0, c_white, 1);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);

//draw_sprite_ext(sprite_get("sheet_lightning"), 0, -145 + temp_x + xOff, y + 91 + temp_y, 2, 2, 0, c_white, 1);
//draw_sprite_ext(sprite_get("sheet_lightning"), 0, 1235 + temp_x + xOff, y + 91 + temp_y, 2, 2, 0, c_white, 1);

//draw_debug_text(400, 200, "x: " + string(x));
