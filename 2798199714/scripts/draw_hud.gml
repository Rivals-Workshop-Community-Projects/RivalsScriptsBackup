draw_set_alpha(1)

if(BossMode){
	draw_sprite_ext(sprite_get("boss_hp_meter"), 2, temp_x + 110, temp_y, 2, 2, 0, c_white, 1);
	var length = (boss_display_hp*0.00666);
	draw_sprite_ext(sprite_get("boss_hp_meter"), 1, temp_x + 110, temp_y, length, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("boss_hp_meter"), 0, temp_x + 110, temp_y, 2, 2, 0, c_white, 1);
}

if(get_gameplay_time() <= 240){
    if(superop){
        draw_debug_text(temp_x, temp_y - 80, "Anti-cheapie activated!
(If you didn't want this, hold
Attack to disable next time)");
    }
}

muno_event_type = 5;
	user_event(14);