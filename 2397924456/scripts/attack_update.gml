switch(attack){
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
    case AT_NTHROW:
        trigger_b_reverse();
        break;
}



switch(attack){
    
    case AT_NSPECIAL:
    
        switch(window){
            
            case 1: // startup
                if window_timer == phone_window_end{
                    set_window_value(attack, window, AG_WINDOW_GOTO, 2 + !special_down);
                    if legion.state != PS_ATTACK_AIR && !special_down && !legion.dash_timer && !(legion.sync && legion.badly_damaged){
                        
                        legion.dash_buffer = 30;
                        legion.to_player = 0;
                        legion.to_enemy = 0;
                        legion.stored_spr_dir = 0;
                        
                        if (legion.sync || special_pressed && joy_pad_idle && !legion.badly_damaged){
                            
                            if !legion.sync with legion sound_play(other.sfx_astral_chain_legion_summon);
                            
                            var found = noone;
                            var record = 100000;
                            
                            with oPlayer if !clone && self != other && state_cat == SC_HITSTUN{
                                if point_distance(x, y, other.x, other.y) < record{
                                    record = point_distance(x, y, other.x, other.y);
                                    found = self;
                                }
                            }
                            
                            found = noone; // disables homing-in on hitstun enemies
                            
                            if found == noone{
                                var total_chain = round(chain_length * chain_nodes_const * 2 / 3);
                                
                                legion.dash_target_x = x;
                                legion.dash_target_y = y - 60;
                                
                                if joy_pad_idle legion.dash_target_x += total_chain * spr_dir;
                                else{
                                    legion.dash_target_x += round(lengthdir_x(total_chain, joy_dir));
                                    legion.dash_target_y += round(lengthdir_y(total_chain, joy_dir));
                                }
                            }
                            else{
                                legion.dash_target_x = found.x;
                                legion.dash_target_y = found.y - 60;
                            }
                        }
                        
                        else{
                            
                            legion.dash_target_x = x - 56 * spr_dir;
                            legion.dash_target_y = y - 60;
                            
                            legion.to_player = 1;
                            
                        }
                        
                        legion.attack = 0;
                        
                        var hfx = spawn_hit_fx(legion.dash_target_x, legion.dash_target_y, vfx_reticle);
                        hfx.depth = depth - 3;
                        
                        if special_pressed && joy_pad_idle clear_button_buffer(PC_SPECIAL_PRESSED);
                        
                        iasa_script();
                       
                    }
                }
                break;
                
            case 2: // loop
                if !special_down{
                    setWindow(3);
                }
                break;
                
            case 3: // endlag
                iasa_script();
                break;
        }
                
        vsp = min(vsp, 4);
        hsp = clamp(hsp, -3, 3);
        // hsp = 0;
        can_move = 0;
        
        break;
    
    
    
    case AT_FTHROW:
    
        switch(window){
            
            case 1:
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                }
                if (window_timer == phone_window_end){
                    if free vsp = min(vsp, -5);
                }
                break;
            case 2:
                break;
            
        }
        
        break;
    
    
    
    case AT_USPECIAL:
    
        can_fast_fall = 0;
        
        switch(window){
            
            case 1:
                hsp = 0;
                vsp = 0;
                can_move = 0;
                
                if (window_timer == phone_window_end){
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                    hsp = 9 * spr_dir;
                    vsp = -8;
                    y -= 26;
                    sound_play(sfx_astral_chain_swipe_big_1);
                }
                break;
            
            case 2:
            case 3:
            case 4:
                if !free{
                    attack_end();
                    set_state(has_hit ? PS_LAND : PS_PRATLAND);
                    if !has_hit hsp = 0;
                }
                else if (window_timer == phone_window_end && window == 4){
                    if !has_hit hsp = clamp(hsp, -3, 3);
                    set_window_value(attack, window, AG_WINDOW_TYPE, 7 * !has_hit);
                }
                
                if has_hit && !hitpause && window > 2 iasa_script();
                
                move_cooldown[AT_USPECIAL] = 1;
                break;
            
        }
        
        can_wall_jump = (window > 1);
        
        break;
    
    
    
    case AT_USPECIAL_2:
        
        can_move = 0;
        can_fast_fall = 0;
                    
        with obj_article2 if player_id == other{
            x = lerp(x, other.legion.x, 0.25);
            y = lerp(y, other.legion.y, 0.25);
        }
        
        switch(window){
            
            case 1:
            
                var ang = point_direction(x, y - 32, legion.x, legion.y);
                
                hsp = lengthdir_x(-3, ang);
                vsp = lengthdir_y(-3, ang);
                
                uspecial_spd = max(distance_to_object(legion) / 6, 20);
                
                if legion.state == PS_HITSTUN && legion.hitstop{
                    attack_end();
                    destroy_hitboxes();
                    spr_angle = 0;
                    set_state(PS_PRATFALL);
                    was_parried = 1;
                    vsp = -5;
                    hsp = 0;
                }
                
                else if (window_timer == phone_window_end){
                    if x != legion.x spr_dir = sign(legion.x - x);
                    sound_play(sfx_astral_chain_normal_swipe_1);
                    hsp = lengthdir_x(uspecial_spd, ang);
                    vsp = lengthdir_y(uspecial_spd, ang);
                    if abs(hsp) > 0 spr_dir = sign(hsp);
                    spr_angle = point_direction(0, 0, hsp * spr_dir, vsp) * spr_dir;
                }
                break;
            
            case 2:
                
                if !hitpause{
                    var ang = point_direction(x, y - 32, legion.x, legion.y);
                    hsp = lengthdir_x(uspecial_spd, ang);
                    vsp = lengthdir_y(uspecial_spd, ang);
                    if abs(hsp) > 0 spr_dir = sign(hsp);
                    spr_angle = point_direction(0, 0, hsp * spr_dir, vsp) * spr_dir;
                    
                    if legion.state == PS_HITSTUN && legion.hitstop{
                        attack_end();
                        destroy_hitboxes();
                        spr_angle = 0;
                        set_state(PS_PRATFALL);
                        was_parried = 1;
                        vsp = -5;
                        hsp = 0;
                    }
                    
                    else if (window_timer == phone_window_end || place_meeting(x, y, legion)){
                        x = legion.x;
                        y = legion.y + 32;
                        
                        hsp = 0;
                        vsp = 0;
                        
                        attack_end();
                        destroy_hitboxes();
                        
                        spr_angle = 0;
                        
                        legion.sync = 1;
                        
                        var temp_hh = has_hit;
                        var temp_hhp = has_hit_player;
                        
                        set_attack(AT_USPECIAL);
                        window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH) - 1;
                        sound_play(sfx_astral_chain_legion_beast);
                        
                        has_hit = temp_hh;
                        has_hit_player = temp_hhp;
                        
                        legion.state = PS_IDLE;
                        legion.state_timer = 0;
                    }
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_JAB:
        
        if window == 1 && window_timer == 1 airborne = free;
        
        if !airborne was_parried = 0;
        
    case AT_NAIR:
        
        switch(window){
            
            case 1:
                if (window_timer == phone_window_end){
                    if !free hsp = 5 * spr_dir;
                    
                    set_attack_value(attack, AG_CATEGORY, 1 + !free);
                }
                fastfall_check = 0;
                break;
                
            case 2:
                // if !free hsp = 0;
                if free && hitpause{
                    if !fastfall_check{
                        if old_vsp == fast_fall old_vsp += 0.01;
                        fastfall_check = true;
                    }
                    if old_vsp != fast_fall{
                        old_vsp = -5;
                        if down_pressed{
                            do_a_fast_fall = true;
                            old_vsp = fast_fall;
                        }
                    }
                }
                break;
                
            case 4:
                if has_hit iasa_script();
                break;
            
        }
        
        if (attack == AT_JAB) jab_progress = 1;
        else if (attack == AT_NAIR) jab_progress = 2;
        
        break;
    
    
    
    case AT_NTHROW:
    
        switch(window){
            
            case 1:
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                }
                if (window_timer == phone_window_end){
                    hsp = 24 * spr_dir;
                    spawn_hit_fx(x, y, vfx_jab3_afterimage);
                    legion_cancel_checked = 0;
                    legion_cancel_target = noone;
                }
                vsp = min(vsp, 3);
                break;
            
            case 2:
                vsp = min(vsp, 3);
                if !hitpause && !(window_timer % 2) spawn_hit_fx(x, y, vfx_jab3_afterimage);
                if hitpause && has_hit_player && !legion.badly_damaged{
                    legion.image_alpha = 1;
                    if !legion_cancel_checked{
                        
                        // check for inputs...
                        
                        if special_pressed{
                            legion_cancel_checked = 1; // 1 = spin flurry
                        }
                        
                        if left_strong_pressed{
                            legion_cancel_checked = 2; // 2 = fstrong left
                        }
                        
                        if right_strong_pressed{
                            legion_cancel_checked = 3; // 3 = fstrong right
                        }
                        
                        if down_strong_pressed{
                            legion_cancel_checked = 4; // 4 = dstrong
                        }
                        
                        if up_strong_pressed{
                            legion_cancel_checked = 5; // 5 = ustrong
                        }
                        
                    }
                }
                else if legion_cancel_checked{
                    
                    legion.dash_buffer = 30;
                    legion.to_player = 0;
                    legion.to_enemy = 1;
                    
                    switch(legion_cancel_checked){
                        case 1:
                            legion.attack = AT_FSPECIAL_AIR;
                            legion.stored_spr_dir = -spr_dir;
                            break;
                        case 2:
                            legion.attack = AT_FSTRONG;
                            legion.stored_spr_dir = -1;
                            break;
                        case 3:
                            legion.attack = AT_FSTRONG;
                            legion.stored_spr_dir = 1;
                            break;
                        case 4:
                            legion.attack = AT_DSTRONG;
                            legion.stored_spr_dir = spr_dir;
                            break;
                        case 5:
                            legion.attack = AT_USTRONG;
                            legion.stored_spr_dir = spr_dir;
                            break;
                    }
                    
                    legion.dash_target_x = melee_hit_player.x;
                    legion.dash_target_y = melee_hit_player.y - 60;
                    
                    legion.spr_dir = spr_dir;
                    
                    var hfx = spawn_hit_fx(legion.dash_target_x, legion.dash_target_y, vfx_reticle);
                    hfx.depth = depth - 3;
                            
                    var found = noone;
                    var record = 100000;
                    
                    with oPlayer if !clone && self != other{
                        if point_distance(x, y, other.x, other.y) < record{
                            record = point_distance(x, y, other.x, other.y);
                            found = self;
                        }
                    }
                    
                    if found == noone{
                        legion.to_enemy = 0;
                    }
                    else{
                        legion.hit_player_obj = found;
                    }
                    
                    legion_cancel_checked = 0;
                }
                jab_timer = 0;
                break;
            
            case 3:
                hsp = clamp(hsp, -5, 5);
                // vsp = min(vsp, 3);
                break;
            
        }
        
        break;
    
    
    
    case AT_FTILT:
    
        switch(window){
            
            case 1:
                if window_timer == phone_window_end{
                    hsp = 8 * spr_dir;
                    sound_play(sfx_astral_chain_gunshot_triple);
                    spawn_hit_fx(x + 80 * spr_dir, y - 48, vfx_gunshot_blast);
                }
                break;
            
            case 2:
                break;
            
            case 3:
                hsp = clamp(hsp, -2, 2);
                break;
            
        }
        
        break;
    
    
    
    case AT_UTILT:
    
        can_move = 0;
        
        switch(window){
            
            case 1:
                break;
            
            case 2:
                break;
            
            case 3:
                if (window_timer == phone_window_end){
                    hsp = 9 * spr_dir;
                    vsp = -4;
                    x += 30 * spr_dir;
                    y -= 30;
                    free = 1;
                }
                break;
            
            case 4:
                if !hitpause vsp = -4;
                break;
            
            case 5:
                if !has_hit hsp = clamp(hsp, -3, 3);
                else hsp = clamp(hsp, -6, 6);
                break;
            
        }
        
        break;
    
    
    
    case AT_DATTACK:
    
        switch(window){
            
            case 1:
                if (window_timer == phone_window_end){
                    hsp = 16 * spr_dir;
                }
                break;
            
            case 2:
                if !hitpause hsp -= sign(hsp) * 0.5;
                break;
            
            case 3:
                if !hitpause hsp -= sign(hsp);
                break;
            
            case 4:
                hsp -= sign(hsp);
                break;
            
        }
        
        break;
    
    
    
    case AT_FAIR:
    
        switch(window){
            
            case 1:
                if (window_timer == 1){
                    sound_play(asset_get("sfx_ori_ustrong_charge"));
                }
                break;
            
            case 2:
                break;
            
            case 3:
                break;
            
        }
        
        break;
    
    
    
    case AT_BAIR:
    
        switch(window){
            
            case 3:
                if (window_timer == phone_window_end){
                    var hfx = spawn_hit_fx(x - 72 * spr_dir + hsp * 4, y - 32 + vsp * 4, vfx_gunshot_blast);
                    hfx.spr_dir = -spr_dir;
                }
            
        }
        
        break;
    
    
    
    case AT_DAIR:
    
        can_move = 0;
        can_fast_fall = 0;
        
        switch(window){
            
            case 1:
                if (window_timer == 1){
                    hsp = clamp(hsp, -3, 3);
                    vsp = min(vsp, -short_hop_speed);
                }
                
                if (window_timer == phone_window_end){
                    vsp = max_fall;
                    cancel = 0;
                }
                
                if (window_timer == phone_window_end - 6){
                    sound_play(sfx_astral_chain_swipe_big_1);
                }
                
                can_move = 1;
                break;
            
            case 2:
                if !hitpause{
                    hsp = 0;
                    vsp = max_fall;
                    y += 20 - max_fall;
                    if window_timer == phone_window_end cancel = 1;
                    if has_hit_player && !hitpause && melee_hit_player.state_cat == SC_HITSTUN && y < room_height{
                        melee_hit_player.x = lerp(melee_hit_player.x, x + 32 * spr_dir, 0.5);
                        melee_hit_player.y = lerp(melee_hit_player.y, y, 0.8) - melee_hit_player.vsp;
                        melee_hit_player.hsp = 4 * spr_dir + (melee_hit_player.right_down - melee_hit_player.left_down);
                        melee_hit_player.vsp = -10;
                    }
                    if !free{
                        destroy_hitboxes();
                        setWindow(3);
                        sound_play(asset_get("sfx_ori_stomp_hit"));
                        reset_hitbox_value(attack, 2, HG_WIDTH );
                        reset_hitbox_value(attack, 2, HG_HEIGHT);
                        if has_hit_player{
                            set_hitbox_value(attack, 2, HG_WIDTH , get_hitbox_value(attack, 2, HG_WIDTH ) * 2);
                            set_hitbox_value(attack, 2, HG_HEIGHT, get_hitbox_value(attack, 2, HG_HEIGHT) * 2);
                        }
                    }
                    else if cancel{
                        iasa_script();
                    }
                }
                break;
            
            case 3:
            case 4:
                vsp = 0;
                break;
            
        }
        
        break;
    
    
    
    case AT_FSTRONG:
        
        switch(window){
            
            case 1:
                if (window_timer == 1){
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge")));
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge2")));
                }
                break;
            
            case 2:
                if (window_timer == phone_window_end){
                    sound_stop(stopped_sounds[0]);
                    sound_stop(stopped_sounds[1]);
                }
                break;
            
            case 3:
                if (window_timer == phone_window_end && !has_hit){
                    // set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, ease_linear(20, 30, strong_charge, 60));
                    // set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_HSPEED, 35);
                    set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, round(ease_linear(5, 20, strong_charge, 60)));
                    create_hitbox(AT_FSTRONG, 2, x + 80 * spr_dir, y - 74)
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_DSTRONG:
        
        switch(window){
            
            case 1:
                if (window_timer == 1){
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge")));
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge2")));
                }
                break;
            
            case 2:
                if (window_timer == phone_window_end){
                    sound_stop(stopped_sounds[0]);
                    sound_stop(stopped_sounds[1]);
                }
                break;
            
            case 3:
                if (window_timer == phone_window_end && !has_hit){
                    
                }
                break;
            
        }
        
        break;
    
    
    
    case AT_USTRONG:
        
        switch(window){
            
            case 1:
                if (window_timer == 1){
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge")));
                   array_push(stopped_sounds, sound_play(asset_get("sfx_ori_charged_flame_charge2")));
                }
                break;
            
            case 2:
                if (window_timer == phone_window_end){
                    sound_stop(stopped_sounds[0]);
                    sound_stop(stopped_sounds[1]);
                }
                break;
            
            case 3:
                break;
            
        }
        
        break;
    
    
    
    case AT_TAUNT:
    
        if window == 2 && taunt_down && window_timer == phone_window_end window_timer--;
        
        break;
    
}



#define setWindow(n_w)

window = n_w;
window_timer = 0;

destroy_hitboxes();