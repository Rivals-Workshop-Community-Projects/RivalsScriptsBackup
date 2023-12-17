//set_attack
pult_di = 0;
fspecial_charge = 0;
if !(attack == AT_FSPECIAL_2){ 
	if !(attack == AT_FTHROW || attack == AT_NTHROW){
		melonpult_fspecial_grabbed = 0;
	}
}
if (melonpult_fspecial_grabbed != 0){
	if (attack == AT_FTHROW){
		melonpult_fspecial_grabbed.x = x - (42 * spr_dir);
		melonpult_fspecial_grabbed.y = y - 36;
	}
	if (attack == AT_NTHROW){
		melonpult_fspecial_grabbed.x = x - (44 * spr_dir);
		melonpult_fspecial_grabbed.y = y - 44;
	}
}
if (attack == AT_USPECIAL_2){
	melonpult_uspecial_grabbed = 0;
}

if (attack == AT_FAIR){
    attack = AT_FTILT;
}

if (attack == AT_DATTACK && up_down && !right_down && !left_down){
	attack = AT_EXTRA_2;
	swing_throw_type = 1;
}
if (has_rune("E")){
	set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 0);
}

if (attack == AT_DAIR){ 
	if (left_down && !right_down){
        spr_dir = -1
    }
	if (right_down && !left_down){
		spr_dir = 1
    }
}

/*
if (attack == AT_USTRONG){
    with oPlayer if id != other.id && melon_mortar_scoop == other.id {
		melon_mortar_scoop = false;
    }
}
*/