//set_attack

switch(attack) {
	case AT_NSPECIAL:
	case AT_EXTRA_1:
		nspec_dir = 0;
		
		if (current_shot == 5) { attack = AT_EXTRA_1; }
	break;
	case AT_FSPECIAL:
		if (card_count < 20*ex_cost_multiplier) { attack = ((current_shot == 5) ? AT_EXTRA_1 : AT_NSPECIAL); } 
		if (card_count >= 100 && !invincible_super) { attack = AT_EXTRA_3; }
	break;
	break;
	case AT_DSPECIAL:
		if free { attack = ((current_shot == 5) ? AT_EXTRA_1 : AT_NSPECIAL); }
	break;
	case AT_TAUNT: 
		if menu_respawn {
			clear_button_buffer(PC_TAUNT_PRESSED);
			attack = AT_DSPECIAL;
		}
	break;
}