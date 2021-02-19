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

if ((attack == AT_NSPECIAL || attack == AT_EXTRA_1) && left_down && !right_down && !free && special_down && state == PS_ATTACK_GROUND) {
    sprite_index = sprite_get("runagun");
    image_index = floor(image_number*state_timer/(image_number*5));
}

if ((attack == AT_NSPECIAL || attack == AT_EXTRA_1) && right_down && !left_down && !free && special_down && state == PS_ATTACK_GROUND) {
    sprite_index = sprite_get("runagun");
    image_index = floor(image_number*state_timer/(image_number*5));
}