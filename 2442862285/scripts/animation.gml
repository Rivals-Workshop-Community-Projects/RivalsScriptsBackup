//Handle certain anims manually because i dont care for the init.gml stuff lol, number at the end is frame dur

if (sprite_index == spr_idle || sprite_index == spr_walk){
    image_index = state_timer / 6;
}

if (sprite_index == spr_dash){
    image_index = state_timer / 4;
}

if ((sprite_index == spr_jump || sprite_index == spr_idle_air) && state == PS_IDLE_AIR){
    sprite_index = snail ? spr_snail_idle : spr_idle_air;
}



//Animation during Lightning Strong charge

if phone_attacking switch(attack){
    case AT_FSTRONG_2:
    case AT_USTRONG_2:
    case AT_DSTRONG_2:
        if (window == 1 && window_timer == window_end - 1) image_index = 1 + (strong_charge % 10 < 5);
        break;
}



//Intro anim

if (state == PS_SPAWN){
    var frame_dur = 6;
    var amt_frames = 17;
    var dur = frame_dur * amt_frames;
    var s_t = state_timer + player * 5;
    
    if (s_t < dur){
        sprite_index = spr_intro;
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
    }
    else if (s_t == dur){
        image_index = 0;
    }
    if (image_index < 6) intro_height = lerp(y - 1500, y, (s_t - 3) / (frame_dur * 6));
    else intro_height = 0;
}

//125



//HUD arrow offset

switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_FTILT:
            case AT_UTILT:
                if (window == 2 || (window == 3 && window_timer < window_end * 2 / 3)) hud_offset = lerp(hud_offset, 80, 0.25);
                break;
        }
        break;
    case PS_SPAWN:
        if (sprite_index == spr_intro){
            if (image_index == clamp(image_index, 9, 13)) hud_offset = lerp(hud_offset, 120, 0.25);
            else if image_index < 9 hud_offset = lerp(hud_offset, -80, 0.25);
            
            if intro_height != 0 hud_offset = (y - intro_height) * 1.5;
        }
        break;
}



//fix stupid jittering thing, thank u daniel fornaniel.

if (abs(hud_offset) < 1) hud_offset = 0;