// article1_update.gml
// This is where all the data stuff is for how this object/article functions

state_timer++

if (free){
	vsp += .5;
}

if (state_timer == 1){
	state = 1;
}

if (state == 1){ // Hearts fly, can be collected by Callie
	if (hsp > 0){
		hsp -= .05;
	}

	if (hsp < 0){
		hsp += .05;
	}
	
	if (!free && hsp == 0){
		vsp = 0;
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
			if (player_id.LoveMeter[player_id.GrappleMode] <= 190){
				player_id.LoveMeter[player_id.GrappleMode] += 10;
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
			if (player_id.LoveMeter[player_id.GrappleMode]  <= 190){
				player_id.LoveMeter[player_id.GrappleMode] += 10;
			}	
		}
		
		if (otherpoints){
			with(oPlayer){
				if (place_meeting(x, y, other) && player != other.player && "GrappleMode" in self){
					if (LoveMeter[GrappleMode]  <= 190){
						LoveMeter[GrappleMode] += 10;
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

if (state_timer == 320 || y > room_height - 50){
	instance_destroy();
	exit;
}

if ((state_timer < 320 && state_timer > 315) || (state_timer < 310 && state_timer > 305) || (state_timer < 300 && state_timer > 290) || (state_timer < 280 && state_timer > 270) || (state_timer < 260 && state_timer > 250) || (state_timer < 240 && state_timer > 230)){
	image_alpha = 0;
}

if ((state_timer < 315 && state_timer > 310) || (state_timer < 305 && state_timer > 300) || (state_timer < 290 && state_timer > 280) || (state_timer < 270 && state_timer > 260) || (state_timer < 250 && state_timer > 240) || (state_timer < 230 && state_timer > 220)){
	image_alpha = 1;
}
