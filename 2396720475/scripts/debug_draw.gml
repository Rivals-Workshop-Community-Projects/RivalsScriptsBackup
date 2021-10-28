// debug_draw.gml
// draws debug text/sprites in front of everything

if (attack == AT_TAUNT && state == PS_ATTACK_GROUND){
	if (get_player_color(player) == 14){
		if (death_chime_sound){
			
			draw_sprite_ext(sprite_get("final_crimes"), -1, view_get_xview() + 55, view_get_yview() + 66, 1, 1, 0, c_white, 1);
			
			draw_set_font(asset_get("fName"));
			
			draw_text_color(view_get_xview() + 859, view_get_yview() + 78, string(fps) + "FPS", c_white, c_white, c_white, c_white, 1);

			draw_set_font(asset_get("medFont"));
			draw_set_halign(fa_center);
			draw_set_valign(fa_middle);
			
			draw_text_color(view_get_xview() + 485, view_get_yview() + 210, string(FF14_meme_text), c_white, c_white, c_white, c_white, 1);
			depth = 10;
		}
	}
}


if(tomoyai){
	draw_sprite_ext(sprite_get("tomoyai_meter"), -1, view_get_xview() + 150, view_get_yview() + 100, 1, 1, 0, c_white, 1);

	yai_shout[yai_shout_num] = draw_sprite_ext(sprite_get("taunt4"), 3, view_get_xview() + 154 + yai_x, view_get_yview() + 130, 1, 1, 0, c_white, 1);

	draw_sprite_ext(sprite_get("tomoyai_bar"), -1, view_get_xview() + 154 + (yai_timer * 3.31), view_get_yview() + 96, 1, 1, 0, c_white, 1);


	draw_debug_text(x, y, string(yai_timer));
}
