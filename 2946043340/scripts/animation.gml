//animation
switch (state){
    case PS_ROLL_BACKWARD:
    case PS_ROLL_FORWARD:
    case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
    	if state_timer == 3 {
    		spawn_hit_fx( x, y, vfx_roll_afterimage );
    	}
    break;
}
    
if(attack == AT_FSTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        image_index = 2 + (strong_charge / 5) % 4;
    }
}
if(attack == AT_USTRONG && state == PS_ATTACK_GROUND){
    if(window == 1 && strong_charge > 0){
        image_index = 2 + (strong_charge / 5) % 8;
    }
}
