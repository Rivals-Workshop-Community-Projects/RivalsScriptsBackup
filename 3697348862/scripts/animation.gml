// animation.gml


if (spr_dir == 1){
	if (ea_alt){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_ea"));
	} else {
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
	}
} else if (spr_dir == -1){
	if (ea_alt){
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_left_ea"));
	} else {
		set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_left"));
	}
}