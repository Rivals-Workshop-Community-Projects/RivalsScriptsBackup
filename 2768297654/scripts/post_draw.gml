// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 4; // WARN: Possible Desync. Object var set in draw script. Consider using `var` or creating constants in `init.gml`.
user_event(14);


if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
if(attack == AT_USPECIAL){
    if(window > 2){
        if(spr_dir = 1){
        draw_sprite_ext(sprite_get("fly_meter"), 0, x - 34, y + 0, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_get("fly_bar"), 0, x - 28, y + 0, (fly_length/100), 1, 0, c_white, 1);
        }        if(spr_dir = -1){
        draw_sprite_ext(sprite_get("fly_meter"), 0, x - 28, y + 0, 1, 1, 0, c_white, 0.8);
        draw_sprite_ext(sprite_get("fly_bar"), 0, x - 22, y + 0, (fly_length/100), 1, 0, c_white, 1);
        }
        }
    }
}

if(bomb_state == true){
    if !phone_hud_hidden && draw_indicator{
	draw_sprite_ext(sprite_get("smokebomb_hud"), 0, x + 18, y - char_height - hud_offset - 44, 1, 1, 0, c_white, 1);
    }
}

if object_index != asset_get("oTestPlayer")
 {
shader_start();
maskHeader();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 2*spr_dir, 2, spr_angle, c_white, 1);
with pHitBox if player_id == other && type == 2 {
        draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 1, c_white, 1);
    }
maskMidder();
draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 2*spr_dir, 2, spr_angle, c_gray, .5);
maskFooter();
shader_end();
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