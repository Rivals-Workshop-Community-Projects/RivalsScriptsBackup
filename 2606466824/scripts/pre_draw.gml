//draw_debug_text( x, y+20, string(uspecCancel));
//draw_debug_text( x, y, string( window_timer ));

//draw_debug_text( x, y+50, string( revengeTarget ));

shader_start();
with (obj_article1) {
	if (player_id = other.id) {
		//draw_sprite_ext(sprite_get("ropesBack"), image_index, x, y, sign(spr_dir), 1, 0, c_white, 1);
	}
}
shader_end();


if (state == PS_SPAWN) {
	if (state_timer < 28 + (2*player) ) {
		draw_sprite(sprite_get("intro_pokeball_throw"), (state_timer - (2*player))/3, x, y + (2*(power(((state_timer - (2*player)) - 23), 1.7)) - 50));     
	} else if (state_timer < 37 + (2*player) ) {
		draw_sprite(sprite_get("intro_pokeball_open"), ((state_timer - (2*player))/3)-1, x, y - 12);    		
	} else if (state_timer < 55 + (2*player) ) {
		draw_sprite(sprite_get("intro_pokeball_open"), 3, x, y - 12);    		
	}
}