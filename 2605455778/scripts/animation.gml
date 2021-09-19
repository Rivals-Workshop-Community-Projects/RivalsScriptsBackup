if(swallow){
    swallowAnimCounter++;
    switch(state){
        case PS_IDLE:
            sprite_index = sprite_get("swallow");
            image_index = swallowAnimCounter / 5;
        break;
        case PS_FIRST_JUMP:
             sprite_index = sprite_get("swallow_jump");
        break;
        case PS_WALK_TURN:
            sprite_index = sprite_get("swallow_walkturn");
        break;
        case PS_JUMPSQUAT:
            sprite_index = sprite_get("swallow_jumpstart");
        break;
        case PS_WALK:
            sprite_index = sprite_get("swallow_walk");
            image_index = swallowAnimCounter / 8;
        break;
        case PS_IDLE_AIR:
            sprite_index = sprite_get("swallow_jump");
            image_index = 4;
        break;
        case PS_HITSTUN:
            sprite_index = sprite_get("swallow_hurt");
        break;
        case PS_HITSTUN_LAND:
            sprite_index = sprite_get("swallow_hurt");
        break;
    }
}else{
    swallowAnimCounter = 0;
}
if(moveArmorLoss && attack == AT_UTILT && window > 3){
    if(window == 6 && window_timer 
    >= get_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH) - 1){
        moveArmorLoss = false;
    }else{
        image_index += 5;
    }
}
if(moveArmorLoss && attack == AT_FTILT && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if(window == 3 && window_timer 
    >= get_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH) - 1){
        moveArmorLoss = false;
    }else{
        image_index += 6;
    }
}
if(moveArmorLoss && attack == AT_NSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    if((window == 3 && window_timer >= get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) - 1) || window > 3){
        moveArmorLoss = false;
    }else{
        image_index += 10;
    }
}
if(state == PS_DOUBLE_JUMP && armorpoints > 0){
    sprite_index = sprite_get("armordjump");
}