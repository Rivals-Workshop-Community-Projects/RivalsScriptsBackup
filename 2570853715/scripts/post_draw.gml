if phone_cheats[cheat_funny_snail]{
	draw_debug_text(x, y, "woag");
}
if(attack == AT_FSPECIAL){
	if (window == 6){
		draw_sprite_ext(sprite_get("demon_small"), 4, x, y, 1+small_sprites, 1+small_sprites, 0, c_white, max(0, 11-window_timer));
	}
}

user_event(12);