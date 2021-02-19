switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}

if (state==PS_LANDING_LAG&&attack==AT_UTILT){
	hurtboxID.sprite_index = hurtbox_spr
}
if ((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&(attack==AT_DSPECIAL||attack==AT_DSPECIAL_AIR)&&hitpause){
	image_index = 4
}