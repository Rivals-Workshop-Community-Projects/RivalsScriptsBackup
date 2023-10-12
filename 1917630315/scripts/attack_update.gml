//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_DAIR ){
    can_fast_fall = false;
    can_move = false;
    
    if (window == 3 && !free) {
        window = 4;
        window_timer = 0;
        destroy_hitboxes();
    }
}

if (attack == AT_NSPECIAL){
    if (window == 2 || window == 4 || window == 6) {
        if (window_timer == 1) {
            var proj = create_hitbox(AT_NSPECIAL, 1, x + 4 * spr_dir, y - 64);
            proj.vsp = random_func(0, 1, false);
        }
        
        if (window_timer >= 10) {
            if (special_pressed) {
                if (runeI) {
                    if (window == 6)
                        window = 5
                    else
                        window ++;
                    window_timer = 0;
                }
                else {
                    if (window < 6) {
                        window ++;
                        window_timer = 0;
                    }
                }
            }
        }
        if (window_timer >= get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH) - 1)  {
            if (window == 2)
                window = 7;
            if (window == 4)
                window = 8;
            if (window == 6)
                window = 9;
            window_timer = 0;
            
            move_cooldown[AT_NSPECIAL] = 30;
        }
    }
    
    if (window == 3 || window == 5) {
        if (!free) {
            if (shield_down && (left_down || right_down))
               set_state(PS_PARRY_START);
            can_shield = false;
        }
        else {
            can_shield = true;
        }
    }
    
    if (window == 7 || window == 8 || window == 9) {
       if (!free) {
            if (shield_down && (left_down || right_down))
               set_state(PS_PARRY_START);
            can_shield = false;
        }
        else {
            can_shield = true;
        }
        if (window_timer >= get_window_value(AT_NSPECIAL, window, AG_WINDOW_LENGTH)) {
            window = 10;
            window_timer = 0;
        }
    }
    
    move_cooldown[AT_NSPECIAL] = 30;
    
    can_fast_fall = false;
}

if (attack == AT_FSPECIAL){
    //This is to basically check if there is ice already on the battlefield.
    var myice = asset_get("obj_article_solid")
    var valid = true;
    if (instance_exists(myice) && !runeL) {
        if (myice.player_id == id)
            valid = false;
    }
    
    if (valid) {
        if (window == 2 && window_timer == 1){
            sound_play(sound_get("sfx_duff_icecreate"))
            var ice = instance_create(x + 75 * spr_dir, y - 64, "obj_article_solid")
            ice.hsp = 7.5 * spr_dir;
            ice.vsp = -2;
        }
    }
    else {
        if (window == 1 && window_timer == 1){
            if (instance_exists(myice)) {
                if (distance_to_object(myice) < 56 && abs(myice.y - y) < 32 && myice.state == 1) {
                    if ((spr_dir == -1 && x > myice.x) || (spr_dir == 1 && x < myice.x)) {
                        sound_play(sound_get("sfx_duff_icedestroy"))
                        myice.hsp = 7.5 * spr_dir;
                        myice.vsp = -8;
                        myice.state = 0;
                    }
                }
            }
        }
    }
    move_cooldown[AT_FSPECIAL] = 12;
    move_cooldown[AT_DSPECIAL] = 12;
    can_fast_fall = false;
    can_wall_jump = true;
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 2){
        hsp = 2 * spr_dir;
        if (!joy_pad_idle){
            var actualdir = round(joy_dir) * spr_dir
            
            if (actualdir == -1)
                hsp -= 0.1 * spr_dir
            else if (actualdir == 1)
                hsp += 0.1 * spr_dir
                
            if (abs(hsp) > 6)
                hsp = 6 * spr_dir;
            if (abs(hsp) < 0.5)
                hsp = 0.5 * spr_dir
        }
    }
}

if (attack == AT_DSPECIAL) {
    if (window == 2 && has_hit && window_timer >= 2) {
        can_jump = true;
        can_attack = true;
        
        if (!free) {
            if (shield_down && (left_down || right_down))
               set_state(PS_PARRY_START);
            can_shield = false;
        }
        else {
            can_shield = true;
        }
        attack_end();
    }
    if (window == 2 || window == 3) {
        if (get_gameplay_time() % 5 == 0) {
            var rand_dir = random_func(1, 359, true);
            spawn_hit_fx(x + round(lengthdir_x(128, rand_dir)), (y - 48) + round(lengthdir_y(128, rand_dir)), dspecial_projeffect);
        }
        
        var myice = asset_get("obj_article_solid")
        if (instance_exists(myice)) {
            if (myice.player_id == id) {
               with (myice) {
                   if (state == 1) {
                       var hsp_clamp = 5;
                       var hsp_accel = 0.5;
                       
                       if (other.runeH) {
                           hsp_clamp = 10;
                           hsp_accel = 0.75;
                       }
                       
                        if (abs(player_id.x - x) > 80 && abs(player_id.x - x) < 640) {
                            knockedback = true;
                            if (player_id.x + 48 * player_id.spr_dir < x)
                                hsp -= hsp_accel;
                            if (player_id.x + 48 * player_id.spr_dir > x)
                                hsp += hsp_accel;
                                
                            if (abs(player_id.y - y) > 32)
                            {
                                if (player_id.y - 80 < y)
                                    vsp -= hsp_accel;
                                if (player_id.y - 80 > y)
                                    vsp += hsp_accel;
                            }
                                
                            hsp = clamp(hsp, -hsp_clamp, hsp_clamp);
                            vsp = clamp(vsp, -hsp_clamp, hsp_clamp);
                        }
                        if (abs(player_id.x - x) <= 80) 
                        {
                            if (abs(player_id.y - y) <= 128)
                            {
                                hsp = 0;
                            }
                        }
                    }
                }
            }
        }
        
        if (!special_down && window_timer > 4)
        {
            destroy_hitboxes();
            window = 4;
            window_timer = 0;
        }
    }
    
    if (window == 4 && window_timer >= 12) {
        can_jump = true;
        can_attack = true;
        
        if (!free) {
            if (shield_down && (left_down || right_down))
               set_state(PS_PARRY_START);
            can_shield = false;
        }
        else {
            can_shield = true;
        }
        attack_end();
    }
    if (runeC) {
        move_cooldown[AT_FSPECIAL] = 5;
        move_cooldown[AT_DSPECIAL] = 5;
    }
    else {
        move_cooldown[AT_FSPECIAL] = 20;
        move_cooldown[AT_DSPECIAL] = 20;
    }
    can_fast_fall = false;
    can_move = false;
}
