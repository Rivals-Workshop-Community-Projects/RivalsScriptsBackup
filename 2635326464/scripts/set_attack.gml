// Tilt while dashing

	if (attack == AT_DATTACK && down_stick_pressed){
		attack = AT_DTILT;
	}

//Nair animation
	if (attack == AT_NAIR){
		if (next_trick == 1){
			set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
			set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
			next_trick = 2;
		} else 	if (next_trick == 2){
			set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 9);
			set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 11);
			set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 15);
			next_trick = 3;
		} else if (next_trick == 3){
			set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 18);
			set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 20);
			set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 24);
			next_trick = 1;
		}
	}

//Nspecial Fire Ball

	if (attack == AT_NSPECIAL && free){
		attack = AT_NSPECIAL_AIR;
	}

//Nspecial stopped

	if (attack == AT_NSPECIAL && !free && (hsp = 0 || (spr_dir == 1 && hsp < 0) || (spr_dir == -1 && hsp > 0))){
		attack = AT_NSPECIAL_2;
	}

//Nspecial fix
	if (attack == AT_NSPECIAL && ((spr_dir == 1 && hsp < 0) || (spr_dir == -1 && hsp > 0))){
		attack = AT_NSPECIAL_2;
	}

//Fspecial Bullet Bill

	if (attack == AT_FSPECIAL && free){
		attack = AT_FSPECIAL_AIR;
	}

// Uspecial glide

	if (((state_cat == SC_AIR_NEUTRAL || state_cat == SC_HITSTUN) && (up_down || up_pressed) && (special_down || special_pressed)) || (attack == AT_USPECIAL && free) || (attack == AT_USPECIAL && window == 1 && window_timer > 1)){
		attack = AT_USPECIAL_2;
		window_timer = 0;

		if (vsp > 0){
			window = 5;
		}
	}

// Spiny shell

if (attack == AT_FSTRONG){
		if (winner_exists == 1 && (!winner && winner_x != 0 && spiny_launched = 0)){
			attack = AT_FSTRONG_2
			spiny_launched = 1;
			spiny_shell_death = 0;
		}

		if (spiny_shell_death == 1){
			attack = AT_FSTRONG_2
			spiny_launched = 1;
			spiny_shell_death = 0;
		}
}

muno_event_type = 2;
user_event(14);