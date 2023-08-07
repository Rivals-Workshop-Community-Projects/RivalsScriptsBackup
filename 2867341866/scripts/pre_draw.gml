
/*if state == PS_RESPAWN {
    draw_sprite(sprite_get("plat2"), 0, x, y)
}*/

shader_start();

// Sparkles (managed in update.gml, added in update/attack_update.gml)
for (var i = 0; i < ds_list_size(sparkle_list); i++) {
    var sp = ds_list_find_value(sparkle_list, i);
    var sp_image_index = sp.sp_lifetime * (sprite_get_number(sp.sp_sprite_index) / sp.sp_max_lifetime);
    draw_sprite_ext(sp.sp_sprite_index, sp_image_index, sp.sp_x, sp.sp_y, sp.sp_spr_dir, 1, 0, c_white, 1 );
}

shader_end();

/* DEPRECATED
// Afterimages (managed in update.gml, added by attack_update.gml)
var col_r = get_color_profile_slot_r( get_player_color(player), 4);
var col_g = get_color_profile_slot_g( get_player_color(player), 4);
var col_b = get_color_profile_slot_b( get_player_color(player), 4);
var ai_col = make_color_rgb(col_r, col_g, col_b);

gpu_set_fog(1, ai_col, 0, 1);
for (var i = 0; i < ds_list_size(afterimage_list); i++) {
    var ai_current = ds_list_find_value(afterimage_list, i);
    var ai_alpha = ai_current.ai_lifetime / ai_current.ai_max_lifetime;
    draw_sprite_ext(ai_current.ai_sprite_index, ai_current.ai_image_index, ai_current.ai_x, ai_current.ai_y, ai_current.ai_spr_dir, 1, 0, c_white, ai_alpha );
}
gpu_set_fog(0, c_white, 0, 1);*/

/*if get_player_color( player ) == 14 {
    FlagPart(make_colour_rgb(85, 170, 252), 1, 0); // mayablue
    FlagPart(make_colour_rgb(247, 140, 223), 3/5, 1/5); // pink
    FlagPart(c_white, 1/5, 2/5);
    gpu_set_fog(0, c_white, 0, 0);
}

#define FlagPart(_colour, _heightRatio, _xOffsetRatio)
{
    gpu_set_fog(1, _colour, 0, 1);
    for (i = -1; i < 2; ++i) for (j = -1; j < 2; ++j)
        draw_sprite_part_ext(sprite_index, image_index, 0, sprite_height*_xOffsetRatio, sprite_width*spr_dir, sprite_height*_heightRatio, x+i*2+draw_x-sprite_xoffset*(1+small_sprites), y+j*2+(draw_y-sprite_yoffset+sprite_height*_xOffsetRatio)*(1+small_sprites), spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1);
}

*/
if object_index == oPlayer { //removes playtesting hellscape
    if get_player_color(player) == 14 {
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 1*spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    shader_start();
    draw_sprite_tiled_ext(sprite_get("starbg"), get_player_color( player ) , draw_x + (get_gameplay_time() / 2), draw_y, 1, 1, c_white, 1)
    maskFooter();

    }
    if get_player_color(player) == 2 {
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 1*spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    shader_start();
    draw_sprite_tiled_ext(sprite_get("sediment"), get_player_color( player ) , draw_x , draw_y, 2, 2, c_white, 1)
    maskFooter();

    }
    if get_player_color(player) == 21 {
    shader_end();
    maskHeader();
    draw_sprite_ext(sprite_index, image_index, x+draw_x, y+draw_y, 1*spr_dir, 1, spr_angle, c_white, 1);
    maskMidder();
    shader_start();
    draw_sprite_tiled_ext(sprite_get("water"), get_player_color( player ) , x+draw_x , y+draw_y, 2, 2, c_white, 1)
    maskFooter();

    }
}
//goes at bottom

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

