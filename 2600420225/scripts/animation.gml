if(state == PS_SPAWN){
    sprite_index = sprite_get("samus_intro")
    image_index = state_timer * 0.55;
}

if(spring_ball == true && PS_FIRST_JUMP && is_morph == true){
    sprite_index = sprite_get("samus_morph_ball_cycle_" + is_facing)
    image_index = 0
    jump_speed = 7;
}else if(spring_ball == true){
    jump_speed = 9;
}

if(spr_dir == 1){
    is_facing = "right";
}else if(spr_dir == -1){
    is_facing = "left";
}

if(state == PS_IDLE || state == PS_CROUCH){
    sprite_index = sprite_get("samus_idle_aim_"+ is_aiming + is_facing);
    image_index = state_timer * 0.05;
}

if(state == PS_WALK || state == PS_CROUCH){
    sprite_index = sprite_get("samus_run_aim_"+ is_aiming + is_facing);
    image_index = state_timer * walk_anim_speed;
}

if(state == PS_DASH_START || state == PS_CROUCH){
    sprite_index = sprite_get("samus_run_aim_"+ is_aiming + is_facing);
    image_index = state_timer * dash_anim_speed;
}

if(state == PS_DASH || state == PS_CROUCH){
    sprite_index = sprite_get("samus_run_aim_"+ is_aiming + is_facing);
    image_index = state_timer * dash_anim_speed;
}

if(state == PS_DASH_STOP || state == PS_CROUCH){
    sprite_index = sprite_get("samus_idle_aim_" + is_aiming + is_facing);
    image_index = state_timer * 1;
}

if(state == PS_DASH_TURN || state == PS_CROUCH) && is_morph == false{
    sprite_index = sprite_get("samus_idle_aim_" + is_aiming + is_facing);
}

if(state == PS_WALK_TURN || state == PS_CROUCH){
    sprite_index = sprite_get("samus_idle_aim_" + is_aiming + is_facing);
    image_index = state_timer * 0.1;
}
if((state == PS_JUMPSQUAT || state == PS_CROUCH) && is_crouch == false){
    sprite_index = sprite_get("samus_jump_start_" + is_facing);
    image_index = state_timer * 0.1;
}
if(state == PS_IDLE_AIR && (shinespark_trigger <= 40 || is_shinesparking == false)){
    if(is_morph = false){
        sprite_index = sprite_get("samus_aerial_aim_" + is_aiming + is_facing);
    }else if(is_morph == true){
        sprite_index = sprite_get("samus_morph_ball_cycle_" + is_facing);
        image_index = state_timer * 0;
    }
}
if(state == PS_DOUBLE_JUMP){
    sprite_index = sprite_get("samus_somersault_" + jump_power_up + is_facing);
    image_index = state_timer * 0.4;
    is_somersaulting = true;
}else{
    is_somersaulting = false;
}
if(state == PS_LAND && is_morph == false){
    sprite_index = sprite_get("samus_land_" + is_facing);
    image_index = state_timer * 0.2;
}
if(state == PS_WALL_JUMP && is_crouch == false){
    sprite_index = sprite_get("samus_wall_jump_" + is_facing);
}
if(is_shinesparking == false && is_dead == false && (state == PS_IDLE_AIR || (state == PS_FIRST_JUMP && (left_pressed|| right_pressed)) || state == PS_TUMBLE || state == PS_WALL_JUMP || state == PS_ATTACK_AIR)){
    if(left_pressed || left_down){
        spr_dir = -1;
    }else if(right_pressed || right_down){
        spr_dir = 1;
    }
}
if(prev_state == PS_WALL_JUMP && state == PS_IDLE_AIR){
    sprite_index = sprite_get("samus_somersault_" + jump_power_up + is_facing);
    if(jump_power_up == "normal_"){
        image_index = state_timer * 0.4;
    }else{
    image_index = state_timer * 0.6;
    }
    is_somersaulting = true;
}
if(state == PS_FIRST_JUMP && is_crouch == false){
    if(state_timer <= 1){
        need_somersault = (left_pressed || right_pressed || left_down || right_down);
    }if (need_somersault){
        if(high_jump == false){
            jump_speed = 8
        }else{
            jump_speed = 9
        }
        is_somersaulting = true;
        sprite_index = sprite_get("samus_somersault_" + jump_power_up + is_facing);
        if(jump_power_up == "normal_"){
        image_index = state_timer * 0.4;
        }else{
        image_index = state_timer * 0.6;
    }
    }else{
        if(high_jump == false){
            jump_speed = 7.5
        }else{
            jump_speed = 8.5
        }
        is_somersaulting = false;
        sprite_index = sprite_get("samus_jump_rise_" + is_facing);
        if(state_timer >= 60){
            set_state(PS_IDLE_AIR);
        }
    }
}

if(state == PS_IDLE){
    movement = "idle_";
}
if(state == PS_WALK || state == PS_DASH){
    movement = "run_";
}

//the rest

if(state == PS_DASH_START && state_timer > 20){
    state = PS_DASH
}

if(state == PS_PARRY || state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD || state == PS_WAVELAND || state == PS_PRATLAND || state == PS_PARRY_START || state == PS_CROUCH){
    sprite_index = sprite_get("samus_" + movement +"aim_"+ is_aiming + is_facing);
    state = prev_state;
    hsp = backup_hsp;
    vsp = backup_vsp;
}

