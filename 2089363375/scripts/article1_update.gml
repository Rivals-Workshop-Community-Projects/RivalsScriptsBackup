
//State checker
var prev_state = state;

//Player following stuff
var prev_spr_dir = spr_dir;
var target_x = player_id.x - pet_w * 2 * player_id.spr_dir;
var target_y = player_id.y - 12;
var target_dir = point_direction(x, y, target_x, target_y);
var target_dist = point_distance(x, y, target_x, target_y);
var temp_free = true;

var plat = collision_rectangle(x - 2, bbox_bottom, x + 2, bbox_bottom + 34, asset_get("par_jumpthrough"), 0, 0);
var block = collision_rectangle(x - 2, bbox_bottom, x + 2, bbox_bottom + 34, asset_get("par_block"), 0, 0);

if (plat >= 0) {
    if (y <= get_instance_y(plat) + 4) {
        temp_free = false;
        if (vsp > 0)
        vsp = 0;
    }
    
    if (follow_type == 0) {
        if (!free) {
            y += 4
        }
    }
}
if (block >= 0) {
    temp_free = false;
}

if (state != "dead")
    depth = player_id.depth;
else
    depth = -1;
    
if (follow_type == 0)
    effect_timer = 0;
else
   effect_timer ++;
                
if (y >= room_height + 64) {
    if (state != "dead") {
        state = "dead";
        state_timer = 51;
        spawn_hit_fx(x, room_height, 304);
        sound_play(asset_get("sfx_death1"));
    }
}
    
