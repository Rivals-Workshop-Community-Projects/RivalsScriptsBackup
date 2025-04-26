uair_pratfall = false;
fstrong_made_noise = false;
grabp = noone;
switch(attack)
{
	case AT_DAIR:
	case AT_DTILT:
		if(dash_timer > 0)
		{
			//spr_dir = old_spr_dir*2 - 1;
			vsp = -8;
			attack = 46; //AT_DTILT_MACH
		}
		break;
	case AT_UAIR:
		uair_pratfall = true;
		pre_uair_hsp = hsp;
		set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 7);
		break;
	case AT_FSTRONG:
		set_num_hitboxes(AT_FSTRONG, 1);
		//leftover from phase 3		fstrongLoopTimer = 0;
		break;
	case AT_FSPECIAL:
		if(dash_timer > 0)
			set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 15);
		else
			set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 25);
		old_spr_dir = (spr_dir + 1) / 2;
		if(mach_sound_active)
			sound_stop(mach_sound);
		mach_sound_active = false;
		break;
	case AT_NSPECIAL:
		if(move_cooldown[AT_NSPECIAL] == 0)
			toppin_buddy_taunt = true; //check the toppin squad's comment section and change the variable name if needed
		if(taunt_dash_interrupt) {
			spr_dir = old_spr_dir*2 - 1;
		}
		madeTauntSound = false;
		if(has_rune("L") || phone_cheats[CHEAT_NSPECIALTYPE] == 2)
		{
			has_supertaunt = false;
			attack = AT_SUPERTAUNT;
			set_attack_value(AT_SUPERTAUNT, AG_SPRITE, sprite_get("supertaunt" + string(random_func(0, 3, true) + 1)));
			//ptv
			ptv_next_anim = 9;
		}
		else
		{
			if(tauntGotSpeedBack)
			{
				pretaunthsp = hsp;
				pretauntvsp = vsp;
			}
			tauntGotSpeedBack = false;
			var peddito = get_player_color(player) == 5 && get_synced_var(player) == 0;
			taunt_index = random_func(0, 24 + peddito, true) - peddito;
		}
		break;
	case AT_USPECIAL:
		if(has_supertaunt)
		{
			madeTauntSound = false;
			has_supertaunt = false;
			attack = AT_SUPERTAUNT;
			set_attack_value(AT_SUPERTAUNT, AG_SPRITE, sprite_get("supertaunt" + string(random_func(0, 3, true) + 1)));
			//ptv
			ptv_next_anim = 9;
		}
		else
		{
		    uspec_charge = 0;
			walkAnim = false;
			uspecialSoundActive = true;
			uspec_sound = sound_play(sound_get("superjump_charge"), false, noone, 1);
		}
		break;
	case AT_DSPECIAL:
		/*
		if(free || dash_timer > 0)
		{
		*/
			cancelTimer = 0;
			if(dash_timer > 0)
			{
				window = 3;
				sound_play(sound_get("frog"));
			}
		/*
		}
		else
			attack = AT_DSPECIAL_AIR;
		*/
		break;
	case 42: //AT_ENTRANCE
		break;
	case AT_TAUNT:
		if(!left_down && !right_down)
		{
			attack = 42; //AT_ENTRANCE
		}
		break;
}

//MunoPhone Touch
muno_event_type = 2;
user_event(14);
