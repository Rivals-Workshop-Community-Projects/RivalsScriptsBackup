if(player_id.genesis){
    // var rng = random_func_2(floor(abs(player_id.x%200)), 3, true);
    // if rng == 2 rng = 5;
    createMask(0, total_lifetime);
}


if(get_match_setting(SET_HITBOX_VIS) && state == 1){
    shader_end();
    draw_sprite_ext(mask_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, .4);
}


#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
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
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}

//================================================================================
#define createMask(the_image, time)
// creates the masking//================================================================================
{
    maskHeader();
    maskMidder();
    maskFooter();
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_white, 1);
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    var incrament = time%50 - 10;
    var chunk = 50;
    var segment = incrament * (sprite_height/40);
    var part = sprite_height - segment - chunk
    draw_sprite_part_ext(sprite_index, image_index, 0, part, abs(sprite_width), chunk, x - sprite_width/2, y - segment - chunk + 2, 1, 1, c_white, .3);
    maskMidder();
    draw_sprite_tiled_ext(the_image, 0, 0, 16 + y, 1, 1, c_red, 1);
    maskFooter();
}