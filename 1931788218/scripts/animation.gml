switch (state){
    case PS_ATTACK_GROUND:
        if (attack == AT_NSPECIAL)
		    image_index = floor(anim / 10);
        break;
    case PS_ATTACK_AIR:
        if (attack == AT_NSPECIAL)
		    image_index = floor(anim / 10);
        break;
    
    default: break;
}