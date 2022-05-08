if(!free || state == PS_WALL_JUMP){
    upcancel = false;
}
if(state == PS_DOUBLE_JUMP){ 
    if(state_timer == 1){//Dj turn around
        if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
            spr_dir *= -1;
        }
    }
    if(armorpoints > 0){
        soft_armor = 16;
    }
}
if(armorpoints <= 0){
    if(attack != AT_UTILT && attack != AT_FTILT){
        moveArmorLoss = false;
    }
}
if(state != PS_DOUBLE_JUMP && armorhit){
    armorloss = true;
    armorhit = false;
}
if(armorloss){
    armorpoints -= 1;
    if(attack != AT_FSPECIAL_2 && attack != AT_NSPECIAL && !djhit){
        armorlossfx = spawn_hit_fx(x, y, djarmorexit);
        armorlossfx.depth = -10;
    }
    armorloss = false;
    djhit = false;
}
if(armorplus){
    armorpoints += armorplus;
    armorgainfx = spawn_hit_fx(x, y, djarmorgain);
    armorplus = 0;
}
if(armorgain){
    if(attack == AT_USPECIAL || state == PS_WALL_JUMP){
        armorpoints += 1;
    }else{
        armorpoints += 3;
    }
    armorgainfx = spawn_hit_fx(x, y, djarmorgain);
    armorgain = false;
}
if(armorpoints > 3){
    armorpoints = 3;
}
if(armorpoints < 0){
    armorpoints = 0;
}
if(state == PS_WALL_JUMP && state_timer == 1){
    armorgain = true;
}
if(state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND){
    hit_totem = false;
    if(state != PS_IDLE){
        ground_friction = ground_friction_default;
    }
}
if(swallow == true){
    if((((left_down && spr_dir == 1) || (right_down && spr_dir == -1)) || down_down) && ground_friction == totem_slide_friction){
        if(abs(hsp) > 0){
            hsp -= 1*sign(hsp);
        }
        ground_friction = ground_friction_default;
    }
    gravity_speed = swallow_gravity;
}else{
    gravity_speed = gravity_speed_default;
}
with(asset_get("oPlayer")){
    if(free){
        prison_time = 90;
    }else{
        prison_time = 150;
    }
    if(self != other){
        if(state != PS_RESPAWN && prisoner == other){
            //print_debug(prisoner);
            prison_time_counter++;
            can_tech = false;
            inRock = true;
            if (prison_time_counter > 50){
                visible = false;
            }
            can_bubble_timer = 2;
            if(!prison_happen){
                myPrison = instance_create(x, y, "obj_article2");
                myPrison.myPlayer = self;
                prison_lockout_counter = prison_lockout_time;
                state = PS_WRAPPED;
                wrap_time = 9999;
                prison_happen = true;
            }
            if(prison_time_counter < prison_time && (prev_state == PS_HITSTUN || prev_state == PS_TUMBLE || prev_state == PS_HITSTUN_LAND)){
                state = PS_WRAPPED;
                wrap_time = 9999;
            }
            if(free && prison_time_counter > 50){
                state = PS_HITSTUN;
                hitstun = prison_time - prison_time_counter;
            }
            if(!free){
                if(instance_exists(instance_place(x, y+2, asset_get("par_block")))){
                    prison_plat = instance_place(x, y+2, asset_get("par_block"));
                }
                if(instance_exists(instance_place(x, y+2, asset_get("par_jumpthrough")))){
                    prison_plat = instance_place(x, y+2, asset_get("par_jumpthrough"));
                }
                state = PS_WRAPPED;
            }else{
                if(prison_plat != noone){
                    state = PS_WRAPPED;
                }
            }
            if(prison_time_counter < 0){
                prison_time_counter = 0;
            }
            if(prison_time_counter >= prison_time){
                exit_prison();
            }
            if(prison_time_counter >= prison_time - (prison_time / 4)){
                prison_canAct = true;
            }
            if(prison_time_counter == round(prison_time - (prison_time / 4))){
                sound_play(asset_get("sfx_dizzy"));
            }
            if(attack_pressed && prison_time_counter >= prison_time - (prison_time / 4)){
                exit_prison();
            }
            if(special_pressed && prison_time_counter >= prison_time - (prison_time / 4)){
                exit_prison();
            }
            if((attack_pressed || up_stick_pressed || left_stick_pressed || right_stick_pressed || down_stick_pressed)
            && prison_time_counter >= prison_time - (prison_time / 4)){
                exit_prison();
            }
            if(attack_pressed && (up_strong_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed)
            && prison_time_counter >= prison_time - (prison_time / 4)){
                exit_prison();
            }
            if(shield_pressed && joy_pad_idle && prison_time_counter >= prison_time - (prison_time / 4)){
                set_state(PS_PARRY);
                exit_prison();
            }
            if(shield_pressed && free && prison_time_counter >= prison_time - (prison_time / 4)){
                exit_prison();
            }
            if(prev_state == PS_RESPAWN){
                exit_prison();
            }
            if(bubbled){
                exit_prison();
            }
        }
        if(prisoner == noone){
            prison_time_counter = 0;
        }
        if(prison_lockout_counter > 0 && !hitpause && prev_prisoner == other){
            prison_lockout_counter--;
            //print_debug(prison_lockout_counter);
        }
        //print_debug(prison_time_counter);
    }
}
if(attack == AT_FSPECIAL){
    prat_land_time = 10;
}
if(state == PS_DOUBLE_JUMP && armorpoints > 0){
    if(state_timer == 1){
        var jarmor = spawn_hit_fx(x, y, djarmorenter);
        jarmor.depth = -10;
    }
}
if(instance_exists(armorgainfx)){
    armorsfxtimer++;
    armorgainfx.depth = -10;
    if(attack == AT_DSPECIAL){
        armorgainfx.y = y+15;
        armorgainfx.x = x+20*spr_dir;
    }else{
        armorgainfx.y = y;
        armorgainfx.x = x;
    }
    if(armorsfxtimer == 20){
        sound_play(asset_get("sfx_ice_nspecial_armor"));
    }
}else{
    armorsfxtimer = 0;
}
if(instance_exists(armorlossfx)){
    armorlossfx.depth = -10;
}
if(armorpoints < old_armorpoints && state != PS_DOUBLE_JUMP){
    sound_play(asset_get("sfx_kragg_spike"));
}
if(armorpoints > 0){
    land_sound = asset_get("sfx_land_heavy")
    waveland_sound = asset_get("sfx_waveland_kra");
}else{
    land_sound = asset_get("sfx_land_med2");
    waveland_sound = asset_get("sfx_waveland_zet");
}
if(fdownsprecovery){
    super_armor = true;
    if((state == PS_ATTACK_AIR && state_timer > 7) || state != PS_ATTACK_AIR){
        fdownsprecovery = false;
    }
}
//print_debug(has_dinoplat);
if(!has_dinoplat && !free){ //check if ground has owner
    var below;
    below = instance_position(x, y+2, all);
    if(!variable_instance_exists(below, "player_id") && below != noone && DinockPlatref == noone){
        has_dinoplat = true;
    }
}
var dplat = noone;
with(obj_article_platform){
    if(player_id == other){
        if(destroy){
            dplat = self;
        }
    }
}
if(dplat != noone){
        var a = spawn_hit_fx(dplat.x-1*dplat.spr_dir, dplat.y+30, 303);
        var b = spawn_hit_fx(dplat.x-1*dplat.spr_dir, dplat.y+30, 303);
        b.hit_angle = 160*spr_dir;
        //a.depth = -100;
}
with(asset_get("oPlayer")){
    if(!instance_exists(DinockPlatref)){
        DinockPlatref = noone;
    }
    if(DinockPlatref != noone && (free || !place_meeting(x, y+2, DinockPlatref))){
        DinockPlatref.jumpcount += 1;
        DinockPlatref = noone;
    }
}
if(state == PS_PARRY_START && prev_state == PS_CROUCH && !parry_cooldown){
    hurtboxID.sprite_index = sprite_get("hurtBoxYerry");
    super_armor = true;
    attack = AT_FTILT;
    window = 4;
    window_timer = 0;
    state = PS_ATTACK_GROUND;
    //print_debug("Yoshi Parry");
}
if(attack == AT_FTILT && window == 4 && window_timer >= 6){
    hurtboxID.sprite_index = sprite_get("hurtBox");
}
if(hurtboxID.sprite_index == sprite_get("hurtBoxYerry") && state != PS_ATTACK_GROUND){
    hurtboxID.sprite_index = sprite_get("hurtBox");
}
if(attack == AT_FTILT && window == 4){
    if(window_timer <= 2){
        super_armor = true;
    }
    if(window_timer <= 5){
        if(jump_pressed){
            state = PS_JUMPSQUAT;
            clear_button_buffer(PC_SHIELD_PRESSED);
            clear_button_buffer(PC_JUMP_PRESSED);
        }
    }else{
        state = PS_PARRY_START;
    }
}
old_armorpoints = armorpoints;
#define exit_prison
    sound_stop(asset_get("sfx_dizzy"));
    if(prev_state != PS_RESPAWN && state != PS_PARRY){
        state = PS_IDLE;
    }
    
    vsp = 0;
    hsp = 0;
    old_vsp = 0;
    old_hsp = 0;
    
    visible = true;
    prison_canAct = false;
    invincible = true;
    invince_time = 5;
    wrap_time = 0;
    inRock = false;
    prisoner = noone;
    prison_time_counter = 0;
    prison_happen = false;
    wrap_fall_time = 0;
    wrap_fall = false;
    prison_plat = noone;
//    print_debug("exit");