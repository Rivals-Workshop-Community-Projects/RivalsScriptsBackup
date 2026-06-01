// set_attack.gml


/*
// Air USpecial
if (attack == AT_USPECIAL){
	if (window == 1){
		if (free){
			attack = AT_USPECIAL_AIR;
		}
	}
}


// Down Taunt
if (!free && attack == AT_TAUNT && down_down) {
	attack = AT_TAUNT_2;
}
*/



//
if (
attack == AT_JAB
|| attack == AT_FTILT
|| attack == AT_UTILT
|| attack == AT_DTILT
|| attack == AT_DATTACK
|| attack == AT_NAIR
|| attack == AT_FAIR
|| attack == AT_UAIR
|| attack == AT_DAIR
|| attack == AT_BAIR
|| attack == AT_FSTRONG
|| attack == AT_USTRONG
|| attack == AT_DSTRONG
){
	if (holding_sd_card){	
		
		// neutral or forward throw
		if (
		attack == AT_JAB
		|| attack == AT_DATTACK
		|| attack == AT_FTILT
		|| attack == AT_FAIR
		|| attack == AT_FSTRONG
		|| attack == AT_BAIR
		){
			if (attack == AT_BAIR){
				spr_dir *= -1;
			}
			
			// print("neutral throw");
			nspec_rethrow_throw_dir = 2;
			
			// throw startup 
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7 + 7);
			
			// throw active
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9 + 7);

			// throw endlag
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10 + 7);
		} else
		if (
		attack == AT_UTILT
		|| attack == AT_UAIR
		|| attack == AT_USTRONG
		){
			// print("up throw");
			nspec_rethrow_throw_dir = 1;
			
			// throw startup 
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7 + 14);
			
			// throw active
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9 + 14);

			// throw endlag
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10 + 14);
		} else
		if (
		attack == AT_DTILT
		|| attack == AT_DAIR
		|| attack == AT_DSTRONG
		){
			// print("down throw");
			nspec_rethrow_throw_dir = 3;
			
			// throw startup 
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7 + 21);
			
			// throw active
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
			set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9 + 21);

			// throw endlag
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10 + 21);
		}
		
		
		attack = AT_NSPECIAL;	// for now
		window = 3;
		window_timer = 0;
		sd_card_number = held_sd_card_num;
		nspec_b_reverse_allow_timer = 3;
	}
}