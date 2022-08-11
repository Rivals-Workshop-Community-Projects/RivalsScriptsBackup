   
    
    
if  (get_player_color(player) == 23) {
    if(!avocado){
//crash prevention line
shader_end();
maskHeader();
    draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_white, 1); //change the 2*spr_dir and 2 to 1 if the character doesnt use small_sprites

maskMidder();
    draw_sprite_tiled_ext(sprite_get("unknown"), 0, x, y, 1, 1, c_white, 1)
maskFooter();
    }
}

//================================================================================

shader_end();
if galaxy_timer > 0 {
        
        draw_sprite_ext(sprite_get("mmm"),0, view_get_xview(), view_get_yview(), 2 , 2 ,0, c_white, (galaxy_timer/2.5)/60 );
        
    }

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

