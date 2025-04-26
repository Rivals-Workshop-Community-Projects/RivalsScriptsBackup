//
if state == PS_PRATLAND && sprite_index != sprite_get("pratland") { sprite_index = sprite_get("pratland"); }

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) { 
	if hitpause image_index = lerp(0, get_window_value(attack, window, AG_WINDOW_ANIM_FRAMES), window_timer/get_window_value(attack, window, AG_WINDOW_LENGTH))+get_window_value(attack, window, AG_WINDOW_ANIM_FRAME_START);
	if attack == AT_DSTRONG && (window >= 4 && window <= 6) image_index = 8+(((window_timer+(window == 5 ? 0 : 32))*.2)%3);
}



//Voices Play
var random_voice;
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && !hitpause && synced_vars[0] == 1){
	if (attack == AT_NSPECIAL && window == 3 && window_timer == 0){
		random_voice = random_func( 0, 2, true);
		switch (random_voice){
			case 0:
			sound_play(nspecial_voice);
			break;
		}
	} 
	if (attack == AT_NSPECIAL_2 && window == 2 && window_timer == 0) sound_play(dark_inferno_voice);
	if ((attack == AT_FSPECIAL || attack == AT_FSPECIAL_2)){
		if (fspecial_teleport == true && window == 2 && window_timer == 0){
			random_voice = random_func( 0, 2, true);
			switch (random_voice){
				case 0:
				sound_play(fspecial_teleport_voice1);
				break;
				case 1:
				sound_play(fspecial_teleport_voice2);
				break;
			}
		}
		if (window == 1 && window_timer == 8) sound_play(soul_steal_voice);
	} 
	if (attack == AT_DSTRONG){
		if (window == 1 && window_timer == 16) sound_play(dstrong_charge_voice);
		if (window == 3 && window_timer == 6 && !hitpause) {
			sound_stop(dstrong_charge_voice);
			sound_play(demonic_megiddo_voice);
		}
	}
	if (attack == AT_USTRONG && window == 2 && window_timer == 0) sound_play(fatal_ray_voice);
	if (attack == AT_DATTACK && window == 2 && window_timer == 6) sound_play(bat_moon_voice);
	if (attack == AT_USPECIAL && window == 1 && window_timer == 12){
		random_voice = random_func( 0, 6, true);
		switch (random_voice){
			case 0:
			sound_play(uspecial_laugh1);
			break;
			case 1:
			sound_play(uspecial_laugh2);
			break;
			case 2:
			sound_play(uspecial_laugh3);
			break;
			case 3:
			sound_play(uspecial_laugh4);
			break;
			case 4:
			sound_play(uspecial_laugh5);
			break;
			case 5:
			sound_play(uspecial_laugh6);
			break;
		}
	} 
	if (attack == AT_UTILT && window == 2 && window_timer == 2 && utilt_hit) sound_play(utilt_voice);
	if ((attack == AT_JAB || attack == AT_FTILT || attack == AT_DTILT || attack == AT_NAIR || attack == AT_FAIR || attack == AT_BAIR 
	|| attack == AT_DAIR || attack == AT_UAIR) && (window == 2 && window_timer == 0)){
		random_voice = random_func( 0, 18, true);
		switch (random_voice){
			case 0:
			sound_play(grunt1);
			break;
			case 1:
			sound_play(grunt2);
			break;
			case 2:
			sound_play(grunt3);
			break;
			case 3:
			sound_play(grunt4);
			break;
			case 4:
			sound_play(grunt5);
			break;
			case 5:
			sound_play(grunt6);
			break;
			case 6:
			sound_play(grunt7);
			break;
			case 7:
			sound_play(grunt8);
			break;
			case 8:
			sound_play(grunt9);
			break;
			case 9:
			sound_play(grunt10);
			break;
		}
	}
	if (attack == AT_TAUNT && window == 1){
		if (window_timer == 0){
			sound_stop(taunt_voice1);
			sound_stop(taunt_voice2);
			sound_stop(taunt_voice3);
			sound_stop(taunt_voice4);
			sound_stop(taunt_voice5);
			sound_stop(taunt_voice6);
			sound_stop(taunt_voice7);
			sound_stop(taunt_voice8);
			sound_stop(taunt_voice9);
			sound_stop(taunt_voice10);
			sound_stop(taunt_voice11);
			sound_stop(taunt_voice12);
			sound_stop(taunt_voice13);
			sound_stop(taunt_voice14);
			sound_stop(taunt_voice15);
		}
		if (window_timer == 1 && page == 0){
			random_voice = random_func( 0, 15, true);
			switch (random_voice){
				case 0:
				sound_play(taunt_voice1);
				break;
				case 1:
				sound_play(taunt_voice2);
				break;
				case 2:
				sound_play(taunt_voice3);
				break;
				case 3:
				sound_play(taunt_voice4);
				break;
				case 4:
				sound_play(taunt_voice5);
				break;
				case 5:
				sound_play(taunt_voice6);
				break;
				case 6:
				sound_play(taunt_voice7);
				break;
				case 7:
				sound_play(taunt_voice8);
				break;
				case 8:
				sound_play(taunt_voice9);
				break;
				case 9:
				sound_play(taunt_voice10);
				break;
				case 10:
				sound_play(taunt_voice11);
				break;
				case 11:
				sound_play(taunt_voice12);
				break;
				case 12:
				sound_play(taunt_voice13);
				break;
				case 13:
				sound_play(taunt_voice14);
				break;
				case 14:
				sound_play(taunt_voice15);
				break;
			}
		}
		if (window_timer == 1 && page != 0) sound_play(taunt_ditto);
	}
}