if "char_height" not in self exit;


if (get_match_setting(SET_HITBOX_VIS)){
draw_debug_text(temp_x-15, temp_y - 15, "Window: " + string(window));
draw_debug_text(temp_x-15, temp_y - 30, "Timer: " + string(window_timer));
draw_debug_text(temp_x-15, temp_y - 45, "State: " + string(get_state_name(state)));
draw_debug_text(temp_x-15, temp_y - 60, "Attack: " + string(attack));
draw_debug_text(temp_x-15, temp_y - 75, "HSP: " + string(hsp));
draw_debug_text(temp_x-15, temp_y - 90, "VSP: " + string(vsp));


if (instance_exists(hit_player_obj)){
        draw_debug_text(temp_x+245, temp_y - 15, "Window: " + string(hit_player_obj.window));
        draw_debug_text(temp_x+245, temp_y - 30, "Timer: " + string(hit_player_obj.window_timer));
        draw_debug_text(temp_x+245, temp_y - 45, "State: " + string(get_state_name(hit_player_obj.state)));
        draw_debug_text(temp_x+245, temp_y - 60, "Attack: " + string(hit_player_obj.attack));
        draw_debug_text(temp_x+245, temp_y - 75, "HSP: " + string(hit_player_obj.hsp));
        draw_debug_text(temp_x+245, temp_y - 90, "VSP: " + string(hit_player_obj.vsp)); 
    }
}


shader_start();

if (get_player_color(player) != 27){
    //Ghost
    draw_sprite_ext(sprite_get("hudIcons"), 0 + (move_cooldown[AT_NSPECIAL] > 0), temp_x + 205, temp_y - 24, 2, 2, 0, -1, 1)

    //Sausage
    draw_sprite_ext(sprite_get("hudIcons"), 2 + (move_cooldown[AT_FSPECIAL] > 0), temp_x + 160, temp_y - 24, 2, 2, 0, -1, 1)

    //Crate
    draw_sprite_ext(sprite_get("hudIcons"), 6 + (move_cooldown[AT_DSPECIAL] > 0), temp_x + 115, temp_y - 24, 2, 2, 0, -1, 1)
}

shader_end();




//Image Mask
if  (get_synced_var(player) != 0) {
    if(start_predraw){
        //crash prevention line
        shader_end();
        maskHeader();
        draw_sprite_ext(sprite_get("hud_mask"), 0, temp_x + 28, temp_y + 6, 1, 1, 0, -1, 1);
        

        maskMidder();
        
        var maskSprite = sprite_get("map_sprite" + string(get_synced_var(player)));
        //draw_sprite_ext(maskSprite, 0, (x + draw_x) + (get_gameplay_time()/2 % (sprite_get_width(maskSprite)/2)), (y + draw_y) + (get_gameplay_time()/2 % (sprite_get_height(maskSprite)/2)), 2, 2, 0, -1, 1)
        draw_sprite_ext(maskSprite, 0, temp_x, temp_y, 2, 2, 0, -1, 1)
        maskFooter();
    }
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
#define maskFooter()

if instance_number(oTestPlayer) > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);

