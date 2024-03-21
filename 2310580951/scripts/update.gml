//update

//Roll
if (state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD) {

	if state_timer == 1 { 	sound_play(sound_get("teleport")); }
	
	if state_timer == 3 {
		if state == PS_ROLL_FORWARD {
			if (get_player_color( player ) == 0) {
				spawn_hit_fx(x, y, RollAfterDefL);
				} else {
				spawn_hit_fx(x, y, RollAfterL);		
			}
		} else {
			if (get_player_color( player ) == 0) {
				spawn_hit_fx(x, y, RollAfterDef);
				} else {
				spawn_hit_fx(x, y, RollAfter);		
			}
		}
	}
	sound_stop(asset_get("sfx_roll"));
} 

if state == PS_PARRY && state_timer == 0 {
	sound_play(sound_get("metal1"));
}

if state == PS_WALL_JUMP && state_timer == 0 && flyingTime <= 0 {
	flyingTime = 1;
}

if !free {
	kick = 0;
	canGoUp = true;
	flyingTime = 140;
}

//Jump stuff

if state == PS_FIRST_JUMP && state_timer == 0 {
	if jumps < 4 {
		jumps++;
	}
}

if state == PS_DOUBLE_JUMP && state_timer == 2 {
		sound_play(sound_get("flip"), false, noone, .5, .85);
}

if state == PS_FIRST_JUMP {
	if (jumps == 2 || jumps == 3) && state_timer == 2 {
		sound_play(asset_get("sfx_jumpground"), false, noone, .5, jumps-1);
	}	
	if jumps == 3 && (state_timer == 8 || state_timer == 18 || state_timer == 33) {
		sound_play(sound_get("flip"));
	}
}

if state == PS_WALL_JUMP || state == PS_AIR_DODGE {
	sound_stop( sound_get( "wind"));
}

if !free && ( (!(state == PS_JUMPSQUAT) && !(state == PS_LAND) && !(state == PS_LANDING_LAG) && !(state == PS_FIRST_JUMP) && !(state == PS_WAVELAND)) || (jumps > 3 || jumps > 2 && (spr_dir == 1 && hsp < 3 || spr_dir == -1 && hsp > 3)) ) {
	jumps = 0;
}
	
if  jumps == 2 { //Double Jump
	jump_speed = true_double_jump_speed;
	short_hop_speed = smol_jump_speed+2;
	} else
if  jumps == 3 { //Triple Jump
	jump_speed = triple_jump_speed;
	short_hop_speed = triple_jump_speed;
	} else  
	if jumps < 2 { //Regular jump stats
	jump_speed = regular_jump_speed;
	short_hop_speed = smol_jump_speed;
	}
if !(url == 2310580951) {
	set_state(PS_DEAD);
}

//Mario voice
if ItsAMeMario {
	if state == PS_FIRST_JUMP && state_timer == 1 {
		if jumps == 1 {
			sound_play(woo);
			}	
		else if jumps == 2 {
			sound_play(woohoo);
			}
		else if jumps == 3 {
			sound_play(yahoo);
			}
		else {
			sound_play(yah);
			}
	}

	if state == PS_WALL_JUMP && state_timer == 2 {
			sound_play(woo);
	}

	if state == PS_AIR_DODGE && state_timer == 2 {
			sound_play(boing);
	}
}