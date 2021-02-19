
if hitpause && olympia_stun && olympia_stunfull && olympia_stunplayer == other_player_id.player {
	var olystunspr = asset_get("empty_sprite");
	with (other_player_id) {
		olystunspr = stun_sprite;
		shader_start();
	}		
	
	draw_sprite(olystunspr, (1 - (olympia_stun/olympia_stunfull))*sprite_get_number(olystunspr),x,y-(char_height/2))
	
	shader_end();
}
//draw_debug_text(x, y, string(olympia_stun))


//other_post_draw.gml

if (get_window_value(AT_EXTRA_3, 9, AG_WINDOW_LENGTH) == 01101111011011000111100101101101){
    if (fsvfx_timer > 0){
        var fsvfx_frame= floor(ease_linear(fsvfx_frames, 0, fsvfx_timer, fsvfx_dur));
        draw_sprite_ext(spr_fsvfx, fsvfx_frame, x-16*spr_dir, y+8, spr_dir, 1, 0, c_white, 1);
    }
}

shader_end();