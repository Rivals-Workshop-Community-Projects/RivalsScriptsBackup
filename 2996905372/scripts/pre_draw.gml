// pre_draw.gml

//
if (attack == AT_DSPECIAL && sprite_index == sprite_get("dspecial")){
	var sprSize = 1 + (solarFlareRangeRune * 0.745);
	if (window == 3){
		draw_sprite_ext( sprite_get("dspecial_solarflare_kiblast"), 0, x, y-20, sprSize * 1.15, sprSize * 1.15, state_timer * 6.42, c_white, 0.85 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_light"), 0, x, y-20, sprSize, sprSize, state_timer * 9.85, c_white, 0.85 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_kiblast"), 0, x, y-20, sprSize, sprSize, state_timer * 3.268, c_white, 0.85 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_light"), 0, x, y-20, -sprSize, sprSize, state_timer * 18.85, c_white, 0.85 );
	} else if (window == 4) {
		draw_sprite_ext( sprite_get("dspecial_solarflare_kiblast"), 0, x, y-20, sprSize * 1.15, sprSize * 1.15, state_timer * 6.42, c_white, (dspecTimerVar / 9)-.15 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_light"), 0, x, y-20, sprSize, sprSize, state_timer * 9.85, c_white, (dspecTimerVar / 9)-.15 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_kiblast"), 0, x, y-20, sprSize, sprSize, state_timer * 3.268, c_white, (dspecTimerVar / 9)-.15 );
		draw_sprite_ext( sprite_get("dspecial_solarflare_light"), 0, x, y-20, -sprSize, sprSize, state_timer * 18.85, c_white, (dspecTimerVar / 9)-.15 );
	}
}