//Article2 post draw

switch(variant) {
	case "koopa shell":
		switch(state) {
			case "Spin":
				var arrow_colour = c_white;
				if(kicker != noone) arrow_colour = get_player_hud_color(kicker.player);
				
				draw_sprite_ext(sprite_get("_pho_cooldown_arrow"), 0, x - 7, y - 28, 1, 1, 0, arrow_colour, image_alpha);
			break;
		}
	break;
}