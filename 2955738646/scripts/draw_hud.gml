if (state == PS_SPAWN){
	ChaosEmerald = 0;
	EmeraldSense = 0;
	EmeraldChance = 0;
}

if (timestop == true){
	if (timestop_BG.state_timer < 60){
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-2 - (timestop_BG.state_timer / 3), 1, 0.1 + (timestop_BG.state_timer / 80), 0, c_white, 1);
	}
	if (timestop_BG.state_timer > 59){
		draw_sprite_ext(sprite_get("bar_time"), 0, temp_x+1, temp_y-26, 1, 1, 0, c_white, 1);
	}
	if (timestop_BG.state_timer > 60){
		draw_sprite_ext(sprite_get("bar_time_left"), timestop_time, temp_x+1, temp_y-26, 1, 1, 0, c_white, 1);
	}
}