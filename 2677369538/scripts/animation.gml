//animation.gml

if (state == PS_ATTACK_GROUND && attack == AT_USTRONG){
	if (window == 1 && strong_charge > 0){
		timer = timer + 0.33;
		sprite_index = sprite_get("ustrong_charge");
		hurtboxID.sprite_index = sprite_get("ustrong_charge_hurt");
		image_index = timer + image_index;
	} else { timer = 0; hurtboxID.sprite_index = sprite_get("ustrong_hurt"); }
}

if (attack == AT_FSPECIAL){
	if (state == PS_ATTACK_AIR){
		if (window == 5){
			if (which_bash == 1 && spin_hit == false){
				sprite_index = sprite_get("fspecial");
				hurtboxID.sprite_index = sprite_get("fspecial_hurt");
				image_index = 9;
			}
			if (which_bash == 1){
				sprite_index = sprite_get("dair");
				hurtboxID.sprite_index = sprite_get("dair_hurt");
				image_index = 5;
			}
			if (which_bash == 2){
				sprite_index = sprite_get("fspecial_spin");
				hurtboxID.sprite_index = sprite_get("fspecial_spin_hurt");
				image_index = 1;
			}
		}
		if (window == 6){ 
			sprite_index = sprite_get("fspecial_spin");
			image_index = floor(image_number*state_timer/(image_number*3));
			hurtboxID.sprite_index = sprite_get("fspecial_spin_hurt");
        }
    }
    if (state == PS_ATTACK_GROUND){
    	hurtboxID.sprite_index = sprite_get("fspecial_hurt");
    }
}