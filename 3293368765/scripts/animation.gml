switch (state)
{
    case PS_FIRST_JUMP:
        if (jump_isBack) { sprite_index = sprite_get("jump_back"); }
        break;
    
    case PS_DOUBLE_JUMP:
        if (jump_isBack) { sprite_index = sprite_get("doublejump_back"); }
        break;
        
    case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
    if(attack == AT_DSPECIAL && canceled_into_dspec) sprite_index = get_attack_value(attack, AG_SPRITE);
    break;
}

//Intro
if (state == PS_SPAWN && state_timer < intro_duration && get_gameplay_time() < 300) {
    sprite_index = intro_anim
    image_index = floor(ease_linear(0, image_number-1, state_timer, intro_duration))
    if (get_gameplay_time() == 1){
    sound_play(sound_get("tee_intro"))
    }
    if (get_gameplay_time() == 60){
        sound_play(sound_get("tee_intro2"))
    }
    if (get_gameplay_time() == 63){
        shake_camera( 12, 6);
    }
}