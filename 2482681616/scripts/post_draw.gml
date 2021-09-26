if (has_rune("O")) {
    draw_sprite_ext(sp_ind, image_index, round(x), round(y), spr_dir * 2, 2, image_angle, image_blend, 1);
}


//Stat effect BG (similar to that of FireRed/LeafGreen)

if (slowstart_stateffect_timer >= 0) 
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, slowstart_stateffect_alpha);
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
    if (slowstart_stateffect_timer >= 2)
        draw_sprite_tiled_ext(slowstart_stateffect_bg, 0, round(x), round(y)+slowstart_stateffect_timer * slowstart_stateffect_bgdir * 2, 2, 2, c_white, 1);
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}