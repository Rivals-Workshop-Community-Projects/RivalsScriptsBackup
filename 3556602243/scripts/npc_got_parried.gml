//
var _hit_player_obj = hit_player_obj;
if "ror_player_id" in my_hitboxID {
	_hit_player_obj.ror_stage_parry_missile = my_hitboxID.ror_player_id;
}


with my_hitboxID {
	if type == 2 {
		hitbox_timer = 0;
	}
	//
	if "ror_blizzard_proj" in self && "ror_player_id" in self {
		with ror_player_id {
			was_parried = true;
			parry_lag = 60;
			set_state(PS_PRATFALL);
			//exit;
		}
		hitbox_timer = length;
	}
	//
	if "ror_shock_dart" in self && "ror_player_id" in self {
		with ror_player_id {
			set_state(PS_PRATFALL);
			was_parried = true;
			parry_lag = 60;
		}
		hitbox_timer = length;
	}
	
	
	
}