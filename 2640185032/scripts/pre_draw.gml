

shader_start();
//ice clock for projectiles
with(pHitBox){
    if(player_id = other && effect == 12 && "focus" in self && focus){        
        draw_sprite_ext(spr_iceclock_back_sm, 0, x, y, 2, 2, 0, c_white, 0.25 );
        draw_sprite_ext(spr_iceclock_hand_sm, 0, x, y, 2, 2, (freeze * (360/freeze_max)), c_white, 0.5 );
    }
}
shader_end();

//afterimage drawing
var ice_color = make_colour_rgb(col_R, col_G, col_B);
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,ice_color,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}


if get_player_color( player ) == 16{
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
    maskMidder();
    draw_sprite_tiled_ext(sprite_get("bg"), get_gameplay_time()/20, draw_x, draw_y, 1, 1, c_white, 1)
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