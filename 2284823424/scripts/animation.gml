switch(state){
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:
        switch(attack){
            case AT_USTRONG:
                if (window == 3 || (window == 4 && window_timer < window_end * 1 / 3)) hud_offset = lerp(hud_offset, 100, 0.5);
                break;
        }
    break;
}



//fix stupid jittering thing, thank u daniel fornaniel.

hud_offset = round(hud_offset);



//i hate this video game

if (sprite_index == spr_walljump && state_timer < 4) image_index = 0;



if (attacking && attack == AT_TAUNT && window == 7 && down_down){
    image_index += 4;
}



//Handle certain looping animations

if (sprite_index == spr_idle || sprite_index == spr_walk){
    image_index = state_timer / 6;
}

if (sprite_index == spr_dash){
    image_index = state_timer / 4;
}



if (attacking && attack == AT_NSPECIAL){
    sprite_index = containers[current_container].anim;
}

if (state == PS_PRATFALL){
    sprite_index = spr_jump;
    image_index = 8;
}

if (attacking && attack == AT_EXTRA_2 && held_item == IT_POTION) sprite_index = spr_nspecial_item_potion;



if (state_cat == SC_HITSTUN && taunt_stored){
    sprite_index = spr_taunt;
    image_index = 10;
}



//Intro anim

if (state == PS_SPAWN){
    var frame_dur = 6;
    var amt_frames = 20;
    var dur = 100;
    var delay = 0;
    var s_t = state_timer - delay + player * 5;
    
    frame_dur = dur / amt_frames;
    
    if (s_t < dur){
        sprite_index = spr_intro;
        image_index = max(lerp(-1, amt_frames, s_t / dur), 0) + 8;
        hud_offset = 1000;
    }
    else if (s_t == dur){
        image_index = 0;
    }
    
    switch(s_t){
        case 60:
            sound_play(sfx_minecraft_fire_ignite);
            break;
        case 64:
            sound_play(asset_get("sfx_zetter_fireball_fire"))
            break;
        case 80:
            sound_play(jump_sound);
            break;
    }
}

//125