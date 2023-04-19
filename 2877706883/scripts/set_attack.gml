//Nspecial Looping
needle_loop = 0;
needle_angle = 45 * spr_dir;
if (attack == AT_NSPECIAL) {
	needle_once_per += 1;
	needle_dir = needle_arc * -spr_dir;
	if (!free) {
		vsp = -6;
		sound_play(jump_sound);
	}
	//Item NSPECIAL
	set_num_hitboxes(attack, !has_item);
	if (has_item) {
		set_attack_value(attack, AG_SPRITE, sprite_get("item_nspecial"));
	} else {
		set_attack_value(attack, AG_SPRITE, sprite_get("nspecial"));
	}
}
if (attack == AT_USPECIAL) {
	can_fly = false;
	//in_flight = false;
}

if (has_item) {
    hurtboxID.dodging = false;
	switch(attack) {
		case AT_UAIR:
		case AT_UTILT:
		case AT_USTRONG:
			attack = AT_UTHROW;
		break;
		case AT_DAIR:
		case AT_DTILT:
		case AT_DSTRONG:
			attack = AT_DTHROW;
		break;
		case AT_BAIR:
			spr_dir *= -1;
			attack = AT_FTHROW;
		break;
		case AT_FSPECIAL:
		case AT_USPECIAL:
		case AT_NSPECIAL:
		case AT_TAUNT:
		break;
		default:
			attack = AT_FTHROW;
		break;
	}
}
