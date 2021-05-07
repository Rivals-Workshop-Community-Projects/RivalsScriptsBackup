//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_DSPECIAL || 
    attack == AT_FSPECIAL_1 || attack == AT_USPECIAL_1 || attack == AT_DSPECIAL_1 ||
    attack == AT_USPECIAL_3 || attack == AT_DSPECIAL_3){
    trigger_b_reverse();
}

switch (attack){

    case AT_JAB:
        if(window == 3  && window_timer == 1 && !hitpause){
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        break;
        
    //ftilts
    case AT_FTILT:
        if(window == 1){
            if(window_timer == 5 && up_down){
                window = 4;         //up
                window_timer = 0;
            }else if(window_timer == 5 && down_down){
                window = 5;         //down
                window_timer = 0;
            }
        }
        if(window == 4 || window == 5){
            if(window_timer == 6){
            window = 3;
            window_timer = 0;
            }
        }
        break;

    //Shotput
    case AT_NSPECIAL:
        can_move = false;
        can_fast_fall = false;
        if(window == 1 && window_timer == 1){
            can_b_reverse = true;
        }
        if(window == 1 && window_timer <= 5){
            if(dir_held == (spr_dir * -1) && can_b_reverse){
                can_b_reverse = false;
                spr_dir *= -1;
                hsp *= -1;
            }
        }
        break;

    //Ultimate Uppercut
    case AT_NSPECIAL_2:
        can_move = false;
        can_fast_fall = false;
        if(window == 1){
            can_b_reverse = true;
            if(ultupper == 0){
                //resets stats after fully charged punch
                reset_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS);
                reset_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START);
                reset_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START);
                reset_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING);
                reset_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX);
                reset_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE);
                reset_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK);
                reset_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING);
                reset_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE);
                reset_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING);
                sound_play(sound_get("uppercharge2"));
            }
            clear_button_buffer(PC_SPECIAL_PRESSED);
            if(ultupper >= 6){
                //changes stats for fully charged punch
                set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
                set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 19);
                set_window_value(AT_NSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 21);
                set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 15);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 10);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 1.2);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 25);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.8);
                set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
                set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 8);
                set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 9);
                set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.9);
                set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 15);
                set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.7);
                window = 5;
                window_timer = 0;
            }else if(ultupper >= 4){
                window = 4;
                window_timer = 0;
                sound_play(sound_get("uppercharge2"));
            }else if(ultupper >= 2){
                window = 3;
                window_timer = 0;
                sound_play(sound_get("uppercharge2"));
            }
        }
        if(window >= 2 && window < 5){
            can_jump = true;
            //cancel
            if(shield_pressed){
                window_timer = 0;
                window = 9;
                clear_button_buffer(PC_SHIELD_PRESSED);
                sound_stop(sound_get("uppercharge2"));
                move_cooldown[AT_NSPECIAL_2] = 15;
            }
            if(window < 5 && window_timer <= 4){
                if(dir_held == (spr_dir * -1) && can_b_reverse){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
            //paunch
            if(special_pressed){
                set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 7);
                window_timer = 0;
                window = 5;
            }
            if(window_timer == 20){
                can_b_reverse = false;
                ultupper++;
                if(ultupper > 0 && ultupper % 2 == 0){
                    if(ultupper == 6){
                        window = 1;
                        set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
                        window_timer = 99;
                        ultupperflash = 0;
                        sound_play(asset_get("sfx_frog_fspecial_charge_full"));
                    }else{
                        window++;
                        window_timer = 0;
                        sound_play(sound_get("uppercharge2"));
                    }
                }
            } 
        }else if(window >= 5){
            if(window_timer <= 4){
                if(dir_held == (spr_dir * -1) && can_b_reverse){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }else if(window_timer == 5){
                can_b_reverse = false;
            }
            if(window == 5){
                ultupper = -1;
            }
            can_jump = false;
            can_shield = false;
            if(window == 6){
                if(window_timer == 3){
                    vsp = -9;
                    ultupper = 0;
                }
            }
        }
        if(hitpause){
            vsp = 0;
        }
        break;

    //Explosive Side Kick
    case AT_NSPECIAL_AIR:
        can_fast_fall = false;
        can_wall_jump = false;
        if(window == 1 && window_timer == 1){
            reset_attack_value(AT_NSPECIAL_3, AG_NUM_WINDOWS);
        }else if(window == 2){
            if(dir_held == (spr_dir * -1)){
                set_attack_value(AT_NSPECIAL_3, AG_NUM_WINDOWS, 9);
                spr_dir *= -1;
                window = 6;
                window_timer = 0;
            }
        }else if(window == 3 || window == 7){
            if(window_timer > 14){
                super_armor = true;
            }
        }else if(window == 4 || window == 8){
            super_armor = true;
        }else if(window == 5 || window == 9){
            super_armor = false;
        }
        break;

    //Onslaught
    case AT_FSPECIAL_AIR:
        can_move = false;
        if(window <= 5){
            if(window == 1){
                if(window_timer == 1){
                    reset_attack_value(AT_FSPECIAL_1, AG_NUM_WINDOWS);
                    reset_hitbox_value(AT_FSPECIAL_1, 7, HG_ANGLE);
                    reset_hitbox_value(AT_FSPECIAL_1, 7, HG_BASE_KNOCKBACK);
                    reset_window_value(AT_FSPECIAL_1, 5, AG_WINDOW_TYPE);
                    reset_window_value(AT_FSPECIAL_1, 13, AG_WINDOW_TYPE);
                    reset_hitbox_value(AT_FSPECIAL_1, 8, HG_KNOCKBACK_SCALING);
                }
                if (window_timer == 2 && free){
                    set_window_value(AT_FSPECIAL_1, 5, AG_WINDOW_TYPE, 7);
                    set_window_value(AT_FSPECIAL_1, 13, AG_WINDOW_TYPE, 7);
                    set_hitbox_value(AT_FSPECIAL_1, 7, HG_ANGLE, 90);
                    set_hitbox_value(AT_FSPECIAL_1, 7, HG_BASE_KNOCKBACK, 5);
                }
                if(window_timer == 2 && runeB){
                    rage = get_player_damage(player);
                    set_hitbox_value(AT_FSPECIAL_1, 8, HG_KNOCKBACK_SCALING, (1.2 + (rage * 0.005)));
                }
            }
            if(window == 2){
                if(!was_parried && !hitpause) hsp = 11 * spr_dir;
                
                //ledge snap
                if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
                    for (var i = 1; i < 40; i++){
                        if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
                            reset_window_value(AT_FSPECIAL_1, 5, AG_WINDOW_TYPE);
                            reset_window_value(AT_FSPECIAL_1, 13, AG_WINDOW_TYPE);
                            reset_hitbox_value(AT_FSPECIAL_1, 7, HG_ANGLE);
                            reset_hitbox_value(AT_FSPECIAL_1, 7, HG_BASE_KNOCKBACK);
                            y -= i;
                            break;
                        }
                    }      
                }
                
            }
            can_wall_jump = true;
        }
        break;

    //Burning Dropkick
    case AT_FSPECIAL_2:
        can_fast_fall = false;
        can_move = false;
        can_wall_jump = true;
        if(window == 1){
            if(window_timer == 1){
                multihit = noone;
                can_b_reverse = true;
                reset_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED);
                reset_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED);
            }
            if(window_timer < 5 && (dir_held == spr_dir * -1) && can_b_reverse){
                spr_dir *= -1;
                hsp *= -1;
                set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 8);
                set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 8);
                can_b_reverse = false;
            }
        }
        if(window == 3 && !was_parried && !hitpause){
            hsp = 6.5 * spr_dir;
        }
        if(window > 2 && window < 5 && !free){
            window = 6;
            window_timer = 0;
        }
        //edge cancel
        if(window == 6 && free){
            window_timer = 99;
        }
        if(multihit != noone && !hitpause){
            destroy_hitboxes();
            window = 5;
            window_timer = 0;
            can_move = true;
            hsp = -4 * spr_dir;
            vsp = -6;
            multihit = noone;
        }
        break;

    //Suplex
    case AT_FSPECIAL:
        can_fast_fall = false;
        can_move = false;
        has_suplex = false;
        if(window == 1){
            reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);
            multihit = noone;
        }
        if(window < 4){
            can_wall_jump = true;
        }else{
            can_wall_jump = false;
        }
        if(window == 7 && free){
            window_timer = 0;
        }
        if(window >= 4 && window <= 7 && multihit != noone){
            with(multihit){
                if(hitpause){
                    if(other.window == 4){
                        invincible = true;
                        x = other.x + (15 * other.spr_dir);
                        y = other.y - 10;
                    }else if(other.window == 5){
                        invincible = true;
                        x = ease_cubeIn(x, other.x, other.window_timer, 9);
                        y = ease_cubeOut(y, (other.y - 40), other.window_timer, 9);
                    }else if(other.window == 6){
                        invincible = true;
                        x = ease_quadOut(x, (other.x - (22 * other.spr_dir)), other.window_timer, 14);
                        y = ease_cubeIn(y, (other.y - 1), other.window_timer, 14);
                    }else if (other.window == 7){
                        invincible = true;
                        x = other.x - (22 * other.spr_dir);
                        y = other.y + 10;
                    }
                }
            }
        }
        if(window == 2){
            if(!was_parried && !hitpause) hsp = 10 * spr_dir;
                
                //ledge snap
                if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
                    for (var i = 1; i < 40; i++){
                        if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) {
                            y -= i;
                            break;
                        }
                    }      
                }
        }
        if(window == 8){
            multihit = noone;
        }
        break;

    //Soaring Axe Kick
    case AT_USPECIAL_GROUND:
        if(window > 1 && window < 6){
            can_wall_jump = true;
        }
        if(window == 1 && window_timer == 1){
            if(free){
                hsp = 1 * spr_dir;
            }
            reset_attack_value(AT_USPECIAL_1, AG_NUM_WINDOWS);
            reset_window_value(AT_USPECIAL_1, 3, AG_WINDOW_TYPE);
            sak2thesequel = false;
            sakcounter = 0;
            multihit = noone;
        }
        if(window == 2 && multihit != noone  && (multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
            multihit.hsp = hsp;
        }
        if(window == 3){
            multihit = noone;
            if(window_timer < 13 && special_pressed){
                sak2thesequel = true;
            }
            if(window_timer == 13 && sak2thesequel && !was_parried){
                set_attack_value(AT_USPECIAL_1, AG_NUM_WINDOWS, 7);
                window = 4;
                window_timer = 0;
            }
        }
        if(window == 5){
            //fall_through = down_down;
            if(!free){
                destroy_hitboxes();
                window = 6;
                window_timer = 0;
                sound_play(asset_get("sfx_blow_heavy1"));
            }
            if(!hitpause){
                sakcounter++;
            }
            if(sakcounter >= 37){
                can_jump = true;
                can_shield = true;
            }
        }
        if(window >= 6){
            can_jump = false;
            can_shield = false;
            can_move = false;
        }
        break;

    //Helicopter Kick
    case AT_USPECIAL:
        can_wall_jump = true;
        can_move = false;
        //kick loop variable
        if (window == 1 && window_timer == 1){
            heliloop = 1;
            multihit = noone;
        }
        //very specific and suboptimal speed changing
        if (window > 1 && window < 8){
            vsp = -3.75;
            if(spr_dir == dir_held){                            //Holding forwards
                if(abs(hsp) >= 5.5){
                    hsp = 5.5 * spr_dir;
                }else{
                    hsp += (1.83 * spr_dir);
                }
            }else if(spr_dir != dir_held && dir_held != 0){     //Holding back
                if(hsp <= -3 || hsp >= 3){
                    hsp = -3 * spr_dir;
                }else{
                    hsp += (-1.5 * spr_dir);
                }
            }else{                                              //No hold
                if(abs(hsp) >= 3){
                    hsp = (3 * spr_dir);
                }else{
                    hsp += (1.5 * spr_dir);
                }
            }
        }
        if(window == 8){
            if(hsp > 3 || hsp < -3){
                hsp = 3 * dir_held;
            }
            if( window_timer == 1){
                vsp = 0;
                if(dir_held != 0){
                    hsp = 3 * dir_held;
                }else{
                    hsp = 2 * spr_dir;
                }
                multihit = noone;
            }
        }
        if(window == 6 && window_timer == 3 && heliloop == 1){
            heliloop = 2;
            window = 3;
            window_timer = 0;
            attack_end();
        }
        //keep player inside hits
        if(multihit != noone && has_hit_player && (multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
            multihit.x = ease_linear(multihit.x, (x + 40 * spr_dir), window_timer, get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH));
            multihit.y = ease_linear(multihit.y, (y - 20), window_timer, get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH));
        }
        if(hitpause){
            hsp = 0;
            vsp = 0;
        }
        break;

    //Thrust Uppercut
    case AT_USPECIAL_2:
        can_wall_jump = true;
        if(window == 1 && window_timer == 1){
            thrupploop = 1
            reset_num_hitboxes(AT_USPECIAL_2);
            multihit = noone;
        }
        if(window > 1 && window < 4 && thrupploop < 3){
            vsp = -10;
        }
        if(window = 2 && window_timer == 3){
            if(thrupploop < 4){
                if(thrupploop == 1){
                    set_num_hitboxes(AT_USPECIAL_2, 2);
                }
                thrupploop++;
                window_timer = 0;
            }
        }
        if(window = 4){
            multihit = noone;
            vsp = -3;
        }
        if(multihit != noone && has_hit_player && (multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
            multihit.x = ease_linear(multihit.x, (x + 17 * spr_dir), 1, 5);
            multihit.y = ease_linear(multihit.y, (y - 75), 1, 5);
        }
        if(hitpause){
            hsp = 0;
            vsp = 0;
        }
        break;

    //Head-On-Assault
    case AT_DSPECIAL_AIR:
        can_fast_fall = false;
        if(window == 1 && window_timer == 1){
                reset_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED);
                reset_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED_TYPE);
                reset_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED);
                reset_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED_TYPE);
                reset_num_hitboxes(AT_DSPECIAL_1);
                reset_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_ANIM_FRAME_START);
                reset_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_HSPEED_TYPE);
                reset_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_VSPEED);
                reset_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_VSPEED_TYPE);
                multihit = noone;
            if(free){
                set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED, 0);
                set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
                set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED, 0);
                set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_VSPEED_TYPE, 1);
                set_num_hitboxes(AT_DSPECIAL_1, 2);
                set_window_value(AT_DSPECIAL_1, 2, AG_WINDOW_ANIM_FRAME_START, 4);
                set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_HSPEED_TYPE, 0);
                set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_VSPEED, 1);
                set_window_value(AT_DSPECIAL_1, 3, AG_WINDOW_VSPEED_TYPE, 1);
            }
        }
        if(window < 4 && multihit != noone && (multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
            multihit.hsp = hsp - (2 * spr_dir);
            multihit.vsp = vsp + 2;
        }
        if(window == 4){
            if(!has_hit_player){
                fall_through = down_down;
            }
            if(multihit != noone){
                if((multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
                    multihit.hsp = hsp;
                }
            }
            can_wall_jump = true;
            can_move = false;
            if(!free && !hitpause){
                destroy_hitboxes();
                sound_play(asset_get("sfx_zetter_downb"));
                window_timer = 0;
                window = 5;
            }
            if(window_timer == 2 && runeE){
                attack_end();
            }
        }
        if(window == 5){
            multihit = noone;
        }
        break;

    //Feint Jump
    case AT_DSPECIAL:
        can_fast_fall = false;
        can_move = false;
        if(window < 5){
            fall_through = down_down;
        }
        if(window > 2){
            can_wall_jump = true;
            if(!free){
                has_fjump = true;
                if(window == 3 || window == 4){
                    window = 8;
                    window_timer = 0;
                    destroy_hitboxes();
                }else if(window >= 5 && window <= 7){
                    if(window == 5){
                        hsp += 8 * spr_dir;
                    }
                    window = 9;
                    window_timer = 0;
                    destroy_hitboxes();
                }
            }
        }
        if(window == 2 && window_timer == 1){
            has_fjump = false;
        }else if(window == 3 && window_timer == 1){
            spr_dir = spr_dir * -1;
        }else if(window == 4 && window_timer >= 10){
            can_jump = true;
        }
        if(window == 3 || window == 4){
            if(special_pressed){
                window = 5;
                window_timer = 0;
            }
        }
        if(window == 5 && window_timer == 1){
            if(dir_held * spr_dir == -1){
                    spr_dir *= -1;
                }
        }
        //edge cancel
        if(window == 9 && free){
            window_timer = 99;
            has_fjump = true;
            move_cooldown[AT_DSPECIAL] = 50;
        }
        break;

    //Counter Throw
    case AT_DSPECIAL_2:
        can_fast_fall = false;
        can_move = false;
        if(window == 1){
            reset_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS);
            reset_hitbox_value(AT_DSPECIAL_3, 2, HG_DAMAGE);
            reset_hitbox_value(AT_DSPECIAL_3, 2, HG_KNOCKBACK_SCALING);
            reset_hitbox_value(AT_DSPECIAL_3, 2, HG_BASE_KNOCKBACK);
            multihit = noone;
            if(window_timer == 5){
                invincible = true;
                invince_time = 15;
            }
        }
        if(window == 2){
            if(place_meeting(x, y, asset_get("pHitBox"))){
                var trig_hbox = instance_place(x,y, asset_get("pHitBox"));
                if(trig_hbox.player != player){
                    if(trig_hbox.type == 1){
                        invincible = false;
                        trig_hbox.can_hit[player] = false;
                        set_hitbox_value(AT_DSPECIAL_3, 2, HG_DAMAGE, (trig_hbox.damage * 1.3));
                        //ka-chink!
                        sound_play(sound_get("countertrigger"));
                        //turn around
                        if(trig_hbox.player_id.x < x){
                            spr_dir = -1;
                        }
                        /*trig_hbox.player_id.hitpause = true;
                        trig_hbox.player_id.hitstop = 10;
                        hitpause = true;
                        hitstop = 10;*/
                        set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 8);
                        window_timer = 0;
                        window = 5;
                    }else if(trig_hbox.type == 2){
                        invincible = false;
                    }
                }
            }
        }
        if(window == 5 && multihit != noone){
            multihit.x = x + 43 * spr_dir;
            multihit.y = y - 3;
            if(window_timer == 5 && has_hit_player){
                window = 6;
                window_timer = 0;
                spr_dir *= -1;
            }
        }
        //moving the opponent
        if(window == 6 && multihit != noone){
            if(window_timer <= 5){
                if((multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
                    multihit.x = ease_cubeIn(multihit.x, x, window_timer, window_timer + 5);
                    multihit.y = ease_cubeOut(multihit.y, (y - 50), window_timer, window_timer + 5);
                }
            }else if(window_timer > 5){
                if((multihit.state == PS_HITSTUN || multihit.state == PS_HITSTUN_LAND)){
                    multihit.x = ease_cubeOut(multihit.x, (x + 45 * spr_dir), window_timer - 5, 5);
                    multihit.y = ease_cubeIn(multihit.y, (y - 1), window_timer - 5, 5);
                }
            }
        }
        if(window == 7){
            multihit = noone;
        }
        break;

    case AT_TAUNT:
        if((practice && !classic) || (runeA && !classic)){
            if(window == 3 && window_timer == 1){
                menu_timer = 126;
            }
            if(menu_open = true){
                window = 3;
                window_timer = 2;
            }
        }
        break;

}
