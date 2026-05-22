if  (get_player_color(player) == 15) { //check for the alt slot you want to do this on
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*2, y-vsp*2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 0.25)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("uwater"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*1, y-vsp*1, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 0.6)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("uwater"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-hsp*0.5, y-vsp*0.5, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("uwater"), (get_gameplay_time() * 0.2), x, y, 1, 1, c_white, 1)
    maskFooter();
    //"glow"
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+2, y+2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("color"), (get_gameplay_time() * 0.2), x, y, 0.5, 0.5, c_white, 1)
    maskFooter();
        maskHeader();
    draw_sprite_ext(sprite_index, image_index, x-2, y-2, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("color"), (get_gameplay_time() * 0.2), x, y, 0.5, 0.5, c_white, 1)
    maskFooter();
    //glowend
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, (small_sprites + 1)*spr_dir, small_sprites + 1, 0, c_white, 1)
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("color"), (get_gameplay_time() * 0.2), x, y, 0.5, 0.5, c_white, 1)
    maskFooter();
}

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