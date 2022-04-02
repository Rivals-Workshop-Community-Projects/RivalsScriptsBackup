

/*
//draw_debug_text( x, y + 40, "angle:" + string( attackangle ) + "  tgzn:" + string( torren_go_zoom_now ) + "  zmtim:" + string(zoom_time));
draw_debug_text( x, y + 40, "index" + string( sprite_index ) + "  swords:" + string( swords_merged ));
//draw_debug_text( x, y + 55, " rvrs:" + string(shouldreverse) );
*/

//draw_debug_text( x, y + 40, string(hsp));



user_event(12);

var tempColour = c_white;

col1 = GetColourPlayer(0)
col2 = GetColourPlayer(1)


if (blink_state_timer < blink_start_frame) {
	
	
	 gpu_set_fog(1, col1, 0, 1);


                draw_sprite_ext(sprite_index, image_index, x, y, 2*spr_dir, 2, 0, tempColour, 1);
        gpu_set_blendmode(bm_add);
                       // draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index + image_index_offset , afterImage[i].x - 2*x_offset*spr_dir, afterImage[i].y + 2*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, afterImage[i].alpha/20);

        gpu_set_blendmode(bm_normal);
	 gpu_set_fog(0, c_white, 0, 0);

}
if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
	

shader_start()
if (image_index == 3 || image_index == 5 || image_index == 7 || image_index == 9 || image_index == 11) {
fspecial_sprite_index = sprite_get( "fspecial_afterimage" )

if (window_timer == 0) {
x_blah = x } else {

	
}


                draw_sprite_ext(fspecial_sprite_index, image_index, x_blah, y, 2*spr_dir, 2, 1, tempColour, 1);


}
shader_end()
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


//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),
    get_color_profile_slot_g(get_player_color(player), _index),
    get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru