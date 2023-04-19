var init_has_run = "adrenaline_timer" in self;

if (init_has_run) {
    var hud_len = floor(174*(adrenaline_timer/adrenaline_max));
    hud_len -= (hud_len % 2); // snap to pixel
    
    var flash_alpha = clamp(20*(adrenaline_timer/adrenaline_max - 0.935), 0, 1);
    
    var use_ftl_hud = (get_player_color( player ) == 12 && !(adrenaline_timer <= 10 && adrenaline_timer > 5) && adrenaline_timer > 1);
    var use_mask = (get_player_color(player) == 14 || get_player_color(player) == 2)
} else {
    var use_ftl_hud = false;
    var use_mask = false;
}

if (use_ftl_hud) {
    draw_sprite(sprite_get("hudback_ftl"), 0, temp_x+4, temp_y-34);
    draw_sprite_part(sprite_get("hudbar_ftl"), 0, 0, 0, hud_len, 10, temp_x+20, temp_y-10);
}


else if (use_mask) {
    
    shader_start();
    draw_sprite(sprite_get("hudback"), 0, temp_x+4, temp_y-34);
    shader_end();
    
    if (get_player_color(player) == 14) {
        maskHeader();
        //draw_sprite_ext(sprite_get("hudbar"), 0, temp_x+20, temp_y-10, 1, 1, 0, c_white, 1);
        draw_sprite_part_ext(sprite_get("hudbar"), 0, 0, 0, hud_len, 10, temp_x+20, temp_y-10, 1, 1, c_white, 1);
        maskMidder();
        draw_sprite_tiled_ext(sprite_get("starbg"), get_player_color( player ) , draw_x + (get_gameplay_time() * 0.5), draw_y, 1, 1, c_white, 1)
        maskFooter();
    }
    else if (get_player_color(player) == 2) {
        maskHeader();
        //draw_sprite_ext(sprite_get("hudbar"), 0, temp_x+20, temp_y-10, 1, 1, 0, c_white, 1);
        draw_sprite_part_ext(sprite_get("hudbar"), 0, 0, 0, hud_len, 10, temp_x+20, temp_y-10, 1, 1, c_white, 1);
        maskMidder();
        draw_sprite_tiled_ext(sprite_get("sediment"), get_player_color( player ), hud_len, draw_y-15, 2, 2, c_white, 1)
        maskFooter();
    }
    
}

else {
    shader_start();
    draw_sprite(sprite_get("hudback"), 0, temp_x+4, temp_y-34);
    
    if (!init_has_run) { 
        shader_end();
        exit;
    }
    
    draw_sprite_part(sprite_get("hudbar"), 0, 0, 0, hud_len, 10, temp_x+20, temp_y-10);
    shader_end();
}



if (hud_len != 0) {
    draw_rectangle_color(temp_x+20+hud_len, temp_y-10, temp_x+17+hud_len, temp_y, c_black, c_black, c_black, c_black, false);
}

draw_sprite_ext(sprite_get("hudflash"), 0, temp_x+20, temp_y-10, 1, 1, 0, c_white, flash_alpha);




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