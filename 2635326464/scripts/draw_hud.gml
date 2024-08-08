	shader_start();

	if ("has_tricked" in self){
		if ( (has_tricked == 1) || (has_charged_countdown) || (attack == AT_DATTACK && (window == 2 || window == 3) && has_hit && get_gameplay_time() > 1 && state == PS_ATTACK_GROUND)){
			draw_sprite_ext(sprite_get("hud_boost"), 0, temp_x+28, temp_y+8, 1, 1, 0, c_white, 0.35);
		}
	}
	shader_end();

//lightning hud bar

	if("lightning_cooldown_active" in self && lightning_cooldown_active == 1){
		draw_sprite_ext(sprite_get("hud_lightning"), (1 - (lightning_timer/lightning_recharge))*25, temp_x + 48, temp_y - 4, 2, 2, 0, c_white, 1);
	} else if ("lightning_hud_timer_active" in self && lightning_hud_timer_active == 1){
		draw_sprite_ext(sprite_get("hud_lightning"), 25, temp_x + 48, temp_y - 4, 2, 2, 0, c_white, 1);
	}


//banana hud bar

	if("banana_present" in self && banana_present == 0 && move_cooldown[AT_DSPECIAL] > 0){
		draw_sprite_ext(sprite_get("hud_banana"), (1 - (move_cooldown[AT_DSPECIAL]/180))*25, temp_x + 160, temp_y - 4, 2, 2, 0, c_white, 1);
	} else if ("banana_hud_timer_active" in self && banana_hud_timer_active == 1){
		draw_sprite_ext(sprite_get("hud_banana"), 25, temp_x + 160, temp_y - 4, 2, 2, 0, c_white, 1);
	}

//draw_debug_text(temp_x+94, temp_y-16,string(engine_timer));
//draw_debug_text(temp_x+94, temp_y-16,string(has_tricked));
//draw_debug_text(temp_x+114, temp_y-16,string(banana_hud_timer));