if ((state != "hurt" && state != "attack" && state != "wait" && state != "spawn" && state != "dead") || (state == "attack" && window_follow_player))
{
    if (state != "attack") {
        if (go_back) {
            go_back = false;
            follow_type = 0;
        }
    }
    
    if (done_attacking) {
        if ((player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) 
            || ((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.state_timer <= 2))
            done_attacking = false;
    }
    
    has_hit = false;
    
    if (state != "attack" || (state == "attack" && window_follow_player)) {
        switch (follow_type) {
            case 0:
                if (target_dist < max_run_dist) {
                    hsp /= 4;
                    vsp /= 4;
                }
                else {
                    hsp = lengthdir_x(target_dist / 8, target_dir);
                    vsp = lengthdir_y(target_dist / 8, target_dir);
                }
                
                if (state != "turn" && state != "attack") {
                    if (player_id.free && abs(vsp) > 0.01) {
                        state = "jump";
                        state_timer = 0;   
                    }
                    else {
                        if (abs(hsp) < 0.1)
                            state = "idle";
                        else {
                            state = "run";
                        }
                        state_timer = 0;   
                    }
                    if (abs(hsp) >= 0.1)
                        spr_dir = sign(hsp)
                }
            break;
            case 1:
                var temp_target = player_id;
                if (!temp_free) {
                    if (instance_exists(block)) {
                        var block_x = get_instance_x(block);
                        var block_y = get_instance_y(block);
                        var block_dist = point_distance(x, y, block_x, block_y - 12)
                        var block_dir = point_direction(x, y, block_x, block_y - 12);
                        if (block_dir > 8)
                            vsp = lengthdir_y(block_dist / 8, block_dir);
                        else
                            vsp = 0;
                    }
                    
                    else if (instance_exists(plat)) {
                        var block_x = get_instance_x(plat);
                        var block_y = get_instance_y(plat);
                        var block_dist = point_distance(x, y, block_x, block_y - 12)
                        var block_dir = point_direction(x, y, block_x, block_y - 12);
                        if (block_dir > 8)
                            vsp = lengthdir_y(block_dist / 8, block_dir);
                        else
                            vsp = 0;
                    }
                }
                else {
                    vsp += 0.25;
                }
                    
                var enemy = noone;
                var dist = 128;
                for (var i = 0; i < instance_number(asset_get("oPlayer")); i++) {
                    var nearest = instance_find(asset_get("oPlayer"), i);
                    if (nearest.player != player_id.player && distance_to_object(nearest) < dist) {
                        enemy = nearest;
                    }
                }
                
                if (instance_exists(enemy)) {
                    if (target_dist > 64)
                        temp_target = player_id;
                    else
                        temp_target = enemy;
                }
                
                var temp_target_dist = distance_to_point(temp_target.x, temp_target.y - 24)
                
                float_timer ++;
            
                if (state != "attack") {
                    if (float_timer == 1) {
                        if (temp_target.x < x) 
                            spr_dir = -1;
                        else
                            spr_dir = 1;
                            
                    }
                }
                if (float_timer >= float_time_max) {
                    float_timer = 0;
                }
                
                if (temp_target_dist > max_run_dist * 2) {
                    hsp = 4 * spr_dir;
                }
                else {
                    if (float_timer >= float_time_max / 3 && float_timer <= float_time_max) {
                        if (abs(hsp) >= 0.01)
                            hsp *= 0.01;
                        else
                            hsp = 0;
                    }
                    else {
                        hsp = 3.2 * spr_dir;
                    }
                }
                    
                if (temp_target.y < y - 24) {
                    if (!temp_free) {
                        vsp = -8;
                        y -= 4;
                    }
                    else {
                        if (vsp >= 5)
                            vsp = -8;
                    }
                }
                
                if (state != "turn" && state != "attack") {
                    if (temp_free) {
                        state = "jump";
                        state_timer = 0;
                        hsp /= 2;
                    }
                    else {
                        if (abs(hsp) < 0.1)
                            state = "idle";
                        else {
                            state = "run";
                        }
                        state_timer = 0;   
                    }
                }
            break;
            default:
            break;
        }
    }
    
    if (state != "attack") {
        if (spr_dir != prev_spr_dir) {
            state = "turn";
            state_timer = 0;
        }
    }
    
    if (player_id.state == PS_HITSTUN && (state != "attack" || (state == "attack" && window_follow_player))) {
        state = "wait";
        state_timer = 0;   
    }
}
else {
    float_timer = 0;
}


if (state == "hurt" || state == "dead") {
    if (vsp > 6)
        vsp = 6;
        
    if (!temp_free && (stunned == 0 || stunned == 2)) {
        if (instance_exists(block)) {
            var block_x = get_instance_x(block);
            var block_y = get_instance_y(block);
            var block_dist = point_distance(x, y, block_x, block_y - 24)
            var block_dir = point_direction(x, y, block_x, block_y - 24);
            if (block_dir > 8)
                vsp = lengthdir_y(block_dist / 8, block_dir);
            else
                vsp = 0;
        }
        
        else if (instance_exists(plat)) {
            var block_x = get_instance_x(plat);
            var block_y = get_instance_y(plat);
            var block_dist = point_distance(x, y, block_x, block_y - 24)
            var block_dir = point_direction(x, y, block_x, block_y - 24);
            if (block_dir > 8)
                vsp = lengthdir_y(block_dist / 8, block_dir);
            else
                vsp = 0;
        }
    }
    else{
        vsp += 0.25;
    }
        
    if (vsp >= 0) {
        if (abs(hsp) >= 0.001)
            hsp *= 0.001;
        else
            hsp = 0;
    }
}
        
if (state == "hurt") {
    invincible = false;
    if (stunned == 0 && hitstop <= 0) {
        if (hitstun <= 0) {
            hitstun = 0;
            state = "idle";
            state_timer = 0;
        }
        else {
            hitstun --;
        }
    }
}

if (state == "wait") {
    if (player_id.state != PS_HITSTUN) {
        state = "idle";
        state_timer = 0;
    }
        
    if (abs(hsp) >= 0.01)
        hsp *= 0.01;
    else
        hsp = 0;
    if (abs(vsp) >= 0.01)
        vsp *= 0.01;
    else
        vsp = 0;
}

var window_amount = player_id.cat_window_amount[current_attack];
var hitbox_amount = player_id.cat_hitbox_amount[current_attack];
var attack_spr = player_id.cat_attack_spr[current_attack];
var attack_hurtbox_spr = player_id.cat_attack_hurtbox_spr[current_attack];
var window_min = player_id.cat_window_min[current_attack];
var window_max = player_id.cat_window_max[current_attack];
var window_hitbox_min = player_id.cat_window_hitbox_min[current_attack];
var window_hitbox_max = player_id.cat_window_hitbox_max[current_attack];
var attack_grav = 0.4;

//The big block of attacks n stuff. I'm sure there's a better way.
if (state == "attack") {   
    if (hitstop <= 0) {
        if (window_timer <= 0) {
            window_check_player = false;
            window_face_enemy = false;
            window_sound_check = false;
            window_follow_player = false;
            window_timer = 0;
        }
                
        switch (current_attack) {
            case AT_JAB:
                window_sound_check = true;
                window_check_player = true;
                
                if (window == 12) {
                    window_face_enemy = true;
                }
                 /*
                if (window == 19) {
                    if (player_id.attack_pressed)
                        attack_tap_timer = 11;
                    else
                        attack_tap_timer --;
                    with (player_id) {
                        if (other.attack_tap_timer <= 0 && other.window_timer >= get_window_value(AT_JAB, other.window, AG_WINDOW_LENGTH) - 2)
                        {
                            other.window ++;
                            other.window_timer = 2;
                        }
                    }
                }
                else {
                    attack_tap_timer = 0;
                }
                */
            break;
            case AT_DATTACK:
                window_sound_check = true;
                window_check_player = true;
                    
                if (window == 5) {
                    if (follow_type == 1)
                        window_face_enemy = true;
                    else
                        spr_dir = player_id.spr_dir;
                }
                
            break;
            case AT_FTILT:
                window_sound_check = true;
                window_check_player = true;
                
                if (window == 5) {
                    window_face_enemy = true;
                }
            break;
            case AT_DTILT:
                window_sound_check = true;
                window_check_player = true;
                    
                if (window == 6) {
                    window_face_enemy = true;
                }
                
            break;
            case AT_UTILT:
                window_sound_check = true;
                window_check_player = true;
                    
                if (window == 4) {
                    window_face_enemy = true;
                }
            break;
            case AT_NAIR:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                window_follow_player = true;
                if (window == 4) {
                    window_face_enemy = true;
                }
            break;
            case AT_FAIR:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                window_follow_player = true;
                if (window == 5) {
                    window_face_enemy = true;
                }
            break;
            case AT_BAIR:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                window_follow_player = true;
                if (window == 5) {
                    if (window_timer <= 2) {
                        var enemy = noone;
                        var dist = 128;
                        for (var i = 0; i < instance_number(asset_get("oPlayer")); i++) {
                            var nearest = instance_find(asset_get("oPlayer"), i);
                            if (nearest.player != player_id.player && distance_to_object(nearest) < dist) {
                                enemy = nearest;
                            }
                        }
                        
                        if (instance_exists(enemy)) {
                            if (enemy.x < x) 
                                spr_dir = 1;
                            else
                                spr_dir = -1;
                        }
                        else
                            spr_dir = player_id.spr_dir;
                    }
                }
            break;
            case AT_UAIR:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                window_follow_player = true;
                if (window == 4) {
                    window_face_enemy = true;
                }
            break;
            case AT_DAIR:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                window_follow_player = true;
                if (window == 8) {
                    window_face_enemy = true;
                }
                attack_grav = 0.4;
            break;
            case AT_FSTRONG:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                    
                if (window == 11) {
                    spr_dir = player_id.spr_dir;
                    if (player_id.window > 1) {
                        window = 12;
                        window_timer = 0;
                    }
                }
                if (window == 12) {
                    
                    if (window_timer <= 1) {
                        if (player_id.down_down) {
                            window = 15;
                            window_timer = 0;
                        }
                        else if (player_id.up_down) {
                            window = 18;
                            window_timer = 0;
                        }
                    }
                }
                if (window == 14 || window == 17 || window == 20) {
                    with (player_id) {
                        if (other.window_timer >= get_window_value(AT_FSTRONG, other.window, AG_WINDOW_LENGTH)) {
                            with (other) {
                                state = "idle";
                                state_timer = 0;
                                window_timer = 0;
                                done_attacking = true;
                            }
                        }
                    }
                }
            break;
            case AT_USTRONG:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                    
                if (window == 5) {
                    spr_dir = player_id.spr_dir;
                    if (player_id.window > 1) {
                        window = 6;
                        window_timer = 0;
                    }
                }
            break;
            case AT_DSTRONG:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                    
                if (window == 7) {
                    spr_dir = player_id.spr_dir;
                    if (player_id.window > 1) {
                        window = 8;
                        window_timer = 0;
                    }
                }
            break;
            case AT_NSPECIAL:
                if (player_id.window != 5)
                {
                    if (window == 6) {
                        spr_dir = player_id.spr_dir;
                    }
                    if (window == 12 || window == 13) {
                        invincible = false;
                        attack_timer = 0;
                        if (!player_id.runeI)
                            follow_type = 1;
                    }
                    
                    if (window > 7 && window < 12) {
                        attack_timer ++;
                        invincible = true;
                        vsp = 0;
                        if (attack_timer > 5) {
                            if (abs(hsp) >= 0.01)
                                hsp -= 0.5 * spr_dir;
                            else {
                                hsp = 0;
                                if (window == 10 || window == 11)
                                    window = 13;
                                else
                                    window = 12;
                                window_timer = 0;
                                attack_timer = 0;
                                destroy_hitboxes();
                            }
                        }
                        else if (attack_timer > 1){
                            if (window == 8)
                                hsp = 8 * spr_dir;
                            if (window == 9)
                                hsp = 12 * spr_dir;
                            if (window == 10 || window == 11)
                                hsp = 16 * spr_dir;
                        }
                        
                        if (attack_timer == 1) {
                            if (window == 10 || window == 11)
                                spawn_hit_fx(x, y, player_id.cat_nspecial_bang2_fx);
                            else 
                                spawn_hit_fx(x, y, player_id.cat_nspecial_bang1_fx);
                        }
                    }
                    if (window <= 7) {
                        attack_timer = 0;
                        if (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) {
                            state = "idle";
                            state_timer = 0;
                            sound_stop(asset_get("sfx_boss_final_charge"));
                        }
                        invincible = false;
                        window_follow_player = true;
                    }
                    else { 
                        window_follow_player = false;
                    }
                }
                else
                {
                    state = "idle";
                    state_timer = 0;
                    invincible = false;
                    done_attacking = true;
                }
            break;
            case AT_FSPECIAL:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                
                if (window == 4) {
                    spr_dir = player_id.spr_dir;
                }
                if (window == 5) {
                    
                    if (player_id.window > 2) {
                        window = 6;
                        window_timer = 0;
                    }
                }
            break;
            case AT_USPECIAL:
                state = "idle";
                state_timer = 0;
                go_back = true;
                done_attacking = true;
            break;
            case AT_DSPECIAL:
                window_sound_check = true;
                if (follow_type == 0)
                    window_check_player = true;
                    
                if (window == 6) {
                    spr_dir = player_id.spr_dir;
                    if (player_id.window == 5) {
                        window = 10;
                        window_timer = 0;
                    }
                }

                if (player_id.window == 4 && player_id.window_timer == 1) {
                    window = 9;
                    window_timer = 1;
                }

                if (window == 10) {
                    invincible = true;
                    if (window_timer >= 4) {
                        window = 11;
                        window_timer = 0;
                        with (player_id) spawn_hit_fx(other.x, other.y, dspecial_fx);
                        sound_play(asset_get("sfx_ell_big_missile_fire"));
                    }
                }

                if (window = 11) {
                    invincible = true;
                    visible = false;
                    if (window_timer >= 22) {
                        state = "dead";
                        state_timer = 76;
                        done_attacking = true;
                    }
                }
            break;
            case AT_TAUNT:
                if (follow_type == 0)
                    window_check_player = true;
                
                if (window == 3) {
                    spr_dir = player_id.spr_dir;
                }
            break;
            default:
                state = "idle";
                state_timer = 0;
                done_attacking = true;
            break;
        }
        
        if (window < window_min) {
            window = window_min;
            window_timer = 0;
        }
        
        with (player_id) {
            var window_timer_max = get_window_value(other.current_attack, other.window, AG_WINDOW_LENGTH) + 2;
            var window_anim_frames = get_window_value(other.current_attack, other.window, AG_WINDOW_ANIM_FRAMES);
            var window_anim_start = get_window_value(other.current_attack, other.window, AG_WINDOW_ANIM_FRAME_START);
            var window_whifflag = get_window_value(other.current_attack, other.window, AG_WINDOW_HAS_WHIFFLAG);
            var window_type = get_window_value(other.current_attack, other.window, AG_WINDOW_TYPE);
            var window_has_sound = get_window_value(other.current_attack, other.window, AG_WINDOW_HAS_SFX);
            var window_sound = get_window_value(other.current_attack, other.window, AG_WINDOW_SFX);
            var window_sound_frame = get_window_value(other.current_attack, other.window, AG_WINDOW_SFX_FRAME);
            var window_cancel = get_window_value(other.current_attack, other.window, AG_WINDOW_CANCEL_TYPE);
            var window_cancel_frame = get_window_value(other.current_attack, other.window, AG_WINDOW_CANCEL_FRAME);
            var window_hsp = get_window_value(other.current_attack, other.window, AG_WINDOW_HSPEED);
            var window_hsp_type = get_window_value(other.current_attack, other.window, AG_WINDOW_HSPEED_TYPE);
            var window_vsp = get_window_value(other.current_attack, other.window, AG_WINDOW_VSPEED);
            var window_vsp_type = get_window_value(other.current_attack, other.window, AG_WINDOW_VSPEED_TYPE);
            var window_has_friction = get_window_value(other.current_attack, other.window, AG_WINDOW_HAS_CUSTOM_FRICTION);
            var window_friction = get_window_value(other.current_attack, other.window, AG_WINDOW_CUSTOM_GROUND_FRICTION);
            var window_gravity = get_window_value(other.current_attack, other.window, AG_WINDOW_CUSTOM_GRAVITY);
                
            
            with (other) {
                    
                var whiffed = 1;
                if (window_whifflag) {
                    if (!player_id.has_hit && !has_hit)
                        whiffed = 1.5;
                }
                else {
                    //if (!player_id.has_hit)
                        //whiffed = true;
                }
                    
                sprite_index = attack_spr;
                image_index = window_anim_start + floor(((window_anim_frames) *  (floor(((window_timer) / (window_timer_max * whiffed))  * window_anim_frames) / window_anim_frames)));
                
                if (instance_exists(myhurtbox)) {
                    with (myhurtbox) {
                        sprite_index = attack_hurtbox_spr;
                        image_index = other.image_index;
                    }
                }  
                    
                with (player_id) {
                    for (var i = window_hitbox_min; i <= window_hitbox_max; i++) {
                        if (other.window == get_hitbox_value(other.current_attack, i, HG_WINDOW)) {
                            if (other.window_timer == get_hitbox_value(other.current_attack, i, HG_WINDOW_CREATION_FRAME) * whiffed
                                && i <= hitbox_amount + window_hitbox_min) {
                                var hit_x = get_hitbox_value(other.current_attack, i, HG_HITBOX_X);
                                var hit_y = get_hitbox_value(other.current_attack, i, HG_HITBOX_Y);
                                var hit_shape = get_hitbox_value(other.current_attack, i, HG_SHAPE);
                                var hit_width = get_hitbox_value(other.current_attack, i, HG_WIDTH);
                                var hit_height = get_hitbox_value(other.current_attack, i, HG_HEIGHT);
                                
                                
                                var mybox = create_hitbox(other.current_attack, i, other.x + hit_x * other.spr_dir, other.y + hit_y);
                                
                                with (mybox) {
                                    with (player_id) {
                                        other.x_pos = ((mycat.x + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X) * mycat.spr_dir) - x);
                                        other.y_pos = ((mycat.y + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y)) - y);
                                        other.hsp = mycat.hsp;
                                        other.vsp = mycat.vsp;
                                    }
                                }
                            }
                        }
                    }
                }
            
                    
                if (window_has_sound)
                {
                     if (window_timer == window_sound_frame * whiffed) {
                         if ((window_sound_check && player_id.window != window - window_min + 1) || !window_sound_check)
                            sound_play(window_sound)
                     }
                }
            
                if (window_hsp_type == 0) {
                    if  (window_timer <= 2)
                        hsp += window_hsp * spr_dir;
                }
                else if (window_hsp_type == 1) {
                    hsp = window_hsp * spr_dir;
                }
                else if (window_hsp_type == 2) {
                    if  (window_timer <= 2)
                        hsp = window_hsp * spr_dir;
                }
            
            
                if (window_vsp_type == 0) {
                    if  (window_timer <= 2)
                        vsp += window_vsp;
                }
                else if (window_vsp_type == 1) {
                    vsp = window_vsp;
                }
                else if (window_vsp_type == 2) {
                    if  (window_timer <= 2)
                        vsp = window_vsp;
                }
                
                if (!window_follow_player && window_timer > 2) {
                    if (!window_has_friction) {
                        hsp =  lerp(hsp, 0, player_id.dash_stop_percent);
                    }
                    else {
                        if (window_friction > 0) {
                            hsp = lerp(hsp, 0, window_friction);
                        }
                    }
                    if (window_gravity == 0) {
                        if  (window_timer <= 2)
                            vsp = 0;
                        else {
                            if (follow_type == 1) {
                                if (temp_free)
                                    vsp += attack_grav;
                                    
                                if (vsp >= 1)
                                    vsp = 1;
                            }
                            else {
                                if (abs(vsp) >= 0.01)
                                    vsp *= 0.01;
                                else
                                    vsp = 0;
                            }
                        }
                    }
                    else {
                        if (follow_type == 1) {
                            if (abs(vsp) >= 0.01)
                                vsp *= 0.01;
                            else
                                vsp = 0;
                        }
                    }
                }
                
                
                if (window_face_enemy) {
                    if  (window_timer <= 2) {
                        var enemy = noone;
                        var dist = 128;
                        for (var i = 0; i < instance_number(asset_get("oPlayer")); i++) {
                            var nearest = instance_find(asset_get("oPlayer"), i);
                            if (nearest.player != player_id.player && distance_to_object(nearest) < dist) {
                                enemy = nearest;
                            }
                        }
                        
                        if (instance_exists(enemy)) {
                            if (enemy.x < x) 
                                spr_dir = -1;
                            else
                                spr_dir = 1;
                        }
                        
                    }
                }
                
                window_timer += 1;
            
                if (window_cancel == 1) {
                    if (window_timer >= (window_timer_max) * whiffed) {
                        state = "idle";
                        state_timer = 0;
                        window_timer = 0;
                        done_attacking = true;
                    }
                }
                
                if (started_attack) {
                    started_attack = false;
                    window_timer_max += 1;
                }
                
                if (window_timer >= (window_timer_max) * whiffed) {
                    if (window_type != 9)
                        window ++;
                
                    if (window >= window_min + window_amount) {
                        state = "idle";
                        state_timer = 0;
                        window_timer = 0;
                        done_attacking = true;
                    }
                    
                    window_timer = 0;
                }
                    
            }
                    
        }
    
        if (window_check_player) {
            if (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND) {
                state = "idle";
                window_timer = 0;
                state_timer = 0;
                done_attacking = true;
            }
        }
    }
}
else {
    if (instance_exists(myhurtbox)) {
        with (myhurtbox) {
            sprite_index = other.hurtbox_spr;
            image_index = 0;
        }
    }   
}
with (asset_get("pHitBox")) {
    if (player_id == other.player_id) {
        if (window_hitbox_min != 0 && window_hitbox_max != 0 && attack == other.current_attack && type != 2) {
            if (hbox_num >= window_hitbox_min && hbox_num <= window_hitbox_max) {
                with (player_id) {
                    other.x_pos = ((mycat.x + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X) * mycat.spr_dir) - x);
                    other.y_pos = ((mycat.y + get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y)) - y);
                    other.hsp = mycat.hsp;
                    other.vsp = mycat.vsp;
                }
            }
        }
    }
}

