// draw but pre

// rainbow trail

if (get_player_color( player ) == 8) {
	
	if (hsp > 2) || (hsp < -2) {
		
		draw_sprite_ext(rainbowtrail, 0, (x)-(4*spr_dir), y-40, 2, 1, 0, c_white, 7/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-hsp)-(4*spr_dir), y-40-vsp, 2, 1, 0, c_white, 6/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-(hsp*2))-(4*spr_dir), y-40-(vsp*2), 2, 1, 0, c_white, 5/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-(hsp*3))-(4*spr_dir), y-40-(vsp*3), 2, 1, 0, c_white, 4/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-(hsp*4))-(4*spr_dir), y-40-(vsp*4), 2, 1, 0, c_white, 3/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-(hsp*5))-(4*spr_dir), y-40-(vsp*5), 2, 1, 0, c_white, 2/7);	
		
		draw_sprite_ext(rainbowtrail, 0, (x-(hsp*6))-(4*spr_dir), y-40-(vsp*6), 2, 1, 0, c_white, 1/7);	
	}
	
	/*
	draw_sprite_ext(rainbowtrail, 0, x-4, y-36, 2, 2, 0, c_white, 1);	
	
	draw_sprite_ext(rainbowtrail, 0, x-8, y-36-, 2, 2, 0, c_white, 1);	
	*/
}