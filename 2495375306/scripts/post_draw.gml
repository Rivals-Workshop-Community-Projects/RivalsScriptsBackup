if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL){
		if (window == 2 or window == 3){
			draw_sprite_ext(sprite_get("nspecial_icons"), last_choice, x, y - 30, 1, 1, 0, c_white, 1);
		}
		if (window == 3 && free == true){
			draw_sprite_ext(sprite_get("nspecial_quicktime"), floor(quicktimer / 2), x, y + 30, 1, 1, 0, c_white, 1);
		}
	}
}



user_event(12);