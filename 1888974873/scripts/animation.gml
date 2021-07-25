switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*7));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*7));
    break;
    
    case PS_DASH:
        image_index = floor(image_number*state_timer/(image_number*7));
    break;
}


if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (attack == AT_NSPECIAL){
        if (window == 1){
            if (window_timer > 14){
                image_index = 1;
            }
        }
    }
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    if (attack == AT_DSPECIAL){
        if (window >= 5){
            if (window_timer >= 0){
                sprite_index = sprite_get("dspecial_alt");
            }
        }
    }
}

if (attack == AT_EXTRA_3 && state == PS_ATTACK_AIR){
    hurtboxID.sprite_index = sprite_get("jumphurt")
}