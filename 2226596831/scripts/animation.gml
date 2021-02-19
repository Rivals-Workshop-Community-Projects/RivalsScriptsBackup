switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state==PS_ATTACK_GROUND && attack==AT_FSTRONG){
	if (smash_charging){
		image_index = 1 + strong_charge * 9 / 60;
		fstrong_store = floor(image_index)
		smash_flash = smash_flash-0.5
	}
	if (window == 2){
		sprite_index = sprite_get("fstrong_noball")
		if (fstrong_store >= 6){
			image_index = (fstrong_store+1) + window_timer * (9-fstrong_store) / 16;
		}else{
			image_index = fstrong_store+1
		}
	}else{
		if (safety_strap == "off"){
			sprite_index = sprite_get("fstrong_wiimote")
		}
	}
}

if (safety_strap == "off"){
	if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
		if (attack == AT_FTILT){
			if (window >= 2){
				sprite_index = sprite_get("ftilt_nomote")
			}
		}
		if (attack == AT_DTILT){
			if (window >= 2){
				sprite_index = sprite_get("dtilt_nomote")
			}
		}
		if (attack == AT_UTILT){
			if ((window == 2&&window_timer>=5)||window >= 3){
				sprite_index = sprite_get("utilt_nomote")
			}
		}
		if (attack == AT_DATTACK){
			if (window >= 2){
				sprite_index = sprite_get("dattack_nomote")
			}
		}
		
		if (attack == AT_NAIR){
			if (window >= 1){
				sprite_index = sprite_get("nair_nomote")
			}
		}
		if (attack == AT_DAIR){
			if (window >= 2){
				sprite_index = sprite_get("dair_nomote")
			}
		}
		if (attack == AT_UAIR){
			if (window >= 2){
				sprite_index = sprite_get("uair_nomote")
			}
		}
		if (attack == AT_BAIR){
			if (window >= 3){
				sprite_index = sprite_get("bair_nomote")
			}
		}
	}
}