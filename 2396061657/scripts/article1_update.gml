// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (free){
	vsp += .5;
}

if (state_timer == 1){
	state = 1;
}

if (player_id.attack == AT_DSPECIAL && player_id.window == 2 && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && point_distance( player_id.x, player_id.y, x, y) < 275) {
	state = 1;
	hsp = 10 * dcos(point_direction(x, y, player_id.x, player_id.y - 20));
	vsp = -10 * dsin(point_direction(x, y, player_id.x, player_id.y - 20));
}
else {
	if (hsp > 0){
		hsp -= .1;
	}

	if (hsp < 0){
		hsp += .1;
	}
	
	if (!free && hsp >= -2 && hsp <= 2){
		state = 2;
		vsp = 0;
	}
}

if (state == 1){ // Hearts fly, can be collected by Callie
	
	if (!free && hsp == 0){
//		vsp = 0;
		state = 2;
	}
		
	if (state_timer > 20){
		var collected = false;
		var pointsgain = false;
		with (oPlayer){
			if (place_meeting(x, y, other)){
				if (player == other.player){
					collected = true;
					pointsgain = true;
				}
			}
		}
		
		if (pointsgain){
			if (player_id.LoveMeter <= 190){
				player_id.LoveMeter += 10;
			}
		}
		
		if (collected){
			state = 3;
		}
	}
}

if (state == 2){ // Can be collected when other player interacts with hearts

	var collected = false;
	var pointsgain = false;
	var otherpoints = false;
	with (oPlayer){
		if (place_meeting(x, y, other)){
			collected = true;
			if (player == other.player){
				pointsgain = true;
			}
			if (player != other.player && url == other.player_id.url){
				otherpoints = true;
			}
		}
	}
	
	if (pointsgain || otherpoints){
		if (pointsgain){
			if (player_id.LoveMeter <= 190){
				player_id.LoveMeter += 10;
			}	
		}
		
		if (otherpoints){
			with(oPlayer){
				if (place_meeting(x, y, other) && player != other.player && "GrappleMode" in self){
					if (LoveMeter  <= 190){
						LoveMeter += 10;
					}
				}		
			}
		}
	}
	
	if (collected){
		state = 3;
	}	
}

if (state == 3){ // Plays a sound and then kills the heart

	var random_function = random_func(0, 2, true);
	if (random_function <= 0.5){
		random_function += 1;
	}
	if (random_function >= 1.75){
		random_function -= 0.25;
	}
	sound_play(sound_get("heartcollect"), false, noone, .3, random_function);

	instance_destroy();
	exit;
}

if (state_timer == 520 || y > room_height - 50){
	instance_destroy();
	exit;
}

if ((state_timer < 520 && state_timer > 515) || (state_timer < 510 && state_timer > 505) || (state_timer < 500 && state_timer > 490) || (state_timer < 480 && state_timer > 470) || (state_timer < 460 && state_timer > 450) || (state_timer < 440 && state_timer > 430)){
	image_alpha = 0;
}

if ((state_timer < 515 && state_timer > 510) || (state_timer < 505 && state_timer > 500) || (state_timer < 490 && state_timer > 480) || (state_timer < 470 && state_timer > 460) || (state_timer < 450 && state_timer > 440) || (state_timer < 430 && state_timer > 420)){
	image_alpha = 1;
}
