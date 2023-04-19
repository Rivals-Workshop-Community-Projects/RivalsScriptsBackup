switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
    case PS_WALL_JUMP:
        uspecial_air = false
        move_cooldown[AT_USPECIAL] = 0;
        move_cooldown[AT_DSPECIAL] = 0;
        move_cooldown[AT_FSPECIAL] = 0;
    break;
}

if (attack == AT_TAUNT_2 && window == 4){
    
    music_suppress = 250;
}

