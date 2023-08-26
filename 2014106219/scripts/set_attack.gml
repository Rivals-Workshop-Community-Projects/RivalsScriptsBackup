//set_attack

if attack == AT_DSPECIAL && free && !((spr_dir == 1 && right_down || spr_dir == -1 && left_down) && !down_down) {
	attack = AT_DSPECIAL_AIR;
}

if attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 || attack == AT_DSPECIAL_AIR || attack == AT_DTHROW {
	shaboingboing = 0;
}


if attack == AT_TAUNT && down_down {
	attack = AT_TAUNT_2;
}

if (attack == AT_TAUNT_2) {
		if spr_dir == -1 {
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("tauntd_l"));
	} else {
		reset_attack_value(AT_TAUNT_2, AG_SPRITE);
	}
}

if (attack == AT_FSPECIAL && (ballOut || ballDown > 0) ) {
	attack = AT_FSPECIAL_AIR;
	}