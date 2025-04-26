// hit in the gut

// tell boot to not hit people for 60 frames if you galaxied someone
/*
if (hit_player_obj != noone && hit_player_obj.activated_kill_effect) {
	print_debug("boot galaxy prevention active");
	boot_save_from_galaxy_prevention = 60;
}
*/

if (should_make_shockwave) { // prevents boot galaxy preventions. and also whitelines for some reason
	//print_debug("boot galaxy prevention active");
	boot_save_from_galaxy_prevention = 60;
}

//reset state of nspecial bar
if (enemy_hitboxID.effect != 9 || enemy_hitboxID.hitstun_factor != -1) {
	nspecial_active = false;
}
// resets name tag height if hit during taunt
// also reset air accel status
char_height = 52;

// reset cooldown on uspec and fspec when hit
move_cooldown[AT_USPECIAL] = 1;	
move_cooldown[AT_FSPECIAL] = 1;	

// lowers hype if you get hit before it's active
if (gimmick_activated == true) {
	if (hype_active == false) {
		if (hype > 0) && (hype < hype_max) {
			var hypelose = round(enemy_hitboxID.damage * 0.5);
			hype = hype - hypelose;
		} 
		
		// cant be below 0
		if (hype < 0) {
			hype = 0;
		}
	}
}