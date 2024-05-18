if (attack == AT_DSPECIAL && wft_dscharge == 1){
	attack = AT_DSPECIAL_2;
	wft_dscharge = 0;
}

if (wft_dscharge == 1 && left_strong_pressed && free || left_strong_pressed && free && (has_rune("I") or wft_testrune == 1)){
	spr_dir = -1;
	attack = AT_FSTRONG;
}

if (wft_dscharge == 1 && right_strong_pressed && free || right_strong_pressed && free && (has_rune("I") or wft_testrune == 1)){
	spr_dir = 1;
	attack = AT_FSTRONG;
}

if (wft_dscharge == 1 && up_strong_pressed && free || up_strong_pressed && free && (has_rune("I") or wft_testrune == 1)){
	attack = AT_USTRONG;
}

if (wft_dscharge == 1 && down_strong_pressed && free || down_strong_pressed && free && (has_rune("I") or wft_testrune == 1)){
	attack = AT_DSTRONG;
}

if (attack == AT_DSPECIAL_2 && (has_rune("K") or wft_testrune == 1)){
	wft_dscharge = 0;
	move_cooldown[AT_DSPECIAL] = 300;
	attack = 49;
}