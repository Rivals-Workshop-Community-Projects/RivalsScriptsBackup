//article3_update.gml


//track object
if (follow_object_id != noone && instance_exists(follow_object_id)) {
	x = follow_object_id.x;
}
else {
	follow_object_id = noone;
}

if (spawn_check == 0) {
	spawn_check = 1;
	//destroy other pillars upon spawn
	if (instance_number(obj_article3) > 1) {
		with (obj_article3) {
			if (id == other.id || player_id != other.player_id) continue;
			lifetime = min(lifetime, 0);
		}
	}
}

image_index += 0.1 + activated;

//opacity/lifetime
if (image_xscale < max_xscale) {
	image_xscale += 0.1;
}
/*
else {
	if (lifetime > 0) {
		lifetime--;
	}
	else {
		image_alpha -= 0.01 * (1 + (max_xscale < 1));
	}
}
*/
//collision poll
else if (!activated) {
	lifetime--;
	collision_poll = (collision_poll + 1) mod 2;
	if (collision_poll == 1) {
		//check for collisions
		var old_xscale = image_xscale;
		image_xscale = max_xscale;
		var tempvar_checkplayer = false;
		var tempvar_any_collision_occured = false;
		with (oPlayer) {
			if (id == other.player_id) continue;
			
			if (!hitpause && position_meeting(x, y, other) && state != PS_RESPAWN) {
				
				tempvar_any_collision_occured = true;
				
				//other player is immune during any of these states
				switch (state) {
					case PS_ROLL_FORWARD:
					case PS_AIR_DODGE:
					case PS_ROLL_BACKWARD:
					case PS_TECH_GROUND:
					case PS_TECH_FORWARD:
					case PS_TECH_BACKWARD:
					case PS_WALL_TECH:
					case PS_PARRY_START:
					case PS_PARRY:
					case PS_RESPAWN:
					case PS_DEAD:
					case PS_SPAWN:
						tempvar_checkplayer = false; break;
					default:
						tempvar_checkplayer = (!invincible && !initial_invince); break;
				}
				
				
				if (tempvar_checkplayer) {
				
					//cosmetic rules
					if (epinel_other_weightless_timer <= 12) {
						//vsp -= 1 + gravity_speed;
						
						//play sound
						if (epinel_other_weightless_inflicted <= 0) {
							with (other) { sound_play(sound_get("drop")); spawn_hit_fx(other.x, other.y, player_id.epinel_fx_inertia); }
							//slightly increase stun when hit into the beam
							if (hitstun >= 1 && state_cat == SC_HITSTUN) {
								hitstun += 8;
							}
						}
						
						
						
						//reset the affected player's wall jump if they were newly affected by inertia
						if (epinel_other_weightless_timer <= 1) {
							has_walljump = true;
						}
					}
					
					//inflict inertia
					if (other.follow_object_id == noone) {
						if (other.max_xscale < 1) {
							epinel_other_weightless_inflicted = max(epinel_other_weightless_inflicted, 5);
						}
						else {
							epinel_other_weightless_inflicted = max(epinel_other_weightless_inflicted, 3);
						}
					}
					else {
						epinel_other_weightless_inflicted = 3;
					}
					epinel_other_player_that_inflicted_weightless_id = other.player_id;
	
				}
			}
			
		}
		image_xscale = old_xscale;
		
		if (tempvar_any_collision_occured) {
			activated = true;
			lifetime = 0;
			sound_play(sound_get("releaseland"), 0, noone, 1, 0.75);
			//lifetime = min(150 * (1 + player_id.runeL), max(0, lifetime - 2));
			//lifetime = min(150 * (1 + player_id.runeL), lifetime);
			image_alpha = 1.5; //min(image_alpha, 0.95);
		}
	}
	if (lifetime <= 0) activated = true;
}
else if (image_alpha > 0.7) {
	image_alpha -= 0.05;
}
else {
	image_alpha -= 0.1;
	//destroy when invisible
	if (image_alpha <= 0) instance_destroy();
}


