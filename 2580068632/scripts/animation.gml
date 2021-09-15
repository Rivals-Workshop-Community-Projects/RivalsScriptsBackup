//animation.gml

if (!free && attack != AT_NSPECIAL && attack != AT_DSPECIAL){
	wings_out = false;
}

if (state == PS_DOUBLE_JUMP){
	wings_out = true;
}

if (wings_out == true && state == PS_IDLE_AIR){
	sprite_index = sprite_get("jump_wings");
}

if (state == PS_LAND){
	sprite_index = sprite_get("landinglag");
	image_index = 2;
}

if (state == PS_WAVELAND){
	sprite_index = sprite_get("landinglag");
	image_index = 0;
}

if (state == PS_AIR_DODGE){
	if (wings_out == true){
		sprite_index = sprite_get("airdodge_wings");
	} else if (wings_out == false){
		sprite_index = sprite_get("airdodge");
	}
}

if (state == PS_PRATFALL){
	if (wings_out == true){
		sprite_index = sprite_get("pratfall_wings");
	} else if (wings_out == false){
		sprite_index = sprite_get("pratfall");
	}
}

if (attack == AT_JAB){
	if (window == 4){
		if (window_timer == 2 || window_timer == 3){
			image_index = 6
		} else if (window_timer == 4 || window_timer == 5){
			image_index = 2
		} else {
			image_index = 5
		}
	}
	if (window == 5){
		if (window_timer > 1){
			image_index = 0
		} else {
			image_index = 3
		}
	}
}

if (attack == AT_NAIR ||
	attack == AT_FAIR ||
	attack == AT_UAIR ||
	attack == AT_DAIR ||
	attack == AT_DAIR ||
	attack == AT_NSPECIAL){
	spr_angle = 0
	if (djumps != 0){
		wings_out = true
	}
}

if (attack == AT_NAIR){
	if (wings_out == true){
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
	}
}

if (attack == AT_FAIR){
	if (wings_out == true){
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
	}
}

if (attack == AT_UAIR){
	if (wings_out == true){
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
	}
}

if (attack == AT_DAIR){
	if (wings_out == true){
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
	}
}

if (attack == AT_BAIR){
	if (wings_out == true){
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
	}
}

if (attack == AT_NSPECIAL){
	if (wings_out == true){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_wings"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_wings"));
	} else if (wings_out == false){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
	}
}