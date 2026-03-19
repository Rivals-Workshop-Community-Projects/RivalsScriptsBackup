//set_attack

if attack == AT_DSPECIAL && free {
	attack = AT_DSPECIAL_AIR;
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