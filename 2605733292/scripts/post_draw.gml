//post_draw.gml

/*
draw_debug_text( x, y - 200, "sleep inc tick: " + string(damageIncrementTick))
draw_debug_text( x, y - 220, "sleep wake up dmg value: " + string(damageToWakeUp))
draw_debug_text( x, y - 240, "sleep timer: " + string(sleepingTimer))
draw_debug_text( x, y - 260, "state timer: " + string(state_timer))
draw_debug_text( x, y - 280, "state: " + get_state_name(state))
*/

if (isCurrSleeping){
	if (sleepHatSpr != noone && sleepHatShouldFlash == false){
		draw_sprite_ext(sleepHatSpr, sleepHatImageTimer, x, y - char_height + 40, spr_dir, 1, 0, c_white, 1);
	}
}