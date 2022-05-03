
if(state == PS_CROUCH ){
    switch(crouching_state){
        case 1:
            sprite_index = sprite_get("crouch");
        break;
        case 2:
            sprite_index = sprite_get("crouch_2");
        break;
        case 3:
            sprite_index = sprite_get("crouch_lick");
        break;
        case 4:
             sprite_index = sprite_get("crouch_walk");
        break;
        case 5:
            sprite_index = sprite_get("crouch_sleep");
            if(image_index > 8){
                crouching_state_timer = 16;
            }
        break;
    }
    if(crouching_state != 1){
        image_index = floor(crouching_state_timer/8);
    } else {
        image_index = 1+floor(crouching_state_timer/8);
    }
    if(left_down or right_down){
        floor(crouching_state_timer/8);
        sprite_index = sprite_get("crouch_walk");
    }
    
    if(!down_down){
        sprite_index = sprite_get("crouch");
        image_index = 9;
    }
    if(crouching_state_timer > 64 and crouching_state == 5){
        crouching_state_timer = 16;
    }
}

if(attack == AT_FSPECIAL and (state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND)){
    switch(fspecial_direction){
        case 0:
            sprite_index = sprite_get("fspecial");
            
            break;
        case 1:
            sprite_index = sprite_get("fspecialup");
            hurtboxID.sprite_index  = sprite_get("fspecialup_hurt");
            break;
        case 2:
            sprite_index = sprite_get("fspecialdown");
            hurtboxID.sprite_index  = sprite_get("fspecialdown_hurt");
    }
}

if(clinging and state == PS_WALL_JUMP){
    image_index = 0;
}