

/*
//draw_debug_text( x, y + 40, "angle:" + string( attackangle ) + "  tgzn:" + string( torren_go_zoom_now ) + "  zmtim:" + string(zoom_time));
draw_debug_text( x, y + 40, "index" + string( sprite_index ) + "  swords:" + string( swords_merged ));
//draw_debug_text( x, y + 55, " rvrs:" + string(shouldreverse) );
*/

//draw_debug_text( x, y + 40, string(hsp));





user_event(12);

var tempColour = c_white;
if (fake_alt == 24) {






col1 = make_colour_rgb(color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv))
col2 = GetColourPlayer(1)


} else if (fake_alt == 25 && get_synced_var(player) == 0) {

col1 = make_colour_rgb(145, 0, 0);
col2 = make_colour_rgb(237, 64, 64);

}
else { col1 = GetColourPlayer(0) 
	col2 = GetColourPlayer(1)

}



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




//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(fake_alt, _index),
    get_color_profile_slot_g(fake_alt, _index),
    get_color_profile_slot_b(fake_alt, _index));
} // lukaru