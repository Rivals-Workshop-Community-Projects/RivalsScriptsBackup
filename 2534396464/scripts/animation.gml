switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if state == PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 1 {
sprite_index = sprite_get( "fsmash_charge" );
    image_index = window_timer * 6
}


