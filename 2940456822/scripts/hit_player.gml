/*
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.player_id == id) {

}
*/
if !(my_hitboxID.player_id == id && my_hitboxID.type == 2) {
	mic_grabbed_obj = -4;
}

if (my_hitboxID.type == 1 && my_hitboxID.player_id == id) {
	switch(my_hitboxID.attack) {
		case AT_DAIR:
			dair_bounce = true;
		break;
		case AT_DATTACK:
			if (my_hitboxID.hbox_num == 8) {
				hit_player_obj.can_tech = true;
			}
		break
	}
}

if (my_hitboxID.type == 2 && my_hitboxID.player_id == id) {
	switch(my_hitboxID.attack) {
		case AT_FSPECIAL:
			if (hit_player_obj.state_cat == SC_HITSTUN) {
				my_hitboxID.mic_grabbed_obj = hit_player_obj;
				djumps = 0;
			}
		break;
		case AT_NSPECIAL:
			with hit_player_obj {
				if ((!hitstop)) {
					if !(state == PS_PRATFALL || state == PS_PRATLAND) { //Opponents can't be put to sleep while in the hitpause of another move. This prevents glitches and cheese
						spawn_hit_fx(x, y - char_height / 2, 301);
						sound_play(asset_get("sfx_pom_note_hit"));
						if (free) {
							set_state(PS_PRATFALL);
							vsp = -5;
						} else {
							set_state(PS_PRATLAND);
						}
						was_parried = true;
						parry_lag = 90 + get_player_damage(player);
					} else {
						was_parried = true;
						parry_lag = 90 + get_player_damage(player);
					}
				}
			}
		break;
	}
}
