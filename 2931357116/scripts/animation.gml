if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    sprite_index = sprite_get(string(form) + get_state_name(state));
    switch(state){
        case PS_IDLE:
        image_index = idle_anim_speed * state_timer;
        break;
        case PS_WALK:
        if state_timer <= 1 sfx_timer = 10;
        switch form{
            case 0:
            image_index = walk_anim_speed * state_timer;
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 7) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
            case 1:
            image_index = walk_anim_speed * state_timer;
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 6) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
            case 2:
            case 4:
            image_index = .2 * state_timer;
            break;
            case 3:
            image_index = .22 * state_timer;
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 6) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
        }
        break;
        case PS_WALK_TURN:
        if form == 4 image_index = state_timer/2;
        else if form == 3 image_index = state_timer * 4 / 6;
        else if form == 2 image_index = state_timer/5 * 3.9;
        else image_index = state_timer * .45;
        break;
        case PS_DASH_TURN:
        if form == 4  image_index = state_timer * .3;
        else if form == 2 || form == 3  image_index = state_timer * .4;
        else image_index = state_timer * .45
        break;
        case PS_DASH:
        if state_timer <= 1 sfx_timer = 10;
        image_index = state_timer * dash_anim_speed;
        switch form{
            case 0:
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 5) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
            case 1:
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 5) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
            case 3:
            if (floor(image_index%image_number) == 1 || floor(image_index%image_number) == 5) && !sfx_timer{
                footstep();
                sfx_timer = 10;
            }
            break;
        }
        break;
        case PS_DASH_START:
        image_index = state_timer / 2;
        if form == 4 || form == 3 image_index = state_timer / 4;
        break;
        case PS_DASH_STOP:
        image_index = state_timer / 2;
        break;
        case PS_JUMPSQUAT:
        image_index = state_timer/2;
        break;
        case PS_FIRST_JUMP:
        if form == 4 image_index = (state_timer * .32 >= image_number - 1? image_number - 1: state_timer * .32);
        else if form == 2 image_index = (state_timer * .25 >= image_number - 1? image_number - 1: state_timer * .25);
        else image_index = (state_timer * .6 + (!form?3:0) >= image_number - 1? image_number - 1: state_timer * .6 + (!form?3:0));
        break;
        case PS_DOUBLE_JUMP:
        image_index = state_timer * 3/10;
        if form == 3 || form == 4 image_index = state_timer * 7/20;
        break;
        case PS_IDLE_AIR:
        sprite_index = sprite_get(string(form) + "PS_FIRST_JUMP");
        if form == 2 sprite_index = sprite_get("0PS_FIRST_JUMP");
        image_index = ((state_timer + 5) * .7 >= image_number - 1? image_number - 1: (state_timer + 5) * .7);
        if form == 4 image_index = image_number - 1;
        if prev_state == PS_ATTACK_AIR image_index = image_number -1;
        break;
        case PS_LAND:
        sprite_index = sprite_get(string(form) + "PS_CROUCH");
        image_index = (state_timer + 2 >= image_number - 1? image_number - 1: state_timer + 2);
        break;
        case PS_LANDING_LAG:
        sprite_index = sprite_get(string(form) + "PS_CROUCH");
        image_index = (state_timer + 2 >= image_number - 1? image_number - 1: state_timer + 2);
        break;
        case PS_WAVELAND:
        sprite_index = sprite_get(string(form) + "PS_CROUCH");
        image_index = image_number/2;
        break;
        case PS_PARRY_START:
        sprite_index = sprite_get(string(form) + "PS_IDLE");
        dodge_startup_frames    = 2;
        dodge_active_frames     = 2;
        dodge_recovery_frames   = 5;
        if form == 4{
            dodge_startup_frames    = 3;
            dodge_active_frames     = 2;
            dodge_recovery_frames   = 3;
        }else if form == 3{
            dodge_startup_frames    = 2;
            dodge_active_frames     = 2;
            dodge_recovery_frames   = 3;
        }else if form == 2 dodge_recovery_frames = 6;
        break;
        case PS_HITSTUN:
        sprite_index = sprite_get(string(form) + "HURT" + string(hurt_img));
        break;
        case PS_HITSTUN_LAND:
        sprite_index = sprite_get(string(form) + "HURT" + string(hurt_img));
        break;
        case PS_TUMBLE:
        sprite_index = sprite_get(string(form) + "HURT" + string(hurt_img));
        break;
        case PS_WRAPPED:
        case PS_FROZEN:
        case PS_FLASHED:
        case PS_CRYSTALIZED:
        case PS_BURIED:
        sprite_index = sprite_get(string(form) + "HURT1");
        break;
        case PS_RESPAWN:
        sprite_index = sprite_get(string(form) + "PS_IDLE");
        image_index = idle_anim_speed * state_timer;
        break;
        case PS_TECH_BACKWARD:
        case PS_TECH_FORWARD:
        case PS_ROLL_FORWARD:
        case PS_ROLL_BACKWARD:
        sprite_index = sprite_get(string(form) + "PS_ROLL");
        if form == 4{
            roll_forward_startup_frames     = 2;
            roll_forward_active_frames      = 4;
            roll_forward_recovery_frames    = 1;
            roll_back_startup_frames        = 2;
            roll_back_active_frames         = 4;
            roll_back_recovery_frames       = 1;
        }else if form == 3{
            roll_forward_startup_frames     = 2;
            roll_forward_active_frames      = 3;
            roll_forward_recovery_frames    = 3;
            roll_back_startup_frames        = 2;
            roll_back_active_frames         = 3;
            roll_back_recovery_frames       = 3;
        }else{
            roll_forward_startup_frames     = 2;
            roll_forward_active_frames      = 2;
            roll_forward_recovery_frames    = 4;
            roll_back_startup_frames        = 1;
            roll_back_active_frames         = 4;
            roll_back_recovery_frames       = 2;
        }
        break;
        case PS_PRATFALL:
        sprite_index = sprite_get(string(form) + "PS_PRATFALL");
        image_index = state_timer * pratfall_anim_speed;
        break;
        case PS_PRATLAND:
        sprite_index = sprite_get(string(form) + "PS_LAND");
        image_index = (state_timer/2 >= image_number - 1? image_number - 1: state_timer/2);
        break;
        case PS_SPAWN:
        if state_timer < 78 hud_offset = 80;
        if state_timer == 26 sound_play(asset_get("sfx_infinidagger"), 0, noone, 1, 1.25);
        if state_timer == 58 sound_play(land_sound);
        sprite_index = (state_timer < 78? sprite_get("intro"): sprite_get(string(form) + "PS_IDLE"));
        image_index = (state_timer <= 10? 0: (state_timer < 78? (state_timer - 10)/4: state_timer *idle_anim_speed));
        break;
        case PS_WALL_JUMP:
        case PS_WALL_TECH:
        sprite_index = sprite_get(string(form) + "PS_WALL_JUMP");
        image_index = ((state_timer / 4) + 1 >= image_number? image_number - 1: (state_timer / 4) + 1);
        break;
        case PS_AIR_DODGE:
        if form == 4{
            air_dodge_startup_frames    = 1;
            air_dodge_active_frames     = 4;
            air_dodge_recovery_frames   = 2;
        }else{
            air_dodge_startup_frames    = 1;
            air_dodge_active_frames     = 3;
            air_dodge_recovery_frames   = 2;
        }
        break;
    }
    if form == 4{
        if state == PS_IDLE || state == PS_WALK || state == PS_WALK_TURN draw_y = dsin(float_hud*4.5) * 2 - 2;
        if is_floating && state != PS_AIR_DODGE{
            sprite_index = sprite_get("glide");
            image_index = (get_gameplay_time()/5)%7 + ((spr_dir && right_down) || (!spr_dir && left_down) = spr_dir? 7: 0);
        }
    }
}else{
    if attack == AT_DSTRONG && !form && window == 1{
        if strong_charge image_index = 5 + (strong_charge / 4) % 4;
        if (floor(image_index%image_number) == 8 || floor(image_index%image_number) == 6) && !sfx_timer{
            sound_play(sound_get("KB_swipeweak1"));
            sfx_timer = 5;
        }
    }
}
if sfx_timer sfx_timer--;

#define footstep()
sound_play(sound_get("sora_footsteps" + string(random_func_2(floor(abs(x%200)), 3, 1) + 1)));