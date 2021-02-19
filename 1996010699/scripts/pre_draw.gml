if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (attack == AT_DSPECIAL){
	if(window == 1){
		hudBorder = item[ID_chosen, 8];
		if(window_timer >= 5 && window_timer < 7){
			draw_sprite(hudBorder, 0, x + 102, y - 35);
		} else if(window_timer >= 7 && window_timer < 9){
			draw_sprite(hudBorder, 1, x + 102, y - 35);
		} else if(window_timer >= 9) {
			draw_sprite(hudBorder, 2, x + 102, y - 35);
		}
	} else if(window == 2){
		draw_sprite(hudBorder, 2, x + 102, y - 35);
	} else if(window == 3){
		if(window_timer < 36){
			draw_sprite(hudBorder, 2, x + 102, y - 35);
		} else if(window_timer >= 33 && window_timer < 37){
			draw_sprite(hudBorder, 1, x + 102, y - 35);
		} else if(window_timer >= 37) {
			draw_sprite(hudBorder, 0, x + 102, y - 35);
		}
	}
}