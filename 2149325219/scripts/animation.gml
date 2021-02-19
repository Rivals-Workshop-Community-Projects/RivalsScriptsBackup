
if(state == PS_PRATLAND){
    sprite_index = sprite_get("pratland");
}


if(attack == AT_FSTRONG){
     if(window == 2 && state == PS_ATTACK_GROUND){
    	if(strong_charge < 30){
    	    image_index = (floor(strong_charge / 3.5) % 6) + 5;
    	}
    	if(strong_charge >= 30){
    	    image_index = (floor(strong_charge / 3.5) % 6) + 5;
    	}
    	spr_angle = 14*spr_dir;
    	
		hurtboxID.image_angle = 14*spr_dir
     }
     if(window == 1 && state == PS_ATTACK_GROUND){
        if image_index == 4 spr_angle = 14*spr_dir
     }
}