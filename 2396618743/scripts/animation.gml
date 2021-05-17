//ANIMATION

if (attack == AT_USPECIAL && (window == 2 || window == 3) && chargeSpent){
    
    tornadoAnimTimer += tornadoAnimSpeed;
    
    tornadoXposition = tornadoXposition + 4;
    if (tornadoXposition > 96) {
        tornadoXposition = 0;
    }
    
}

if (attack == AT_DSPECIAL && window == 1 && special_down && dspecialcharge < 16 && window_timer < 10 && window_timer > 4){
    reticleAnimTimer += reticleAnimSpeed;
}

if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_GROUND && state != PS_TECH_BACKWARD && state != PS_AIR_DODGE && state != PS_TECH_FORWARD && state != PS_WALL_TECH ){
        if (state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_START){
        hurtboxID.sprite_index = sprite_get("dash_hurt");
    } else if (state == PS_CROUCH){
        hurtboxID.sprite_index = sprite_get("crouch_hurt");
    } else if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_WALL_JUMP || state == PS_DOUBLE_JUMP){
        hurtboxID.sprite_index = sprite_get("jump_hurt");
    } else {
        hurtboxID.sprite_index = sprite_get("idle_hurt");
    }

}

if (hasCharge){
    meter_color = c_yellow;
} else {
    meter_color = c_white;
}

//meterDraw(x,y+char_height, 32, 4, c_white, chargeCounter/240, 1,1,0);


