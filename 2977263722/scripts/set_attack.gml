///#args attack // this line makes code editors not freak out for some reason

switch attack {
    case AT_TAUNT:
	    if up_down {
		    attack = AT_TAUNT_2;
		    sound_play(asset_get("sfx_ell_nair"), false, noone, 0.5, 1.5);
		    sound_play(sound_get("bully_noise_2"));
		} else if down_down {
		     attack = AT_EXTRA_2;
			 sound_play(sound_get("sm64_warp"));
	    } else if phone_practice && joy_pad_idle {
		    attack = AT_PHONE;
		} else if taunt_type >= 4 && taunt_type <= 7 {
		    attack = AT_EXTRA_1;
		} else if taunt_type = 9 {
		    attack = AT_EXTRA_3;
		}
		
	break;
	
	case AT_DSPECIAL:
	    if move_cooldown[AT_DSPECIAL] = 0 {
	        dspec_bounce = false;
	        sound_play(sound_get("bully_noise_2"));
		    set_num_hitboxes(AT_DSPECIAL, 2);
		}
	break;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);