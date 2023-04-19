muno_event_type = 4;
user_event(14);

if state == PS_ATTACK_GROUND && attack = AT_USTRONG{
shader_start();
draw_sprite(sprite_get("ustrong_crystal"), image_index, x, y);
shader_end();
}

if sprite_index = sprite_get("taunt_blank") {
    if !respawn_taunt {
	shader_start();
	draw_sprite_ext(sprite_get("taunt"), image_index, x, y, spr_dir, 1, 0, c_white, 1 );
	shader_end();
	} else {
	shader_start();
	draw_sprite_ext(sprite_get("plat_taunt"), image_index, x, y, spr_dir, 1, 0, c_white, 1 );
	shader_end();
	}
}

if alt = 6 && spawn_still {
	//draw_sprite_ext(sprite_get("idle_seasonal_" +string(get_match_setting(SET_SEASON)) ), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
	draw_sprite_ext(sprite_get("idle_seasonal_" +string(debug_season) ), image_index, x, y, spr_dir*2, 2, 0, c_white, 1 );
}

//Munophone
user_event(12); 