//animation.gml

if (attack == AT_DATTACK){
	//Hud Offset
	if (window == 1){
	    hud_offset = 20;
	}
}

if (attack == AT_USTRONG){
	if (window != 5){
		if (window == 1){
			hud_offset = 45;
		} else if (window == 3){
			hud_offset = 70;
		} else if (window == 3){
			hud_offset = 100;
		} else if (window == 4){
			hud_offset = 105;
		}
	}
}

if (attack != AT_DSPECIAL){
	set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
}

if (strongProjRune){
	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_rune"));
	set_num_hitboxes(AT_USTRONG, 3);
} else {
	set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
	set_num_hitboxes(AT_USTRONG, 2);
}