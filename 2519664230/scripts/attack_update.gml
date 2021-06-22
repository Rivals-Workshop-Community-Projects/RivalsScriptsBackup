//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DSPECIAL) {
    can_fast_fall = false;
    can_move = true;
    
    if (window == 1 && window_timer == 1) {
        dspecial_y = y;
    } else
    
    if (window == 2 && window_timer mod 4 == 3 && !hitpause) {
        
        bubbles_spawned++;
        instance_create(x, y, "obj_article1");
        if (window_timer < 8) {
            create_hitbox(AT_DSPECIAL, 1, x, y + window_timer);
        } else {
            create_hitbox(AT_DSPECIAL, 2, x, y + window_timer);
        }
    } else
    
    if (window == 3 && !free) {
        attack_end();
        state = PS_IDLE;
    }
    
    move_cooldown[AT_DSPECIAL] = 9999
}

if (attack == AT_NSPECIAL){
    can_fast_fall = false;
    //windows 2-4
    if (window > 1 && window < 5) {
        
                
        if (window_timer mod 5 == 4) {
            bubbles_spawned++;
            instance_create(x+25 * spr_dir, y -30, "obj_article1");
            
                    
            if (window_timer < 10 && !hitpause) {
                create_hitbox(AT_NSPECIAL, 3, x, y);
            }
        }
        
        if (state_timer - get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) >= get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)) {
            window = 5;
            window_timer = 0;
        } else {
        
            //stick is up
            if (joy_pad_idle) {
                window = 2;
                window_timer = state_timer - get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
            } else
            
            if (abs(joy_dir - 90) < 45) {
                window = 3;
                window_timer = state_timer - get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
            } else 
            if (abs(joy_dir - 270) < 45) {
                window = 4;
                window_timer = state_timer - get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
            } else {
                window = 2;
                window_timer = state_timer - get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH);
            }
        }

    }
}

if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)){
    
    can_fast_fall = false;
    
    if (window == 1) {
        clear_button_buffer(PC_SPECIAL_PRESSED);
        clear_button_buffer(PC_SHIELD_PRESSED);
        hsp = 0;
        hit_out = false;
        hit_kb = 0;
    }
    
    if (window > 1){
        can_wall_jump = true;
    }
    
    //rolling
    if (window == 2) {
        hsp = 7 * spr_dir;
        super_armor = true;
        
        if was_parried || ((special_pressed || shield_pressed) && state_timer > 35) || has_hit || state_timer > 100 {
            window = 3;
            window_timer = 0;
        }
        
    } else
    
    //end move and reduce airspeed
    if (window == 3) {
        destroy_hitboxes();
        super_armor = false;
        if (free && abs(hsp) > air_max_speed) {
            hsp *= 0.99;
        }
            
        if (hit_out) {
            //hsp = -4 * spr_dir;
            if (window_timer == 1) {
                push = (-3 - (hit_kb / 2.0)) * spr_dir;
                
                hsp = push;
            }
        }
        
        if (has_hit && window_timer == 1) {
            vsp = -7;
            if (!hit_out) {
                hsp = -2 * spr_dir;
            }
        }
    }
    
    //slowfall
    if (vsp > 7) {
        vsp = 7;
    }
    //gravity_speed = .5;
}

if (attack == AT_USPECIAL){
    
    waterfalling = true;
    
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 1 && window_timer == 1){
        times_through = 0;
        with(oPlayer) {
            waterfalled = false;
        }
    }
    if (window == 2){
        if (window_timer == 11) {
            times_through++;
            attack_end();
            
            if (times_through == 3){
                window = 3;
                window_timer = 0;
            }
        }
        
        if (hsp * spr_dir < 0) {
            hsp = 0;
        }
        
        with(oPlayer) {
            if (state == PS_SPAWN || state == PS_DEAD ||state == PS_RESPAWN) {
                waterfalled = false;
            } else
            
            if (waterfalled && !hitpause) {
                x = lerp(x, other.x + (10 * other.spr_dir), 0.2);
                y = lerp(y, other.y, 0.2);
            }
        }
    }
    if (window == 4) {
        with(oPlayer) {
            waterfalled = false;
        }
    }
}


if (attack == AT_FTILT && has_hit && window == 3) {
    hsp = 0;
    iasa_script();
    move_cooldown[AT_USTRONG] = 6;
    move_cooldown[AT_DSTRONG] = 6;
    move_cooldown[AT_FSTRONG] = 6;
}

if (attack == AT_JAB) {
    if((window == 1 || window == 4)  && attack_pressed) {
        clear_button_buffer(PC_ATTACK_PRESSED);
    }
}

if (attack == AT_DTILT) {
    if (state_timer > 3 && state_timer < 18) {
        super_armor = true;
    } else {
        super_armor = false;
    }
}

if (attack == AT_USTRONG) {
    if (window == 4 && (window_timer == 1 || window_timer == 3 || window_timer == 5) && hitstop == 0) {
        bubbles_spawned ++;
        instance_create(x - 52 * spr_dir, y-20, "obj_article1");
        bubbles_spawned ++;
        instance_create(x + 33 * spr_dir, y-20, "obj_article1");
    }
    
    if (abs(hsp) > dash_speed) {
        hsp *= 0.9;
    }
}

if (attack == AT_DSTRONG) {
    if (window == 2 && (window_timer == 3 || window_timer == 5) && !hitpause) {
        bubbles_spawned++;
        instance_create(x + 30 * spr_dir, y - 20, "obj_article1");
    } else if (window == 2 && (window_timer == 8 || window_timer == 10) && !hitpause) {
        bubbles_spawned++;
        instance_create(x - 28 * spr_dir, y - 20, "obj_article1");
    }
    
    if (abs(hsp) > dash_speed) {
        hsp *= 0.9;
    }
}

if (attack == AT_FSTRONG) {
    if (window == 3 && (window_timer == 1 || window_timer == 3 || window_timer == 5) && !hitpause) {
        bubbles_spawned++;
        instance_create(x + 10 * spr_dir, y-20, "obj_article1");
    }
    
    if (abs(hsp) > dash_speed) {
        hsp *= 0.9;
    }
}
