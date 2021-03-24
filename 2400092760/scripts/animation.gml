/*switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    default: break;
}*/
switch (state){
    case PS_DASH:
    case PS_DASH_TURN:
        if hurtboxID.sprite_index != dashbox_spr hurtboxID.sprite_index = dashbox_spr;
        break;
    default: 
        if hurtboxID.sprite_index == dashbox_spr hurtboxID.sprite_index = hurtbox_spr;
        break;
}

/*if(attack == AT_USTRONG && state == PS_ATTACK_GROUND && smash_charging){
    image_index = (floor(strong_charge / 8) % 2) +1;
}*/

//intro
if (state == PS_SPAWN) {
    if (introTimer < 17 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");  
        
    }
    if(introTimer = 17){
        image_index = 0;
    }
    if(introTimer == 6 && !pommel){
        pommel = true;
        sound_play(asset_get("sfx_ori_stomp_hit"))
    }
}
/*
if(state == PS_IDLE && prev_state == PS_SPAWN){
    if(state_timer == 1){
    sprite_index = sprite_get("idle")
    image_index = 0;
    }
    
}