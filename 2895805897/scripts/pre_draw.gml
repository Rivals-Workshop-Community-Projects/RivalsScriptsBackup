// pre-draw

if (state == PS_RESPAWN) {
    shader_start();
    draw_sprite(sprite_get("plat_back"), 0, x, y);
    shader_end();
}
if (le_stinkeyBingus == false) {
    // wise mystical melon
    if(get_player_color(player) == 14){
        createMask("wise_mystical_texture")
    }
    
    // secret milestone skin
    if(get_player_color(player) == 19){
        createMask("secret_image")
    }
    
    // markiplier
    if(get_player_color(player) == 16){
        createMask("mark")
    }
    
    // maurice
    if(get_player_color(player) == 15){
        createMask("maurice")
    }
}


if(get_player_color(player) == 30){
    the_color = make_colour_rgb(221, 33, 58)
    the_alpha = 0.3

    gpu_set_fog(1, the_color, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x,y, 2.25 * spr_dir, 2.25, spr_angle, c_black, the_alpha);
    gpu_set_fog(0, c_white, 1, 1);
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
#define createMask(the_image)
// creates the masking//================================================================================
{
    maskHeader();
    maskMidder();
    maskFooter();
    shader_start();
    draw_sprite_ext(sprite_index, image_index, x,y, spr_dir, 1, spr_angle, c_white, 1);
    shader_end();
    maskHeader();
    draw_set_alpha(0);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, 0);
    draw_set_alpha(1);
    draw_sprite_ext(sprite_index, image_index, x,y, spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    draw_sprite_tiled_ext(sprite_get(the_image), 0, x + 28, y + 5, 1, 1, c_white, 1);
    maskFooter();    
}