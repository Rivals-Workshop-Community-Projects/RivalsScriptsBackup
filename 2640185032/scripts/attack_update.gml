//B - Reversals
if (attack == AT_FSPECIAL || attack == AT_FSPECIAL_AIR || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack){
    
    case AT_JAB:
        if((window == 1 || window == 4) && window_timer == 1){
            clear_button_buffer(PC_ATTACK_PRESSED);
        }
        //reverse ftilt
        if((window == 4 || window == 7) && window_timer = 1){
            if(spr_dir == -1){
                if(right_down || right_stick_pressed){
                    attack_end();
                    window = 1;
                    window_timer = 0;
                    spr_dir *= -1;
                    attack = AT_FTILT;
                }
            }else if(spr_dir == 1){
                if(left_down || left_stick_pressed){
                    attack_end();
                    window = 1;
                    window_timer = 0;
                    spr_dir *= -1;
                    attack = AT_FTILT;
                }
            }
        }
        break;
    
    case AT_DTILT:
        if(window == 2 && window_timer == 8){
            hsp = 75 * spr_dir;
        }else if (window == 3){
            hsp = 0;
        }
        break;
        
    case AT_FTILT:
        if(window == 3){
            //throw
            if(special_pressed){
                set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 9);
                window_timer = 0;
                window = 7;
            //2nd hit
            }else if(attack_pressed || right_stick_pressed || left_stick_pressed){
                set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 6);
                window_timer = 0;
                window = 4;
            }
        }else if(window == 4 && window_timer == 5 && !hitpause){
            sound_play(sound_get("swipe_Er02"), false, noone, 1, 1.2);
            
        //charge
        }else if(window == 7 && window_timer == 4){
            if(special_down){
                if(increase >= 10){
                    increased = true;
                    increase = 0;
                }else{
                    window_timer--;
                    increase++;
                }
            }
        }else if(window == 8 && window_timer == 1 && ftilt_knife_cd < 1){
            
            
            spawn_knife(AT_FTILT, 3, x + (32 * spr_dir), y - 40);
                
            with(thisknife){
                proj_angle = -15 * other.spr_dir;
                hsp = spr_dir * 18 * dcos(proj_angle);
                vsp = abs(18 * dsin(proj_angle));
                if(freeze > 0){
                    focus = true;
                }else{
                    focus = false;
                }
            }
            if(increased && frozen_timer <= 0) sound_play(sound_get("sfx_freeze_trigger"));
            increase = 0;
            increased = false;
            ftilt_knife_cd = 60;
            
        }
        break;
    
    case AT_UTILT:
        if(window > 1 && window < 4) hud_offset = 74;
        if(window == 2 && window_timer == 15){
            sound_play(sound_get("swipe_Sw02"));
        }
        break;
        
    case AT_UAIR:
        hud_offset = 28;
        if(window == 2 && window_timer == 8){
            if(uair_loop == 1){
                sound_play(asset_get("sfx_swipe_medium1"));
                window_timer = 0;
                window++;
            }else{
                uair_loop++;
            }
        }
        break;
        
    case AT_DAIR:
        if(window == 3 && window_timer == 1){
            if(has_hit && !fast_falling){
                vsp = -7;
            }
        }
        break;

    case AT_FSTRONG:
        if(window == 2 && window_timer == 15 && !hitpause){
            sound_play(sound_get("swipe_Bl03"));
            sound_play(asset_get("sfx_ice_dspecial_ground"));
            shake_camera( 5, 4 );
        }
        break;

    case AT_USTRONG:
        if(grab != noone){
            grab.hitstun -= 1; //static hitstun
        }
            if(window >= 5){
                force_depth = true;
                depth = 1;
                if(window == 5){
                    if(window_timer == 1){
                        grab.x = x + (12 * spr_dir);
                        grab.y = y - 70;
                    }else if(window_timer <= 4){
                        if((grab.state == PS_HITSTUN || grab.state == PS_HITSTUN_LAND)){
                            grab.x = ease_cubeOut(grab.x, (x - 25 * spr_dir), window_timer, 4);
                            grab.y = ease_cubeOut(grab.y, (y - 34), window_timer, 4);
                        }
                    }else if(window_timer > 4 && window_timer < 9){
                        if((grab.state == PS_HITSTUN || grab.state == PS_HITSTUN_LAND)){
                            grab.x = ease_cubeIn(grab.x, (x + 7 * spr_dir), window_timer - 4, 4);
                            grab.y = ease_cubeOut(grab.y, (y - 2), window_timer - 4, 4);
                        }
                    }
                }
            }else if(window == 7){
                //grab.hitstun += 2;
                grab = noone;
            }
        //}
        break;

    case AT_NSPECIAL:
        can_fast_fall = false;
        if(window == 1){
            if(window_timer == 1){
                clear_button_buffer(PC_SPECIAL_PRESSED);
                //can_b_reverse = true;
            }
            //B-reverse
            if(window_timer <= 5 && can_b_reverse){
                if((left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1)){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
        }else if(window == 2){
            can_b_reverse = false;
            can_jump = true;
            if(window_timer == 5){
                knives++;
                sound_play(sound_get("sfx_stack"));
                if(knives == 6){
                    spawn_hit_fx(x - (36 * spr_dir), y - 30, vfx_star_flash);
                    sound_play(asset_get("mfx_player_ready"));
                }
            }else if(window_timer == 18){
                if(knives >= 6){
                    knives = 6;
                    window_timer = 0;
                    window = 6;
                }
            }
            //go
            if(special_pressed && knives > 0){
                window_timer = 0;
                sound_play(asset_get("sfx_swipe_weak2"));
                window++;
            //shield cancel to store
            } else if(shield_pressed){
                window_timer = 0;
                window = 6;
                clear_button_buffer(PC_SHIELD_PRESSED);
                move_cooldown[AT_DSPECIAL] = 5; //pls dont spam
            }
        }else if(window == 3){
            can_jump = false;
            if(increase > 0) vsp = clamp(-90, vsp, 3);
            if(window_timer <= 5 && can_b_reverse){
                if((left_pressed && spr_dir == 1) || (right_pressed && spr_dir == -1)){
                    can_b_reverse = false;
                    spr_dir *= -1;
                    hsp *= -1;
                }
            }
            //charge stuff
            if(window_timer == 6){
                if(special_down){
                    if(increase >= 10){
                        increased = true;
                        increase = 0;
                    }else{
                        window_timer--;
                        increase++;
                    }
                }
            }else if(window_timer == 7){
                window++;
                window_timer = 1;
            }
        }
        if(window == 4 && knives > 0){
            if(free && increased) vsp -= 6;
            //my brain is unending
            var create_x = x + (15 * spr_dir);
            var create_y = y - 15;
            knife_timer = 0;
            for(var i = 1; i <= knives; i++){
                
                spawn_knife(AT_NSPECIAL, (1 + free), create_x, create_y);
                
                with(thisknife){
                    if(freeze > 0 && i == ceil(other.knives/2)){
                        focus = true;
                    }else{
                        focus = false;
                    }
                }
                create_x += ((2 + (2 * free)) * spr_dir);
                create_y -= 3;
                knife_timer += 4;
            }
            if(increased && frozen_timer <= 0) sound_play(sound_get("sfx_freeze_trigger"));
            knives = 0;
            knife_timer = 0;
            increase = 0;
            increased = false;
        }
        break;

    case AT_FSPECIAL:
        can_fast_fall = false;
        break;

    case AT_FSPECIAL_AIR:
        can_fast_fall = false;
        can_wall_jump = true;
        //djump restore
        djumps = 0;
        //landing
        if(window >= 2 && window < 5 && !hitpause && !free){
            sound_play(asset_get("sfx_land"));
            destroy_hitboxes();
            window_timer = 0;
            window = 5;
            hsp = 6 * spr_dir;
            /*if((spr_dir == 1 && left_down) || (spr_dir == -1 && right_down)){
                hsp = 0;
            }//*/
        }else if(window == 5 && free){
            //edge cancel
            attack_end();
            window = 10;
        }
        break;

    case AT_USPECIAL:
        can_fast_fall = false;
        can_wall_jump = true;
        //land
        if((window == 3 || window == 4) && !free){
            if(was_parried){
                destroy_hitboxes();
                attack_end();
                window = 10;
            }else{
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
                destroy_hitboxes();
                window_timer = 0;
                window = 7;
            }
        }
        if(window == 1){
            vsp = clamp(-5, vsp, 5);
            hsp = clamp(-4, hsp, 4);
        }else if(window == 2 || window == 3){
            
            //movement
            if(left_down || right_down){
                hsp += (0.25 * right_down) - (0.25 * left_down);
            }
            hsp = clamp(-7, hsp, 7);
            
            //loop
            if(window_timer == 9){
                window_timer = 1;
                uspec_loop++;
                if(uspec_loop == 4){
                    window_timer = 0;
                    window++;
                }
            }
            
            //on-hit bounce
            if(has_hit && !hitpause && (window == 2 && window_timer == 3)){
                destroy_hitboxes();
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
                set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 16);
                window_timer = 0;
                window = 4;
                vsp = min(-2, -8 + (2 * uspec_bounce));
            }
            
            //transition into knife throw
            if(uspec_knives > 0 && !hitpause){
                destroy_hitboxes();
                set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 6);
                window_timer = 0;
                window = 5;
                //djump restore
                djumps = 0;
            }
        }else if(window == 5){
            vsp = clamp(-3, vsp, 3);
            hsp = clamp(-3, hsp, 3);
            if(window_timer == 2){
                if(special_down){
                    if(increase >= 10){
                        increased = true;
                        increase = 0;
                    }else{
                        window_timer--;
                        increase++;
                    }
                }
            }
        }else if(window == 6 && window_timer == 1){
            var create_x = x + (48 * spr_dir);
            var create_y = y - 55;
            var knife_angle = -5 * spr_dir;
            knife_timer = 0;
            for(var i = 1; i <= uspec_knives; i++){
                create_x = ease_cubeIn(x + (48 * spr_dir), x - (18 * spr_dir) , i, 6);
                create_y = ease_cubeOut(y - 55, y - 15, i - 1, 6);
                
                spawn_knife(AT_USPECIAL, 4, create_x, create_y);
                
                with(thisknife){
                    proj_angle = knife_angle;
                    hsp = spr_dir * 18 * dcos(proj_angle);
                    vsp = abs(18 * dsin(proj_angle));
                    if(freeze > 0 && i == ceil(other.uspec_knives/2)){
                        focus = true;
                    }else{
                        focus = false;
                    }
                }
                knife_angle += -10 * spr_dir;
                knife_timer += 4;
            }
            if(increased && frozen_timer <= 0) sound_play(sound_get("sfx_freeze_trigger"));
            uspec_can_grab = false;
            uspec_knives = 0;
            knife_timer = 0;
            increase = 0;
            increased = false;//*/
        }else if(window == 7 && free){
            //edge cancel
            attack_end();
            window = 10;
        }
        break;

    case AT_DSPECIAL:
        move_cooldown[AT_DSPECIAL] = 20;
        hsp = clamp(-4.5, hsp, 4.5);
        can_fast_fall = false;
        if(window == 1){
            if(window_timer == 1){
                vsp = -4 + (!free * -3);
            }else if(window_timer == 5){
                with(asset_get("oPlayer")){
                    if("knife_stack" in self && self != other){
                        if(knife_stack >= 3 && state == PS_HITSTUN && hitstun_counter > 0 && !hitpause){
                            other.frozen_timer = ((other.freeze_max/6) * knife_stack);
                            with(other) sound_play(sound_get("sfx_freeze_trigger"));
                            store_hsp = hsp;
                            store_vsp = vsp;
                            is_frozen = true;
                            knife_stack = 0;
                            other.can_dspec = false;
                        }
                    }
                }
            }
        }else if(window == 3 && window_timer == 4 && has_hit){
            with(asset_get("oPlayer")){
                if("knife_stack" in self && self != other){
                    if(knife_stack >= 3 && state == PS_HITSTUN && hitstun_counter > 0 && !hitpause){
                        other.frozen_timer = ((other.freeze_max/6) * knife_stack);
                        with(other) sound_play(sound_get("sfx_freeze_trigger"));
                        store_hsp = hsp;
                        store_vsp = vsp;
                        is_frozen = true;
                        knife_stack = 0;
                        other.can_dspec = false;
                    }
                }
            }
        }
        break;

    
    case AT_TAUNT:
        if(window_timer < 5){
            if(taunt_down) window_timer--;
        }
        /*//Debug toggle
        if(window == 1 && window_timer == 1){
            debug = !debug;
        }//*/
        break;

    case AT_TAUNT_2:
        if(window == 3){
            if(state_timer ==  45){
                sound_play(asset_get("sfx_diamond_collect"));
            }else if(state_timer == 80){
                window_timer = 0;
                window++;
            }
        }
        break;
}

if(can_dspec && !free && (attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG)){
    if(!hitpause && special_pressed && down_down){
        attack_end();
        attack = AT_DSPECIAL;
        window_timer = 0;
        window = 1;
    }
}

#define spawn_knife(use_attack, use_hbox, use_x, use_y)
    
    thisknife = create_hitbox(use_attack, use_hbox, floor(use_x), floor(use_y));
    with(thisknife){
        timer = other.knife_timer;
        //apply freeze delay to knives, sync up with opponent freeze if possible
        if(other.increased == true || other.frozen_timer > 0){
            if(other.frozen_timer > 0){
                freeze = other.frozen_timer;
                freeze_max = other.freeze_max;
            }else{
                freeze = 120;
                freeze_max = 120;
            }
        }else{
            freeze = 0;
            freeze_max = 0;
        }
    }

    