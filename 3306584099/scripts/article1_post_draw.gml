 if (sprite_index > -1) {
     if (strong_charge > 2 && strong_charge % 10 < 6 && player_id.object_index != oTestPlayer)
    {    
        
        gpu_set_blendenable(false);
        gpu_set_colorwriteenable(false, false, false, true);
        draw_set_alpha(0);
        draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
        draw_set_alpha(1);
        draw_sprite_ext(sprite_index, image_index, round(x), round(y), image_xscale * spr_dir, image_yscale, image_angle, image_blend, 0.5);
        gpu_set_blendenable(true);
        gpu_set_colorwriteenable(true,true,true,true);
        gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
        gpu_set_alphatestenable(true);
        draw_rectangle_color(0, 0, room_width, room_height, 
            c_yellow, c_yellow, c_yellow, c_yellow, false);
        gpu_set_alphatestenable(false);
        gpu_set_blendmode(bm_normal);
        draw_set_alpha(1);
    }
 }
if (player_id.alt_cur == 16 && sprite_index > -1)
{
    gpu_set_blendmode(bm_add);
    for (var ix = -2; ix <= 2; ix += 2) for (var iy = -2; iy <= 2; iy += 2)
    {
        draw_sprite_ext(sprite_index, image_index, x + ix, y + iy, image_xscale * spr_dir, image_yscale, image_angle, player_id.glow_color, 0.1);
    }
    gpu_set_blendmode(bm_normal);
}