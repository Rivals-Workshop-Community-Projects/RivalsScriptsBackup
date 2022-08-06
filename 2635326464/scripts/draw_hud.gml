shader_start();

if ("has_tricked" in self){
	if ( (has_tricked == 1) || (has_charged_countdown) || (attack == AT_DATTACK && (window == 2 || window == 3) && has_hit && get_gameplay_time() > 1 && state == PS_ATTACK_GROUND)){
		draw_sprite(sprite_get("hud_boost"), 0, temp_x+28, temp_y+8);
	}
}
shader_end();

//draw_debug_text(temp_x+94, temp_y-16,string(winner_x));


//draw_debug_text(temp_x+74, temp_y-16,string(hsp));
//draw_debug_text(temp_x+94, temp_y-16,string(window_timer));
//draw_debug_text(temp_x+114, temp_y-16,string(intro_timer));