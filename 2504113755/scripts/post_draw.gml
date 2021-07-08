

/*
//draw_debug_text( x, y + 40, "angle:" + string( attackangle ) + "  tgzn:" + string( torren_go_zoom_now ) + "  zmtim:" + string(zoom_time));
draw_debug_text( x, y + 40, "index" + string( sprite_index ) + "  swords:" + string( swords_merged ));
//draw_debug_text( x, y + 55, " rvrs:" + string(shouldreverse) );
*/

//draw_debug_text( x, y + 40, string(direction));



user_event(12);

var tempColour = c_white;

col1 = GetColourPlayer(0)
col2 = GetColourPlayer(1)


if (blink_state_timer < blink_start_frame) {
	
	
	 gpu_set_fog(1, col1, 0, 1);


                draw_sprite_ext(sprite_index, image_index, x + 0.5, y, 2*spr_dir, 2, 1, tempColour, 1);
        gpu_set_blendmode(bm_add);
                       // draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index + image_index_offset , afterImage[i].x - 2*x_offset*spr_dir, afterImage[i].y + 2*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, afterImage[i].alpha/20);

        gpu_set_blendmode(bm_normal);
	 gpu_set_fog(0, c_white, 0, 0);

}











//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),
    get_color_profile_slot_g(get_player_color(player), _index),
    get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru