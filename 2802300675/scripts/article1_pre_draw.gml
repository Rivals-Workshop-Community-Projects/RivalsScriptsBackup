if  (get_player_color(player) == 24) {
//crash prevention line
shader_end();
maskHeader();
draw_self();
maskMidder();

if(state != 3){
    var fx_image_index = get_gameplay_time() / 6;
    draw_sprite_tiled_ext(sprite_get("unknown"), fx_image_index, x, y, 1, 1, c_white, 1)
}if(state == 3){
    var fx_image_index = get_gameplay_time() / 6;
    draw_sprite_tiled_ext(sprite_get("unknown"), fx_image_index, x, y, 1, 1, c_gray, 1)
}
maskFooter();

with(player_id){
    shader_start();
}

}
if  (get_player_color(player) == 25) {
//crash prevention line
shader_end();
maskHeader();
draw_self();
maskMidder();

if(state != 3){
    var fx_image_index = get_gameplay_time() / 6;
    draw_sprite_tiled_ext(sprite_get("rumor"), fx_image_index, x, y, 1, 1, c_white, 1)
}if(state == 3){
    var fx_image_index = get_gameplay_time() / 6;
    draw_sprite_tiled_ext(sprite_get("rumor"), fx_image_index, x, y, 1, 1, c_gray, 1)
}
maskFooter();

with(player_id){
    shader_start();
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

