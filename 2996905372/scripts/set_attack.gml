// set_attack.gml

// Down Taunt
if (!free && attack == AT_TAUNT && down_down) {
	attack = AT_TAUNT_2;
}

// Stone Throw (Rune)
if (attack == AT_TAUNT && up_down && window == 1) {
	if (move_cooldown[AT_EXTRA_1] == 0 && tauntStoneRune){
		attack = AT_EXTRA_1;
	}
}

// Aerial Strongs (Rune)
if (free && strongsUseableInAirRune){
	if (left_strong_pressed || right_strong_pressed){
		if (attack==AT_FAIR || attack==AT_NAIR){ attack=AT_FSTRONG };
		if (attack==AT_BAIR){ attack=AT_FSTRONG; spr_dir = spr_dir*-1 };
	}
	if (up_strong_pressed){
		if (attack==AT_UAIR){ attack=AT_USTRONG };
	}
	if (down_strong_pressed){
		if (attack==AT_DAIR){ attack=AT_DSTRONG };
	}
}