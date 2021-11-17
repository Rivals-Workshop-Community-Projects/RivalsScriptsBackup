//article3_update.gml

//track player
//x = player_id.x;
//y = player_id.y + 22 * (player_id.state == PS_CROUCH);




depth = player_id.depth - 1;

if (player_id.ralsei_heart_active) {
	time_active++;
	time_since_last_graze++;
	spr_dir = player_id.spr_dir;
	
	if (time_since_last_graze > 30) {
		image_index = min(3, floor(time_active / 4));
	}
	else 
	{
		image_index = 4;
	}
	image_alpha = 1;
	var graze_tally = 0;
	if (place_meeting(x, y, pHitBox)) { //do one check for all hitboxes, before checking every hitbox individually
		with (pHitBox) {
			if (get_player_team( player ) == other.ralsei_player_team || damage < 1 || "ralsei_graze" in self || !place_meeting(x, y, other)) continue;
			//if (!place_meeting(x, y, other)) continue;
			
			
			var tally_increase = min(3, floor(other.time_since_last_graze / 10));
			
			//check for other melee hitboxes with the same hitbox group. find the average damage.
			
			if (type == 1) {
				var maximum_damage = damage;
				var minimum_damage = damage;
				var detected_hbox_group = hbox_group;
				var detected_hbox_player_id = player_id;
				//var detected_hbox_hitpause = 0;
				with (pHitBox) {
					if (hbox_group == detected_hbox_group && player_id == detected_hbox_player_id && type == 1 && damage >= 1) {
						ralsei_graze = 1;
						//find the average amount of damage this attack would have dealt
						maximum_damage = max(maximum_damage, damage);
						minimum_damage = clamp(damage, 0, minimum_damage);
						//see if it deals hitpause
						//detected_hbox_hitpause = max(detected_hbox_hitpause, hitpause);
					}
				}
				
				graze_tally += ceil((maximum_damage + minimum_damage) / 2) + tally_increase;//min(3, max(floor(time_since_last_graze / 10));
				
				//give the attacking player slight hitpause.
				//if (detected_hbox_hitpause > 0) {
				//	var apply_hitpause = clamp(ceil(detected_hbox_hitpause / 2), 4, 8);
				//	player_id.hitpause = true;
				//	player_id.hitstop = max(player_id.hitstop, apply_hitpause);
				//}
				
			}
			//for projectiles, just treat them all individually. count additional effects (poison fire etc) as extra TP.
			else {
				ralsei_graze = 1;
				graze_tally += damage + tally_increase + (effect > 0 && effect != 9 && effect != 12) * 2;
			}
			
			other.time_since_last_graze = 0;
		}
	}
	if (graze_tally >= 1) {
		//play graze sound
		sound_play(snd_graze);
		time_since_last_graze = 0;
		
		with (player_id) {
			ralsei_tp += floor(min(graze_tally * 2, 60));
			if (ralsei_tp >= ralsei_max_tp) {
				ralsei_tp_drain_lock = ralsei_tp_drain_lock_time;
			}
		}

	}
}
else {
	image_alpha -= 0.04;
	time_active = 0;
	time_since_last_graze = 30;
}


