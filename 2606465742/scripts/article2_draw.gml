maskHeader();

var stage_w = 256;
draw_rectangle_color(orig_x + stage_w, orig_y - 128, orig_x + stage_w * 2, orig_y + 128, c_lime, c_lime, c_lime, c_lime, false);
draw_rectangle_color(orig_x - stage_w * 2, orig_y - 128, orig_x - stage_w - 1, orig_y + 128, c_lime, c_lime, c_lime, c_lime, false);

maskMidder();

draw_sprite_ext(sprite_get("cloud"), image_index, x, y, image_xscale, image_yscale, 0, c_white, 1);

maskFooter();



#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);

#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);

#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);