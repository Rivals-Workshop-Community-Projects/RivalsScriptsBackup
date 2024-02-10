draw_set_alpha(1)

if(BossMode){
	draw_sprite_ext(sprite_get("boss_hp_meter"), 2, temp_x + 110, temp_y, 2, 2, 0, c_white, 1);
	var length = (boss_display_hp*0.00666);
	draw_sprite_ext(sprite_get("boss_hp_meter"), 1, temp_x + 110, temp_y, length, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("boss_hp_meter"), 0, temp_x + 110, temp_y, 2, 2, 0, c_white, 1);
}

muno_event_type = 5;
	user_event(14);