//set_attack.gml
if (attack == AT_USPECIAL){
	if (inJail && !pureDoublesRune && window == 1 && currCash >= propertyBuildCashRequired){
		{attack = AT_USPECIAL_2}
	} else if (inJail && pureDoublesRune && window == 1){
		{attack = AT_USPECIAL_2}
	} else {
		if (!pureDoublesRune){
			if (inJail && window == 1 && currCash < propertyBuildCashRequired && move_cooldown[AT_USPECIAL] == 0){
				fspecialNoCashTextTimer = 60;
				sound_play(asset_get("sfx_shop_invalid"));
				move_cooldown[AT_USPECIAL] = 50;
			}
		}
	}	
}
//<>
if (free && fstrongRune){
	if (left_strong_pressed||right_strong_pressed){
		if (attack==AT_FAIR||attack==AT_NAIR){ attack=AT_FSTRONG };
		if (attack==AT_BAIR){ attack=AT_FSTRONG; spr_dir = spr_dir*-1 };
	}
}