state_timer++;
if (prev_state != state) {
    image_index = 0;
}

//State handler
if (hitstop == 0) {
    switch (state) {
        case "idle":
            sprite_index = idle_spr;
            if (hitstop == 0)
                image_index += idle_anim_spd;
        break;
        case "run":
            sprite_index = run_spr;
            if (hitstop == 0)
                image_index += run_anim_spd;
        break;
        case "turn":
            sprite_index = turn_spr;
            if (hitstop == 0)
                image_index += run_anim_spd;
            
            if (image_index >= image_number - 1)
            {
                state = "idle"
                sprite_index = idle_spr;
            }
        break;
        case "wait":
            sprite_index = wait_spr;
            
            if (hitstop == 0)
                image_index += 0.4;
        break;
        case "jump":
            sprite_index = jump_spr;
            image_speed = 0;
            
            image_index = floor((clamp(vsp, -3, 3) + 3) / (image_number / 3));
        break;
        case "spawn":
            visible = true;
            if (state_timer == 1) {
                sound_play(asset_get("sfx_ell_steam_hit"));
                hitpoints = hitpoints_max;
                x = target_x;
                y = target_y;
                hitstun = 0;
                death_timer = 0;
                stunned = 0;
                hsp = 0;
                vsp = 0;
                follow_type = 0;
                float_timer = 0;
                attack_timer = 0;
                invincible = false;
            }
            
            sprite_index = spawn_spr;
            
            if (hitstop == 0)
                image_index += spawn_anim_spd;
            
            if (image_index >= image_number - 1)
            {
                state = "idle";
                state_timer = 0;
                sprite_index = idle_spr;
            }
        break;
        case "hurt":
            if (stunned > 0) {
                sprite_index = spinhurt_spr;
                
                if (hitstop == 0) {
                    image_index += 0.2;
                    
                    if (stunned == 1) {
                        if (vsp > 0)
                            stunned = 2;
                    }
                    else {
                        if (!temp_free) {
                            if (!player_id.runeI)
                                follow_type = 1;
                            stunned = 0;
                        }
                    }
                }
            }
            else {
                sprite_index = hurt_spr;
                image_index = 0;
            }
        break;
        case "dead":
            if (state_timer > 1 && state_timer < 75) {
                sprite_index = spinhurt_spr;
                if (hitstop == 0)
                    image_index += 0.2;
                
                if (state_timer % 6 == 0) {
                    var rand_x = round(x + random_func(1, -16, 16));
                    var rand_y = round(y + random_func(2, -16, 16));
                    with (player_id) spawn_hit_fx(rand_x, rand_y - 32, smallsmoke_fx);
                }
                
                if (!temp_free && vsp >= 0) {
                    vsp = -6
                }
                visible = true;
            }
            else if (state_timer == 75) {
                with (player_id) {
                    spawn_hit_fx(other.x, other.y, cat_death_fx);
                    spawn_hit_fx(other.x + 16 * other.spr_dir, other.y, cat_deathghost_fx);
                }
                visible = false;
                sound_play(asset_get("sfx_blow_heavy1"));
            }
            else {
                death_timer ++;
                visible = false;
                
                if (death_timer > respawn_cooldown) {
                    death_timer = 0;
                    state = "spawn";
                    state_timer = 0;
                    x = target_x;
                    y = target_y;
                }
            }
        break;
    }
}

if (hitstop <= 0) {
    hitstop = player_id.hitstop;
     prev_hsp = hsp;
     prev_vsp = vsp;
}

if (state != "hurt" && state != "wait" && state != "dead")
{
    invincible = player_id.invincible;
}