if(state == PS_WALL_TECH || state == PS_PRATFALL || state == PS_TUMBLE || state == PS_AIR_DODGE){
    sprite_index = sprite_get("samus_aerial_aim_" + is_aiming + is_facing);
    state = PS_IDLE_AIR;
    hsp = backup_hsp;
    vsp = backup_vsp;
}
if(state == PS_WALL_TECH){
    sprite_index = sprite_get("samus_aerial_aim_" + is_aiming + is_facing);
    hsp = backup_hsp;
    vsp = backup_vsp;
}
if(state == PS_TECH_GROUND || state == PS_TECH_FORWARD || state == PS_TECH_BACKWARD){
    sprite_index = sprite_get("samus_" + movement +"aim_"+ is_aiming + is_facing);
    hsp = backup_hsp;
    vsp = backup_vsp;
}

if(down_pressed && is_crouch == false && is_morph == false && !free && !phone.state && state != PS_SPAWN){
    if(shield_down == false){
        special_state_timer = 0;
        is_crouch = true;
    }
}
if(is_crouch == true && !free && is_morph == false){
    if(special_state_timer <= 1){
        sprite_index = sprite_get("samus_crouch_anim_aim_" + is_aiming + is_facing);
        image_index = state_timer * 0.05;
    }else if(special_state_timer >= 1){
        sprite_index = sprite_get("samus_crouch_idle_aim_" + is_aiming + is_facing);
        image_index = state_timer * 0.05;
    }
}
if(is_crouch == true && is_morph == false){
    walk_speed = 0;
    walk_accel = 0;
    dash_speed = 0;
    initial_dash_speed = 0;
    can_jump = true;
    hsp = 0;
    if(state == PS_JUMPSQUAT || state == PS_DOUBLE_JUMP){
        is_crouch = false;
    }
}
if(up_pressed && is_crouch == true && is_morph == false){
    if(shield_down == false){
        is_crouch = false;
    }
}



if(down_pressed && is_crouch == true && is_morph == false && special_state_timer >= 10 && !free && morphball == true){
    if(shield_down == false){
        special_state_timer = 0;
        is_morph = true;
    }
}
if(is_morph == true){
    if(special_state_timer <= 1){
        sprite_index = sprite_get("samus_morphing_" + is_facing);
        image_index = state_timer * 0.02;
    }else if(special_state_timer >= 1){
        sprite_index = sprite_get("samus_morph_ball_cycle_" + is_facing);
        image_index = state_timer * 0.3;
    }
}
if(is_crouch == true && is_morph == true){
    initial_dash_time = 0;
    walk_speed = 4;
    walk_accel = 4;
    dash_speed = 4;
    if((state == PS_JUMPSQUAT || state == PS_FIRST_JUMP) && spring_ball == false){
        state = PS_IDLE;
    }
}
if(up_pressed && is_crouch == true && is_morph == true){
    if(free){
        set_state(PS_IDLE_AIR)
        is_crouch = false;
        is_morph = false;
    }else{
        is_morph = false;
    }
}
if(is_crouch == false && is_morph == false){
    initial_dash_time = 30;
    walk_speed = 4;
    walk_accel = 0.08;
    dash_speed = 7;
    initial_dash_speed = 4;
}

if(state == PS_HITSTUN){
    sprite_index = sprite_get("samus_hurt_"+is_facing);
    image_index = state_timer * 0.5;
}
if(state == PS_HITSTUN_LAND){
    sprite_index = sprite_get("samus_hurt_"+is_facing);
    image_index = state_timer * 0.5;
}

//adam text stuff
hud_text_draw = min(hud_text_draw + 1, string_length(hud_text));

//shinespark
if(shinespark_trigger >= 40 && is_shinesparking == true){
    gravity_speed = 0;
    is_crouch = false;
    is_morph = false;
    select_ammo = 0;
    beam_cooldown = 0;
    max_djumps = 0;
    missile_cooldown = 0;
    invincible = true;
    set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 20);
    create_hitbox(AT_DSPECIAL_AIR, 1, x, y);
    if(shine_right == true){
        hsp = 20;
        vsp = 0;
        sprite_index = sprite_get("shinespark_right");
    }else if(shine_left == true){
        hsp = -20;
        vsp = 0;
        sprite_index = sprite_get("shinespark_left");
    }else if(shine_diagonal_right == true){
        hsp = 15;
        vsp = -15;
        sprite_index = sprite_get("shinespark_right");
    }else if(shine_diagonal_left == true){
        hsp = -15;
        vsp = -15;
        sprite_index = sprite_get("shinespark_left");
    }else if(shine_up_right == true){
        hsp = 0;
        vsp = -20;
        sprite_index = sprite_get("shinespark_up_right");
    }else if(shine_up_left == true){
        hsp = 0;
        vsp = -20;
        sprite_index = sprite_get("shinespark_up_left");
    }
}

if(is_dead == true){
    sprite_index = sprite_get("death_animation");
    image_index = death_timer * 0.2;
}

//crystal flash

if(is_crystal_flashing == true && crystal_flash_timer >= 70){
    sprite_index = sprite_get("samus_crystalflash")
    image_index = (crystal_flash_timer - 70) * 0.25
}

//hurtbox switch
if(is_crouch == true && is_morph == false){
    hurtboxID.sprite_index = sprite_get("crouch_hurtbox");
    gravity_speed = 0.2;
}else if(is_crouch == true && is_morph == true){
    gravity_speed = 0.4;
    hurtboxID.sprite_index = sprite_get("morph_hurtbox");
}else{
    hurtboxID.sprite_index = sprite_get("idle_hurtbox");
    gravity_speed = 0.2;
}

//prev variables
prev_x = x;
prev_y = y;
prev_level = level;
prev_damage = damage;
backup_hsp = hsp;
backup_vsp = vsp;
backup_timer = state_timer;