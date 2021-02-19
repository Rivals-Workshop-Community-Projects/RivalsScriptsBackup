//set_attack

if (attack == AT_FSPECIAL && (card_count < 20*ex_cost_multiplier || invincible_super)){
	if (current_shot != 5) {
		attack = AT_NSPECIAL;
	}
	if (current_shot == 5) {
		attack = AT_EXTRA_1;
	}
}

if (attack == AT_FSPECIAL && card_count >= 100 && !invincible_super) {
	attack = AT_EXTRA_3;
}

if (attack == AT_NSPECIAL && current_shot == 5) {
	attack = AT_EXTRA_1;
}

if (attack == AT_DSPECIAL && free) {
	if (current_shot != 5) {
		attack = AT_NSPECIAL;
	}
	if (current_shot == 5) {
		attack = AT_EXTRA_1;
	}
}

if (attack == AT_TAUNT && menu_respawn) {
	clear_button_buffer(PC_TAUNT_PRESSED);
	attack = AT_DSPECIAL;
}


/*
if (attack == AT_NSPECIAL && (current_shot == 3) && (card_count >= 100) && (!invincible_super)) {
	attack = AT_EXTRA_2;
}