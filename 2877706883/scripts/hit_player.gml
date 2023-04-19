/*
if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.player_id == id) {

}
*/
//print(hit_player_obj.old_hsp)
//print(hit_player_obj.old_vsp)
if (my_hitboxID.attack == AT_USPECIAL && my_hitboxID.player_id == id && my_hitboxID.hbox_num == 1 && hit_player_obj.state_cat == SC_HITSTUN) {
	//hit_player_obj.old_hsp = spr_dir * 2.26;
	//hit_player_obj.old_vsp = -12.80;
	hit_player_obj.vi_uspecial_set_player_id = id;
	print("VI HAS SET KNOCKBACK AND DIRECTIONAL INFLUENCE ON UP SPECIAL. YOU ARE NOT BAD AT DI ON THIS MOVE")
}

switch(my_hitboxID.attack) {
	case AT_NSPECIAL:
		if (allow_sounds) {
			sound_play(sound_get("Damage0"));
		}
	break;
	case AT_FSPECIAL:
		if (allow_sounds) {
			sound_play(sound_get("Damage1"));
		}
	break;
	case AT_DSPECIAL:
		if (my_hitboxID.hbox_num != 26) {
			my_hitboxID.vsp = -6;
			my_hitboxID.hsp = 0;
		}
		
		switch(my_hitboxID.hbox_num) {
			case 2:
				if (hit_player_obj.state_cat == SC_HITSTUN) {
					with hit_player_obj {
						set_state(PS_PRATFALL);
						was_parried = true;
						parry_lag = 120;
						old_vsp = 0;
						old_hsp = 0;
					}
				}
			break;
			case 7:
				sound_play(asset_get("sfx_forsburn_combust"), false, noone, .5, 1)
			break;
			case 10:
				sound_play(asset_get("sfx_kragg_rock_shatter"), false, noone, .5, 1)
			break;
			case 3:
				if (allow_sounds) {
					sound_play(sound_get("Poison"), false, noone, .5, 1)
				} else {
					sound_play(asset_get("sfx_poison_hit_med"), false, noone, .5, 1)
				}
				if (hit_player_obj.state_cat == SC_HITSTUN) {
					hit_player_obj.vi_poison_timer += vi_poison_stack;
					hit_player_obj.vi_poison_id = id;
				}
			break;
		}
	break;
}

if (my_hitboxID.type != 2 || (my_hitboxID.attack == AT_UTILT && my_hitboxID.player_id == id)) {
	item_mistake_rate = 0;
}
