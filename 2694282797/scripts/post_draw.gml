//a
//&& instance_exists(present_id)
if holding_present && instance_exists(present_id) {
    shader_start();
    draw_sprite_ext(present_id.sprite_index,present_id.image_index, x - 30 * spr_dir, y - 25,1,1,0,c_white,0.75);
    shader_end();
}

if should_debug {
    draw_debug_text(x - 15, y + 30,"Attack: "+string(attack));
    draw_debug_text(x - 15, y + 45,"Window: "+string(window));
    draw_debug_text(x - 15, y + 60,"Window Timer: "+string(window_timer));
    draw_debug_text(x - 15, y + 75,"Holding Present: "+string(holding_present));
    draw_debug_text(x - 15, y + 90,"Present Exists: "+string(instance_exists(present_id)));
    
    
    if instance_exists(present_id) {
        draw_debug_text(present_id.x - 15, present_id.y + 30,"Is Present");
    }
}

if get_player_color(player) == 19 {
    if object_index != asset_get("oTestPlayer") {
    shader_start();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, spr_dir, 1, spr_angle, c_white, 1);
    //with pHitBox if player_id == other && type == 2 {
    //        draw_sprite_ext(sprite_index, image_index, x, y, 1*spr_dir, 1, 1, c_white, 1);
    //    }
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