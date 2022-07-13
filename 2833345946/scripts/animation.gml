switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    
    case PS_ATTACK_GROUND:
    switch attack {
        case AT_USTRONG:
        if window == 2 image_index = 2 + floor((window_timer + strong_charge)/4) mod 2
        break;
    }
    break;
    
    default: break;
}

if stance {
    switch state {
        case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
        if get_attack_value(attack, AG_STANCE_SPRITE) != 0 sprite_index = get_attack_value(attack, AG_STANCE_SPRITE);
        break;
    }


    for (var i = 0; i < array_length(default_sprites); i++) {
        if sprite_index = default_sprites[i] sprite_index = hilt_sprites[i];
        
        if sprite_index == sprite_get("idle_hilt") image_index = state_timer*idle_anim_speed
        if sprite_index == sprite_get("walk_hilt") image_index = state_timer*walk_anim_speed
        if sprite_index == sprite_get("dash_hilt") image_index = state_timer*dash_anim_speed
        if sprite_index == sprite_get("walljump_hilt") image_index = state_timer*7/walljump_time
        if sprite_index == sprite_get("dashstart_hilt") image_index = state_timer/5
    }
    
} else {
    switch state {
        case PS_WALL_JUMP:
        if !stance {
            if clinging {
                image_index = clamp(floor(state_timer/4), 0, 2)
            } else if state_timer > 3 {
                image_index = 3 + floor(walljump_timer/4)
            }
        }
        break;
    }
}

//intro anim
var intro_time = get_gameplay_time();
var intro_frames = 8;
var intro_length = 72;
if intro_time < intro_length {
    sprite_index = sprite_get("intro");
    image_index = floor(intro_time/(intro_length/intro_frames));
}