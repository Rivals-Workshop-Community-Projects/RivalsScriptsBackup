if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)
{
	switch(attack) {
	/*
		case AT_FSTRONG:
			with (my_hitboxID) 
				if(hbox_num == 1) 
					other.grabp[array_length_1d(other.grabp)] = other.hit_player_obj;
			break;
	*/
		case 44:
			dash_timer = 0;
			with (my_hitboxID) 
				if(hbox_num == 1) 
					other.grabp = other.hit_player_obj;
			break;
		case 46: //AT_DTILT_MACH
			set_state(PS_FIRST_JUMP);
			dash_timer = 0;
			hsp = spr_dir*3;
			old_hsp = spr_dir*3;
			vsp = -7;
			old_vsp = -7;
			break;
		case AT_UAIR:
			vsp = -13;
			old_vsp = -13;
			break;
	}
}
combo++;
combo_got_hit = false;
if(combo%10 == 0)
{
	has_supertaunt = true;
	sound_play(sound_get("comboup" + string(random_func(0, 3, true) + 1)));
	ptv_next_anim = 8;

	combo_very = combo > 10;
	combo_words_timer = 150;
	combo_words_id = random_func(1, 17, false);
}
combo = min(99, combo)
//combo_timer = 150;
combo_timer = 210;