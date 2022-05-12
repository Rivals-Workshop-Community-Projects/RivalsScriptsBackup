if(!has_rune("N")){
    hud_beam_cooldown -= (hud_beam_cooldown > 0? 1: 0);
    hud_missile_cooldown -= (hud_missile_cooldown > 0? 1: 0);
    hud_flash_shift_cooldown -= (hud_flash_shift_cooldown > 0? 1: 0);
}
sound_timer -= (sound_timer > 0? 1: 0);
if(cross_timer > 0){
    cross_timer--;
}
if(openmenu == true && menu_y > -42 ){
    if(menu_y == -12){
        sound_play(sound_get("hud_open"));
    }
    menu_y--;
    menu_y--;
    menu_y--;
}else if(openmenu == false && menu_y < -12){
    if(menu_y == -42){
        sound_play(sound_get("hud_close"));
    }
    menu_y++;
    menu_y++;
    menu_y++;
}
if(menu_y == -42 && hologram_y > -24){
    hologram_y -= 4;
}else if(menu_y != -42 && hologram_y < 0){
    hologram_y += 4;
}

if(state == PS_IDLE_AIR){
    if(idle_air_index < 2){
        idle_air_index += 0.15;
    }
}else{
    idle_air_index = 0;
}

//hurtbox change
if(free){
    sprite_change_offset("crouchbox", 28, 66);
}else{
    sprite_change_offset("crouchbox", 23, 50);
}
if(state == PS_CROUCH){
    hurtboxID.image_yscale = 0.75;
}else{
    hurtboxID.image_yscale = 1;
}

//power up reset
if(hud_beam_cooldown <= 300 && !has_rune("N")){
    power_ups[0] = 0;
    power_ups[1] = 0;
    power_ups[2] = 0;
}
if(hud_missile_cooldown <= 300 && !has_rune("N")){
    power_ups[3] = 0;
    power_ups[4] = 0;
}
if(hud_flash_shift_cooldown <= 300 && !has_rune("N")){
    power_ups[5] = 0;
    if(aeion_sfx == 0 && hud_flash_shift_cooldown > 0){
        aeion_sfx = 1;
        sound_play(sound_get("aeion_empty"));
    }
}

//menu mode select
menu_v_select -= (menu_v_select > 0? 1: 0);
if(state == PS_SPAWN && taunt_pressed && menu_v_select <= 0){
    menu_v_select = 8;
    menu_version = (menu_version = 0? 1: 0);
    sound_play(sound_get("hud_select"));
}

//beam properties
if(power_ups[1] == 1 && power_ups[2] == 0){
    beam_sprite = 1;
}else if(power_ups[1] == 0 && power_ups[2] == 1){
    beam_sprite = 2;
}else if(power_ups[1] == 1 && power_ups[2] == 1){
    beam_sprite = 3;
}else{
    beam_sprite = 0;
}

//uspecial cooldown
if(move_cooldown[AT_USPECIAL] > 0 && free){
    move_cooldown[AT_USPECIAL] = 10;
}else if(move_cooldown[AT_USPECIAL] > 0 && !free) || state == PS_WALL_JUMP{
    move_cooldown[AT_USPECIAL] = 0;
}
if(has_rune("C") && spark_timer < 50){
    spark_timer = 600;
}

//walljump
if(state == PS_WALL_JUMP && state_timer >= 6){
    state = PS_DOUBLE_JUMP;
    state_timer = 0;
}

//missile properties
if(power_ups[3] == 1 && power_ups[4] == 0){
    missile_sprite = 1;
}else if(power_ups[3] == 0 && power_ups[4] == 1) || (power_ups[3] == 1 && power_ups[4] == 1){
    missile_sprite = 2;
}else{
    missile_sprite = 0;
}

with (oPlayer) if (self != other){
    if(frozen_level != prev_frozen_level){
        ice_alpha = 1 * frozen_level;
    }
    if(frozen == true){
        ice_alpha = 2;
        hsp = 0;
        vsp = 0;
        state = PS_HITSTUN;
    }

    if(frozen_timer > 0){
        frozen_timer--;
    }else{
        frozen = false;
    }

    prev_frozen_level = frozen_level;
    if(ice_alpha > 0){
        ice_alpha -= 0.01;
    }
}

//dspecial
sprite_change_offset("1_ball_hurt", 48, 94);
sprite_change_offset("-1_ball_hurt", 48, 94);
if(power_cooldown > 0){
    power_cooldown--;
}
if(bomb_timer > 0){
    bomb_timer--;
}

//flash shift
if(power_ups[5] == 1){
    aeion -= (has_rune("N")? 0: (has_rune("A")? 1: 2));
    if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD || state == PS_AIR_DODGE) && state_timer = 0{
        sound_play(sound_get("flash_trail"), false, false, 0.6);
        sound_play(sound_get("flash_shift"));
        hud_flash_shift_cooldown -= 20;
        aeion -= (has_rune("N")? 0: (has_rune("A")? 20: 40));
    }
    roll_forward_max    = 12;
    roll_backward_max   = 12;
    roll_forward_startup_frames     = 0;
    roll_forward_active_frames      = 4;
    roll_forward_recovery_frames    = 1;
    roll_back_startup_frames        = 0;
    roll_back_active_frames         = 4;
    roll_back_recovery_frames       = 1;
    air_dodge_startup_frames    = 0;
    air_dodge_active_frames     = 5;
    air_dodge_recovery_frames   = 2;
    air_dodge_speed = 12;
}else{
    if(aeion < 1000){
        aeion += 1000/300;
    }
    roll_forward_max    = 9;
    roll_backward_max   = 9;
    roll_forward_startup_frames     = 1;
    roll_forward_active_frames      = 3;
    roll_forward_recovery_frames    = 1;
    roll_back_startup_frames        = 1;
    roll_back_active_frames         = 3;
    roll_back_recovery_frames       = 1;
    air_dodge_startup_frames    = 1;
    air_dodge_active_frames     = 4;
    air_dodge_recovery_frames   = 2;
    air_dodge_speed = 8;
}
if(hud_flash_shift_cooldown == 0 && aeion_sfx == 1){
    aeion_sfx = 0;
    sound_play(sound_get("aeion_refilled"));
}

//dattack
if(attack == AT_DATTACK && window == 4){
    if(spr_distance < 60){
        spr_distance += 5;
    }
}else if(spr_distance > 0){
    spr_distance -= 5;
}
if(state != PS_ATTACK_GROUND && attack == AT_DATTACK){
    sound_stop(sound_get("boost_run"));
}

//rune E
if(has_rune("E") && state != PS_WALL_JUMP){
    has_walljump = 1;
    can_wall_jump = 1;
}

//nair
if(state != PS_ATTACK_AIR){
    sound_stop(sound_get("screw_loop"));
}

//got hit sound
if(get_player_damage(player) - prev_dameg > 0){
if(get_player_damage(player) - prev_dameg <= 3 && sound_timer <= 0){
    sound_play(sound_get("hit_small"));
    sound_timer = 30;
}else if(get_player_damage(player) - prev_dameg <= 10){
    sound_play(sound_get("hit_med"));
}else if(get_player_damage(player) - prev_dameg > 10){
    sound_play(sound_get("hit_hard"));
}
}
if(get_player_color(player) == 26){
    shader_start();
}
prev_dameg = get_player_damage(player);