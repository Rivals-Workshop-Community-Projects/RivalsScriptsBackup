if object_index == oPlayer { //removes playtesting hellscape
    if get_player_color(player) == 8 {
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 1*spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("paper_pattern"), get_player_color( player ) , temp_x, temp_y, 1, 1, c_white, 1)
    maskFooter();

    }

}


//goes at bottom

//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
