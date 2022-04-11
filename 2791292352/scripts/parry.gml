cofa_mummy_timer = 0;


switch(enemy_hitboxID.attack){
	case AT_NSPECIAL:
		if ("is_cofa_nspecial" in enemy_hitboxID && enemy_hitboxID.is_cofa_nspecial) && (enemy_hitboxID.hbox_num == 1){
			var spd_mult = 1.2;
			var max_speed = 90;
			enemy_hitboxID.hitbox_timer = 0; // reset lifetime
			enemy_hitboxID.destroyed = false; // don't destroy, shouldn't be true anyway, but failsafe
			enemy_hitboxID.hsp = enemy_hitboxID.hsp*spd_mult; // speed up
			enemy_hitboxID.vsp = enemy_hitboxID.vsp*spd_mult; // speed up
			enemy_hitboxID.hsp = clamp(enemy_hitboxID.hsp, -max_speed, max_speed); // clamp speed
			//enemy_hitboxID.vsp = clamp(enemy_hitboxID.hsp, -max_speed, max_speed); // clamp speed
			
			// group reflection
			var parried_hbox = enemy_hitboxID;
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