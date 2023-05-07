if (get_player_color(player) == 17) {
    for (var i = 0; i < array_length(smoke_objects); i++) {
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke4_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
    }
    shader_end();
    for (var i = 0; i < array_length(smoke_objects); i++) {
        maskHeader(); 
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke2_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
        maskMidder();
    }
    draw_sprite_tiled_ext(sprite_get("genesis_static"), (get_gameplay_time() * 0.25), x, y, 1, 1, c_white, 1)
    maskFooter();
}
else if (get_player_color(player) == 24) {
    for (var i = 0; i < array_length(smoke_objects); i++) {
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke4_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
    }
    shader_end();
    for (var i = 0; i < array_length(smoke_objects); i++) {
        maskHeader(); 
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke2_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
        maskMidder();
    }
    draw_sprite_tiled_ext(sprite_get("regi_statchange"), (get_gameplay_time() * 0.25), x, y, 1, 1, c_white, 1)
    maskFooter();
}
else {
    for (var i = 0; i < array_length(smoke_objects); i++) {
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke3_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
    }
    for (var i = 0; i < array_length(smoke_objects); i++) {
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke2_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
    }
            
    for (var i = 0; i < array_length(smoke_objects); i++) {
        if (smoke_objects[i].size < 10)
            draw_sprite(smoke1_spr, smoke_objects[i].size, round(smoke_objects[i].x), round(smoke_objects[i].y));
    }
}
//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width,room_height, c_black, c_black, c_black, c_black, false);
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