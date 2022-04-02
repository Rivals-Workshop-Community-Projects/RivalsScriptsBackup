//post draw is drawn
init_shader();
shader_start();
if(attack == AT_NSPECIAL && knives > 0){
    if((sprite_index == sprite_get("nspecial") || sprite_index == sprite_get("nspecial_air")) && image_index > 0 && image_index < 6){
        draw_sprite_ext(sprite_get("nspec_holdknives"),
            image_index - 1 + ((clamp(0, knives, 3) - 1) * 5 ), x, y, spr_dir, 1, 0, c_white, 1);
    }
}

if object_index != asset_get("oTestPlayer") {
shader_start();
maskHeader();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, c_white, 1);
    }
maskMidder();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 2*spr_dir, 2, spr_angle, c_gray, .5);
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

/*with(pHitBox){
    if(attack == AT_NSPECIAL && "focus" in self && focus = true){
        draw_sprite_ext(spr_iceclock_hand_sm, 0, x, y, 2, 2, (freeze * 3), c_white, 0.5 );
    }
}*/


