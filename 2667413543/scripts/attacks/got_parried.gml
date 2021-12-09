if (hit_player_obj.cofa_mummy){
	hit_player_obj.cofa_mummy = false;
	hit_player_obj.cofa_mummy_id = noone;
	hit_player_obj.cofa_mummy_timer = 0;
}

switch(my_hitboxID.attack){
	case AT_NSPECIAL:
		if (my_hitboxID.hbox_num == 1){
			var spd_mult = 1.2;
			var max_speed = 130;
			my_hitboxID.hitbox_timer = 0; // reset lifetime
			my_hitboxID.destroyed = false; // don't destroy, shouldn't be true anyway, but failsafe
			my_hitboxID.hsp = my_hitboxID.hsp*spd_mult; // speed up
			my_hitboxID.vsp = my_hitboxID.vsp*spd_mult; // speed up
			my_hitboxID.hsp = clamp(my_hitboxID.hsp, -max_speed, max_speed); // clamp speed
			//my_hitboxID.vsp = clamp(my_hitboxID.hsp, -max_speed, max_speed); // clamp speed
			
			// group reflection
			var parried_hbox = my_hitboxID;
			var parried_player = hit_player_obj;
			with(asset_get("pHitBox")){
				if ("wow_hitbox_group" in self && player_id == other && wow_hitbox_group == parried_hbox.wow_hitbox_group && self != parried_hbox){ // is cofa nspecial and same group?
					player = parried_player.player; // set new owner
					hitbox_timer = 0; // reset lifetime
					destroyed = false; // don't destroy, shouldn't be true anyway, but failsafe
					hsp = (-hsp)*spd_mult; // speed up
					vsp = (-vsp)*spd_mult; // speed up
					hsp = clamp(hsp, -max_speed, max_speed); // clamp speed
					//vsp = clamp(hsp, -max_speed, max_speed); // clamp speed
				}
			}
		}
	break;
}
