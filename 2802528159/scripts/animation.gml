//sounds
if wall % 360 == 0 && aware < 2 && (state == PS_IDLE || state == PS_CROUCH || state == PS_WALK || state == PS_DASH_START || state == PS_DASH || state == PS_DASH_STOP || state == PS_WAVELAND || state == PS_WALK_TURN || state == PS_DASH_TURN || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || (state == PS_ATTACK_GROUND && attack == AT_TAUNT)){
    radar_img += (radar_img < 8? 1: 0);
}else{
    radar_img = 0;
}
if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
    if state != PS_IDLE_AIR sprite_index = sprite_get(string(plate) + get_state_name(state));
    switch(state){
        case PS_IDLE:
        image_index = idle_anim_speed * state_timer;
        radar_x = radar_pos[0][floor(image_index) % 8][0];
        radar_y = radar_pos[0][floor(image_index) % 8][1];
        radar_angle = radar_pos[0][floor(image_index) % 8][2];
        break;
        case PS_WALK:
        image_index = walk_anim_speed * state_timer;
        var n = image_index % 7;
        if((n >= 2.85 && n <= 2.95) || (n <= 5.95 && n >= 5.85)) && !hitstop{
            step_sound();
        }
        radar_x = radar_pos[2][floor(image_index) % 7][0];
        radar_y = radar_pos[2][floor(image_index) % 7][1];
        radar_angle = radar_pos[2][floor(image_index) % 7][2];
        break;
        case PS_WALK_TURN:
        image_index = state_timer * .45
        if((image_index >= 6 && image_index <= 6.40) || (image_index >= 3.60 && image_index <= 4)) && !hitstop{
            step_sound();
        }
        radar_x = radar_pos[7][floor(image_index)][0];
        radar_y = radar_pos[7][floor(image_index)][1];
        radar_angle = radar_pos[7][floor(image_index)][2];
        break;
        case PS_DASH_TURN:
        image_index = state_timer * .45
        if((image_index >= 6 && image_index <= 6.40) || (image_index >= 3.60 && image_index <= 4)) && !hitstop{
            step_sound();
        }
        radar_x = radar_pos[8][floor(image_index)][0];
        radar_y = radar_pos[8][floor(image_index)][1];
        radar_angle = radar_pos[8][floor(image_index)][2];
        break;
        case PS_DASH:
        image_index = state_timer * dash_anim_speed;
        if(state_timer % 12 == 3 && !hitstop){
            step_sound();
        }
        radar_x = radar_pos[4][floor(image_index) % 6][0];
        radar_y = radar_pos[4][floor(image_index) % 6][1];
        radar_angle = radar_pos[4][floor(image_index) % 6][2];
        break;
        case PS_DASH_START:
        image_index = state_timer / 2;
        if(state_timer % 6 == 3 && !hitstop){
            step_sound();
        }
        radar_x = radar_pos[3][floor(image_index) % 6][0];
        radar_y = radar_pos[3][floor(image_index) % 6][1];
        radar_angle = radar_pos[3][floor(image_index) % 6][2];
        break;
        case PS_DASH_STOP:
        image_index = state_timer / 2;
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        radar_x = radar_pos[5][floor(image_index) % 6][0];
        radar_y = radar_pos[5][floor(image_index) % 6][1];
        radar_angle = radar_pos[5][floor(image_index) % 6][2];
        break;
        case PS_JUMPSQUAT:
        image_index = (state_timer/2) + 3;
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        radar_x = radar_pos[9][floor(image_index)][0];
        radar_y = radar_pos[9][floor(image_index)][1];
        radar_angle = radar_pos[9][floor(image_index)][2];
        break;
        case PS_FIRST_JUMP:
        if(state_timer == 0){
            image_index = 6;
            sprite_index = sprite_get(string(plate) + "PS_JUMPSQUAT");
        }else{
            image_index = (state_timer >= 15? 3: state_timer/5);
        }
        radar_x = radar_pos[10][floor(image_index) % 7][0];
        radar_y = radar_pos[10][floor(image_index) % 7][1];
        radar_angle = radar_pos[10][floor(image_index) % 7][2];
        break;
        case PS_DOUBLE_JUMP:
        image_index = state_timer/5;
        radar_x = radar_pos[10][floor(image_index) % 4][0];
        radar_y = radar_pos[10][floor(image_index) % 4][1];
        radar_angle = radar_pos[10][floor(image_index) % 4][2];
        break;
        case PS_IDLE_AIR:
        sprite_index = sprite_get(string(plate) + "PS_DOUBLE_JUMP");
        image_index = 3;
        radar_x = radar_pos[12][3][0];
        radar_y = radar_pos[12][3][1];
        radar_angle = radar_pos[12][3][2];
        break;
        case PS_LAND:
        if state_timer >= 8 sprite_index = sprite_get(string(plate) + "PS_IDLE");
        image_index = (state_timer >= 8? 0: state_timer/4);
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        break;
        case PS_LANDING_LAG:
        if state_timer >= 10 sprite_index = sprite_get(string(plate) + "PS_IDLE");
        else sprite_index = sprite_get(string(plate) + "PS_LAND");
        image_index = (state_timer >= 10? 0: state_timer/5);
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        break;
        case PS_WAVELAND:
        sprite_index = sprite_get(string(plate) + "PS_CROUCH");
        image_index = 4;
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        radar_x = radar_pos[5][0][0];
        radar_y = radar_pos[5][0][1];
        radar_angle = radar_pos[5][0][2];
        break;
        case PS_TECH_GROUND:
        sprite_index = sprite_get(string(plate) + "PS_CROUCH");
        image_index += 4;
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        break;
        case PS_ROLL_FORWARD:
        case PS_ROLL_BACKWARD:
        if((state_timer == 2 || state_timer == 23) && !hitstop){
            step_sound();
        }
        break;
        case PS_PARRY_START:
        sprite_index = sprite_get(string(plate) + "PS_PARRY");
        image_index = 0;
        break;
        case PS_PARRY:
        if((state_timer == 0 || state_timer == 14) && !hitstop){
            step_sound();
        }
        break;
        case PS_HITSTUN:
        sprite_index = sprite_get(string(plate) + "HURT" + string(hurt_img));
        break;
        case PS_HITSTUN_LAND:
        if state_timer >= 10 sprite_index = sprite_get(string(plate) + "PS_IDLE");
        else sprite_index = sprite_get(string(plate) + "PS_LAND");
        image_index = (state_timer >= 10? 0: state_timer/5);
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        break;
        case PS_TUMBLE:
        sprite_index = sprite_get(string(plate) + "HURT" + string(hurt_img));
        break;
        case PS_WRAPPED:
        case PS_FROZEN:
        case PS_FLASHED:
        case PS_CRYSTALIZED:
        case PS_BURIED:
        sprite_index = sprite_get(string(plate) + "HURT1");
        break;
        case PS_RESPAWN:
        sprite_index = sprite_get(string(plate) + "PS_IDLE");
        image_index = idle_anim_speed * state_timer;
        break;
        case PS_TECH_BACKWARD:
        case PS_TECH_FORWARD:
        sprite_index = sprite_get(string(plate) + "PS_ROLL_FORWARD");
        if((state_timer == 2 || state_timer == 23) && !hitstop){
            step_sound();
        }
        break;
        case PS_PRATLAND:
        if state_timer >= 6 sprite_index = sprite_get(string(plate) + "PS_IDLE");
        else sprite_index = sprite_get(string(plate) + "PS_CROUCH");
        image_index = state_timer/2 + 4;
        if(state_timer == 0 && !hitstop){
            step_sound();
        }
        break;
        case PS_PRATFALL:
        if attack != AT_NSPECIAL_AIR {
            sprite_index = sprite_get(string(plate) + "PS_DOUBLE_JUMP");
            image_index = 3;
        }
        break;
        case PS_SPAWN:
        if(state_timer < 60){
            image_index = state_timer/6;
            if state_timer == 30 && !hitstop step_sound();
            if state_timer == 40 && !hitstop step_sound();
        }else{
            sprite_index = sprite_get(string(plate) + "PS_IDLE");
            image_index = state_timer * 0.15;
        }
        break;
        case PS_CROUCH:
        radar_x = radar_pos[1][floor(image_index) % 9][0];
        radar_y = radar_pos[1][floor(image_index) % 9][1];
        radar_angle = radar_pos[1][floor(image_index) % 9][2];
        break;
    }
}else{
    if attack == AT_TAUNT{
        radar_x = radar_pos[13][floor(image_index)][0];
        radar_y = radar_pos[13][floor(image_index)][1];
        radar_angle = radar_pos[13][floor(image_index)][2];
    }
    if attack == AT_TAUNT_2{
        sprite_index = sprite_get(string(plate) + "PS_CROUCH");
    }
}

#define step_sound()
{
sound_play(sound_get(string(random_func_2(floor(abs(x % 200)), 6, 1)) + "_step"), 0, 0, 0.6);
};