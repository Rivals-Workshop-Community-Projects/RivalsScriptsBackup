//update
if !(get_player_color( player ) == 16) { 
	if (wblastcharge >= 35) { 
		var outlineclr = (sin((get_gameplay_time() - wblastcharge) * 0.2) * -50) + 50
		outline_color = [ 0, outlineclr * 1.05, outlineclr * 2];

		if get_gameplay_time() mod 25 == 0 {
				spawn_hit_fx(x-30, y-60, nspecialAfter);
		}
		if get_gameplay_time() mod 20 == 0 {
				spawn_hit_fx(x+30, y-40, nspecialAfter);
		}
		if get_gameplay_time() mod 30 == 0 {
				spawn_hit_fx(x-34, y-14, nspecialAfter);
		}
	}
	else 
	if (get_player_color( player) == 19) {
		outline_color = [ 23, 22, 97];
	}	else {
		outline_color = [ 0, 0, 0 ];
	}
}

if !free {
	if stupidstall == false {
		stupidstall = true;
	}
}

if (get_player_color( player ) == 16) {
	if (wblastcharge >= 35) and ((get_gameplay_time() mod 20) >= 5) {
		outline_color = [ 40, 100, 255];
	}
	else {	
		outline_color = [31, 31, 31];
	}
}

init_shader();

if (wblastcharge > 35) { //Ensure wblastcharge never goes above 35
	wblastcharge = 35;
}

if (0 > wblastcharge) { //Ensure wblastcharge never goes below zero
	wblastcharge = 0;
}

if !(url == 1882960192) {
	set_state(PS_DEAD);
}

///runes thing
if has_rune("G") { //Rune G: Charging NSpecial boosts stats.
	if wblastcharge >= 35 {
	walk_anim_speed = .31;
	dash_anim_speed = .5;
	
	walk_speed = 5;
	walk_accel = 0.4;		
	initial_dash_speed = 8;
	dash_speed = 8;
	
	air_max_speed = 6;
	jump_speed = 11.9;
	djump_speed = 11;
	max_jump_hsp = 7.5;
} else { //reset
		walk_anim_speed = .21;
		dash_anim_speed = .35;
		
		walk_speed = 4;
		walk_accel = 0.3;		
		initial_dash_speed = 7.5;
		dash_speed = 6.5;
		
		air_max_speed = 5;
		jump_speed = 10.9;
		djump_speed = 10;
		max_jump_hsp = 6;
	}
}