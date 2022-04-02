//post-draw



 
if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack == AT_NSPECIAL && window = 8 && image_index = 21){
    draw_sprite_pos(sprite_get("fspecialrope"), -1, x + 24 * spr_dir, y - 50,  hit_player_obj.x, hit_player_obj.y - 34,  hit_player_obj.x, hit_player_obj.y - 24, x + 24 * spr_dir, y - 40, 1);
    draw_sprite_ext(sprite_get("fspecialropeend"), -1, hit_player_obj.x, hit_player_obj.y - 38, spr_dir, 1, 0, c_white, 1 );
} 


if (has_rune("L") && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2 && (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND)){
        draw_sprite_ext(sprite_get("cyclone_rune_front"), image_index, x + 4 * spr_dir, y + 2, 1 * spr_dir, 1, 0, c_white, 1)
}

if get_player_color(player) != 0 {
if object_index != asset_get("oTestPlayer") {
shader_start();
maskHeader();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 1, c_white, 1);
    }
maskMidder();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_gray, .5);
maskFooter();

shader_end();
}
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
