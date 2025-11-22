//state setting

if (free == false && window == 0 && state != PS_FIRST_JUMP && state != PS_PRATLAND && state != PS_LAND && state != PS_SPAWN  && state != PS_WAVELAND && state != PS_BURIED && state_cat != SC_HITSTUN){
    state = PS_FIRST_JUMP;
    sound_play(sound_get("boing"), false, false, 4, 1 + random_func(1, 1, false));
}

if (sprite_index == sprite_get("hurtground")){
    if (image_index >= 4){
        state = PS_FIRST_JUMP;
        sound_play(sound_get("boing"), false, false, 4, 1 + random_func(1, 1, false));
    }
}

if (state == PS_LAND && shield_pressed && state_timer >= 5){
    state = PS_WAVELAND;
    state_timer = 0;
    jump_charged = 0;
}

if (state == PS_FIRST_JUMP && free == false){
    if (jump_down){
        state = PS_LAND;
    }
}

if (state == PS_WAVELAND && right_down - left_down && state_timer == 1){
    state = PS_TECH_GROUND;
}

if (state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD || state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
    state = PS_WAVELAND;
    with (hurtboxID){
        if (playerID = other.id){
            dodging = false;
        }
    }
    invincible = false;
    invince_time = 0;
}