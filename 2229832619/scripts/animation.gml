switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (attack == AT_USPECIAL && (state==PS_ATTACK_AIR || state==PS_ATTACK_GROUND)){
	if (window<=7){
		sprite_index=sprite_get("uspecial_empty")
	}
}

if (state == PS_WALL_JUMP){
	switch(image_index){
		case 0:
		case 1:
		case 2:
			hurtboxID.sprite_index = sprite_get("na_walljump_hurtbox");
		break;
		case 3:
		case 4:
			hurtboxID.sprite_index = asset_get("bug_hurtbox");
		break;
		default:
			hurtboxID.sprite_index = sprite_get("na_hurtbox");
		break;
	}
}