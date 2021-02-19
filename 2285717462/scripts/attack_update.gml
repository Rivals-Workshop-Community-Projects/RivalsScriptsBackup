//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



switch(attack){
    
    case AT_FTILT:
        
        switch(window){
            case 1:
                if (window_timer == 4){
                    sound_play(asset_get("sfx_swipe_medium1"))
                }
                if (window_timer == window_end){
                    sound_play(sfx_sonic_ring, 0, noone, 0.8);
                }
                break;
        }
        
        break;
    
    case AT_DTILT:
        
        switch(window){
            case 1:
                hsp = 1 * spr_dir * window_timer;
                break;
        }
        
        break;
    
    case AT_DATTACK:
        
        switch(window){
            case 1:
                if (window_timer == 1){
                    // sound_play(sfx_sonic_woosh_1);
                }
                break;
            case 3:
                hsp -= sign(hsp) * 1.5;
                break;
        }
        
        break;
    
    case AT_NAIR:
        
        switch(window){
            case 1:
                if (window_timer == window_end) sound_play(sfx_sonic_swipe_double);
                break;
            case 2:
            case 3:
            case 4:
                can_fast_fall = (window == 4 && hitpause);
                // hsp = clamp(hsp, -6, 6);
                // if !(window == 4 && vsp == fast_fall) vsp = min(vsp, 6);
                break;
            case 5:
                break;
        }
        
        break;
    
    case AT_BAIR:
    
        can_wall_jump = true;
        
        switch(window){
            case 1:
                hsp = clamp(hsp, -2, 2);
                vsp = min(vsp, 2);
                if (window_timer == window_end){
                    hsp = -8 * spr_dir;
                    vsp += 3;
                    sound_play(sfx_sonic_swipe_4)
                }
                break;
            case 2:
                can_move = 0;
                break;
            case 3:
                break;
        }
        
        break;
    
    case AT_UAIR:
        
        switch(window){
            case 1:
                if (window_timer == window_end) sound_play(asset_get("sfx_swipe_weak2"));
                break;
            case 5:
                if (window_timer == 1){
                    reset_hitbox_value(AT_UAIR, 4, HG_WIDTH);
                    reset_hitbox_value(AT_UAIR, 4, HG_HEIGHT);
                    if has_hit_player{
                        set_hitbox_value(AT_UAIR, 4, HG_WIDTH , get_hitbox_value(AT_UAIR, 4, HG_WIDTH ) * 2);
                        set_hitbox_value(AT_UAIR, 4, HG_HEIGHT, get_hitbox_value(AT_UAIR, 4, HG_HEIGHT) * 1.5);
                    }
                }
                break;
        }
        
        break;
    
    case AT_DAIR:
        
        switch(window){
            case 1:
                if (window_timer == window_end){
                    sound_play(asset_get("sfx_swipe_heavy2"));
                }
                break;
            case 2:
                break;
            case 3:
                sound_stop(sfx_sonic_spin);
                break;
        }
        
        break;
    
    case AT_FSTRONG:
        
        if (window < 5){
            vsp = 0;
            can_move = false;
        }
        
        set_attack_value(attack, AG_OFF_LEDGE, window > 1);
        
        switch(window){
            case 1:
                hsp *= 0.8;
                break;
            case 2:
                hsp = 4 * spr_dir;
                if (window_timer == 1) sound_play(asset_get("sfx_zetter_fireball_fire"));
                if (window_timer == 1) sound_play(sfx_sonic_shield_fire_use, 0, noone, 2);
                if (window_timer == window_end){
                    spawn_hit_fx(x, y - 24, 3)
                    hsp = lerp(12, 25, strong_charge / 60) * spr_dir;
                    x += 20 * spr_dir;
                }
                break;
            case 3:
                break;
            case 4:
                hsp = lerp(hsp, clamp(hsp, -5, 5), 0.4);
                break;
            case 5:
                break;
        }
        
        break;
    
    case AT_USTRONG:
        
        if (window < 3) vsp = 0;
        if (window > 2) hsp = 0;
        can_move = false;
        
        set_attack_value(attack, AG_OFF_LEDGE, window > 1);
        
        switch(window){
            case 1:
                hsp *= 0.8;
                break;
            case 2:
                if (window_timer == 1) sound_play(asset_get("sfx_holy_lightning"));
                if (window_timer == 1) sound_play(sfx_sonic_shield_thunder_use, 0, noone, 2);
                if (window_timer == window_end){
                    spark_x = x;
                    spark_y = y;
                    vsp = -lerp(16, 32, strong_charge / 60);
                }
                break;
            case 3:
                if !hitpause vsp = -lerp(14, 32, strong_charge / 60); // old: 16, 32
                break;
            case 4:
                vsp = clamp(vsp, -3, 0);
                break;
        }
        
        break;
    
    case AT_DSTRONG:
        
        switch(window){
            case 1:
                break;
            case 2:
                // if (window_timer == 1) sound_play(asset_get("sfx_holy_lightning"));
                if (window_timer == window_end) sound_play(sfx_sonic_shield_bubble_use, 0, noone, 2);
                break;
            case 3:
                break;
            case 4:
                break;
        }
        
        break;
    
    case AT_NSPECIAL:
    
        var spindash_speed_min = 9; // 12
        var spindash_speed_add = 9; // 6
        var max_loops = 5;
        
        switch(window){
            case 1: // startup
                set_window_value(attack, window, AG_WINDOW_GOTO, free ? 3 : 2);
                loops = 0;
                if (window_timer == window_end){
                    var spin_sfx = sound_play(sfx_sonic_spindash_charge);
                    array_push(stopped_sounds, spin_sfx);
                }
                break;
            case 2: // charge
                if free window++;
                if abs(right_down - left_down) spr_dir = right_down - left_down;
                if window_timer == window_end{
                    if loops < max_loops loops++;
                    attack_end();
                }
                if loops && !special_down && !hitpause{
                    setWindow(4);
                    hsp = (spindash_speed_min + lerp(0, spindash_speed_add, (loops - 1) / max_loops)) * spr_dir;
                    sound_play(sfx_sonic_spindash_loose);
                }
                else if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && !hitpause{
                    hsp *= 0.75;
                    vsp = -jump_speed;
                    setWindow(7);
                    sound_play(jump_sound);
                    sound_play(sfx_sonic_spindash_loose);
                }
                if (loops == max_loops) strong_flashing = true;
                break;
            case 3: // charge air
                if window_timer == window_end{
                    if !loops loops++;
                }
                if !free && !hitpause{
                    if abs(right_down - left_down) spr_dir = right_down - left_down;
                    setWindow(4);
                    hsp = spindash_speed_min * spr_dir;
                    sound_play(sfx_sonic_spindash_loose);
                }
                else if !special_down && loops && !hitpause{
                    setWindow(6);
                    sound_stop(sfx_sonic_spindash_charge);
                }
                else if hitpause{
                    old_vsp = -djump_speed;
                    setWindow(8);
                    sound_play(sfx_sonic_badnik_bounce);
                    sound_play(sfx_sonic_spindash_loose);
                }
                break;
            case 4: // roll init
                if (window_timer == 4){
                    sound_stop(sfx_sonic_spindash_charge);
                }
                x += hsp * 0.5;
            case 5: // roll
                if (jump_pressed || (tap_jump_pressed && can_tap_jump())) && !hitpause{
                    hsp *= 0.75;
                    vsp = -jump_speed;
                    setWindow(7);
                    sound_play(jump_sound);
                }
                if window == 5 && !hitpause{
                    hsp -= sign(hsp) * 0.4;
                    if abs(hsp) < 7 setWindow(6);
                }
                break;
            case 6: // endlag
                break;
            case 7: // jump
            case 8: // bounce
                if (window_timer == 4){
                    sound_stop(sfx_sonic_spindash_charge);
                }
                can_fast_fall = false;
                break;
            case 9: // homing attack
                break;
        }
        
        break;
        
    case AT_FSPECIAL:
        
        next_capsule_type = 0;
        can_move = (window == 3);
        can_fast_fall = false;
        var laser_speed = 25;
        var laser_vol = 0.65;
        var bounced = 0;
        
        // Movement
        
        switch(window){
            case 1:
                if cancelSpecial(){
                    sound_stop(laser_sfx);
                    break;
                }
                
                hsp = 0;
                vsp = 0;
                spr_angle = 0;
                if (window_timer == 1){
                    laser_sfx = sound_play(sfx_sonic_laser_charge, 0, noone, laser_vol);
                    array_push(stopped_sounds, laser_sfx);
                    from_capsule = false;
                }
                if from_capsule || phone_cheats[cheat_aim]{
                    chooseAngle();
                }
                else{
                    laser_angle = 0;
                    if up_down{
                        laser_angle = 45;
                    }
                    else if down_down{
                        laser_angle = -45;
                    }
                }
                if hitpause && abs(right_down - left_down) spr_dir = right_down - left_down;
                if window_timer != window_end break;
                reset_window_value(attack, 3, AG_WINDOW_TYPE);
                var soundsoundsound = sound_play(sfx_sonic_laser_fire, 0, noone, laser_vol);
                array_push(stopped_sounds, soundsoundsound);
                sound_stop(laser_sfx);
            case 2:
                if !hitpause && hsp == 0 && !(from_capsule || phone_cheats[cheat_aim]) x -= spr_dir * 20;
                if place_meeting(x + hsp, y, asset_get("par_block")){
                    spr_dir *= -1;
                    bounced = true;
                }
                if (!free && lengthdir_y(1, laser_angle) > 0) || place_meeting(x, y + vsp, asset_get("par_block")){
                    laser_angle *= -1;
                    bounced = true;
                }
                if hitpause && has_hit_player{
                    attack_end();
                    attack = AT_NSPECIAL;
                    setWindow(8);
                    old_vsp = -djump_speed;
                    old_hsp = clamp(old_hsp, -air_max_speed, air_max_speed);
                    sound_play(sfx_sonic_badnik_bounce);
                    
                    var spd = 5;
                    for (var i = 0; i < 16; i++){
                        var ang = random_func(i, 360, true);
                        var hfx = spawnLaserPixels(1, lengthdir_x(spd, ang), lengthdir_y(spd, ang));
                    }
                    
                    instance_create(x, y, "obj_article1");
                    break;
                }
                if !hitpause{
                    hsp = lengthdir_x(laser_speed, laser_angle) * spr_dir;
                    vsp = lengthdir_y(laser_speed, laser_angle);
                    spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                }
                
                // if window == 2{
                //     var hfx = spawn_hit_fx(x, y - 26, vfx_laser_trail);
                //     hfx.draw_angle = spr_angle;
                // }
                if (window == 1){
                    var hfx = spawn_hit_fx(x, y - 26, vfx_laser_start);
                    hfx.draw_angle = point_direction(0, 0, hsp, vsp) + 180 * (spr_dir == -1);
                }
                spawnLaserPixels(2, hsp * 0.1, vsp * 0.1);
                
                // if !from_capsule phone_arrow_cooldown = get_attack_value(attack, AG_MUNO_ATTACK_COOLDOWN);
                break;
            case 3:
                if (window_timer == 1){
                    hsp *= 0.5;
                    vsp *= 0.5;
                    instance_create(x, y, "obj_article1");
                    // sound_play(sfx_sonic_laser_end, 0, noone, laser_vol);
                }
                if (window_timer < window_end / 2){
                    hsp *= 0.9;
                    vsp *= 0.9;
                }
                else{
                    vsp += gravity_speed;
                }
                if image_index > 8 spr_angle = 0;
                can_wall_jump = true;
                break;
        }
        
        if bounced{
            laser_x[laser_num] = x;
            laser_y[laser_num] = y - 26;
            laser_num++;
            sound_play(asset_get("sfx_may_arc_cointoss"));
            // set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
        }
        
        // if from_capsule set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 0);
        
        // Line
        
        switch(window){
            case 1:
                laser_x = [x];
                laser_y = [y - 26];
                laser_num = 1;
                if window_timer != window_end break;
            case 2:
                laser_x[laser_num] = hsp + x;
                laser_y[laser_num] = vsp + y - 26;
                laser_alpha = 2;
                if (window == 2 && window_timer == window_end){
                    laser_x[laser_num] = hsp * 2 + x;
                    laser_y[laser_num] = vsp * 2 + y - 26;
                }
                break;
            case 3:
                break;
        }
        
        break;
        
    case AT_USPECIAL:
        
        next_capsule_type = 1;
        can_fast_fall = 0;
        
        // Movement
        
        switch(window){
            case 1:
                if cancelSpecial(){
                    sound_stop(rocket_sound);
                    sound_stop(rocket_sound_2);
                    sound_stop(rocket_sound_3);
                    break;
                }
                
                hsp = 0;
                vsp = 0;
                can_move = 0;
                spr_angle = 0;
                if (window_timer == 1){
                    rocket_sound = sound_play(sfx_sonic_spike_charge);
                    array_push(stopped_sounds, rocket_sound);
                    rocket_sound_2 = sound_play(sfx_sonic_rocket_launch);
                    array_push(stopped_sounds, rocket_sound_2);
                    from_capsule = false;
                    laser_angle = 90;
                }
                if from_capsule || phone_cheats[cheat_aim] chooseAngle();
                if window_timer == window_end{
                    rocket_speed = 30;
                    hsp = lengthdir_x(rocket_speed, laser_angle) * spr_dir;
                    vsp = lengthdir_y(rocket_speed, laser_angle);
                    var height = y;
                    if !(laser_angle == 90) height -= 26;
                    var hfx = spawn_hit_fx(x, height, vfx_rocket_start);
                    hfx.draw_angle = laser_angle - 90;
                    hfx.spr_dir = 1;
                    sound_stop(rocket_sound);
                    spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                }
                if (window_timer == window_end - 4){
                    rocket_sound_3 = sound_play(asset_get("sfx_ell_big_missile_fire"))
                }
                if from_capsule && window_timer == window_end{
                    rocket_sound_2 = sound_play(sfx_sonic_rocket_launch);
                    array_push(stopped_sounds, rocket_sound_2);
                    rocket_sound_3 = sound_play(asset_get("sfx_ell_big_missile_fire"))
                }
                break;
            case 2:
                if hitpause && hitstop == hitstop_full - 1{
                    var spd = 5;
                    for (var i = 0; i < 16; i++){
                        var ang = random_func(i, 360, true);
                        var hfx = spawnRocketSmoke(1, lengthdir_x(spd, ang), lengthdir_y(spd, ang), depth - 1, i);
                    }
                }
                
                if hitpause && has_hit_player && false{
                    attack_end();
                    attack = AT_NSPECIAL;
                    setWindow(8);
                    old_vsp = -jump_speed;
                    old_hsp = clamp(old_hsp, -air_max_speed, air_max_speed);
                    sound_play(sfx_sonic_badnik_bounce);
                    
                    instance_create(x, y, "obj_article1");
                    break;
                }
                else if !hitpause{
                    rocket_speed -= gravity_speed;
                    hsp = lengthdir_x(rocket_speed, laser_angle) * spr_dir;
                    vsp = lengthdir_y(rocket_speed, laser_angle);
                    if rocket_speed > 26 || !(state_timer % 3) spawnRocketSmoke(1, lengthdir_x(-5, laser_angle) * spr_dir, lengthdir_y(-5, laser_angle), depth + 1, 0);
                    spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                }
                // spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                break;
            case 3:
                if (window_timer == 1){
                    hsp *= 0.5;
                    vsp *= 0.5;
                    instance_create(x, y, "obj_article1");
                    // sound_play(sfx_sonic_laser_end, 0, noone, laser_vol);
                }
                if (window_timer < window_end / 2){
                    hsp *= 0.9;
                    vsp *= 0.9;
                }
                else{
                    vsp += gravity_speed;
                }
                if image_index > 8 spr_angle = 0;
                break;
        }
        
        break;
        
    case AT_DSPECIAL:
        
        next_capsule_type = 2;
        can_fast_fall = 0;
        
        // Movement
        
        switch(window){
            case 1:
                if cancelSpecial(){
                    sound_stop(drill_sound);
                    break;
                }
                
                hsp = 0;
                vsp = 0;
                can_move = 0;
                spr_angle = 0;
                if (window_timer == 1){
                    drill_sound = sound_play(sfx_sonic_spike_charge);
                    array_push(stopped_sounds, drill_sound);
                    from_capsule = false;
                    laser_angle = 270;
                    has_burrowed = 0;
                }
                if from_capsule || phone_cheats[cheat_aim] chooseAngle();
                if window_timer == window_end{
                    if abs(right_down - left_down) && place_meeting(x + (right_down - left_down) * 16, y, asset_get("par_block")){
                        laser_angle = 0;
                        spr_dir = right_down - left_down;
                    }
                    rocket_speed = 30;
                    hsp = lengthdir_x(rocket_speed, laser_angle) * spr_dir;
                    vsp = lengthdir_y(rocket_speed, laser_angle);
                    var height = y;
                    if !(laser_angle == 90) height -= 26;
                    var hfx = spawn_hit_fx(x, height, vfx_drill_start);
                    hfx.draw_angle = laser_angle - 90 + 180;
                    hfx.spr_dir = 1;
                    sound_stop(drill_sound);
                    spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                    has_burrowed = 0;
                }
                if (window_timer == window_end - 4){
                    drill_sound_3 = sound_play(sfx_sonic_drill_fire);
                    drill_sound_2 = sound_play(asset_get("sfx_ell_big_missile_fire"));
                    array_push(stopped_sounds, drill_sound_3);
                }
                break;
            case 4: // THRU GROUND
                if (window_timer == window_end){
                    window_timer = 0;
                    times_thru++;
                }
                can_move = 0;
                if times_thru || window_timer > window_end / 2{
                    var amt = 10;
                    if false{ // RUNE
                        spr_dir = 1;
                        if !joy_pad_idle laser_angle -= amt * sign(angle_difference(laser_angle, joy_dir));
                    }
                    else{
                        laser_angle -= amt * sign(angle_difference(laser_angle, 90));
                    }
                }
                mask_index = orig_mask;
                if !place_meeting(x + hsp, y + vsp, asset_get("par_block")){
                    setWindow(2);
                    if (abs(hsp) < 1) set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
                    window_timer = 8;
                    var hfx = spawn_hit_fx(x, y, vfx_drill_start);
                    hfx.draw_angle = laser_angle - 90;
                    hfx.spr_dir = 1;
                    sound_play(sfx_sonic_drill_burrow);
                    rocket_speed = 25;
                    
                    create_hitbox(AT_DSPECIAL, 2, x, y);
                    
                    if has_hit{
                        if shield_pressed has_airdodge = 1;
                        if jump_pressed djumps = 0;
                        
                        iasa_script();
                        
                        if attack_pressed || jump_pressed || shield_pressed || (special_pressed && joy_pad_idle){
                            vsp = -jump_speed;
                            instance_create(x, y, "obj_article1");
                            break;
                        }
                    }
                }
                mask_index = asset_get("empty_sprite");
            case 2:
                fall_through = 1;
                if hitpause && hitstop == hitstop_full - 1{
                    var spd = 5;
                    for (var i = 0; i < 16; i++){
                        var ang = random_func(i, 360, true);
                        var hfx = spawnDrillRocks(1, lengthdir_x(spd, ang), lengthdir_y(spd, ang), depth - 1, i);
                    }
                }
                
                if !hitpause{
                    if window != 4 rocket_speed -= gravity_speed;
                    hsp = lengthdir_x(rocket_speed, laser_angle) * spr_dir;
                    vsp = lengthdir_y(rocket_speed, laser_angle);
                    if rocket_speed > 26 || !(state_timer % 3) spawnDrillRocks(1, lengthdir_x(-5, laser_angle) * spr_dir, lengthdir_y(-5, laser_angle), depth + 1, 0);
                    spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                    
                    // if has_hit_player && window == 2 && window_timer < 9 && !has_burrowed{
                    //     var amt = 0.5;
                    //     hit_player_obj.x = lerp(hit_player_obj.x, x, amt);
                    //     hit_player_obj.y = lerp(hit_player_obj.y, y, amt);
                    // }
                    
                    if window != 4 && (place_meeting(x + hsp, y + vsp, asset_get("par_block"))) && (!has_burrowed || window_timer == window_end){
                        setWindow(4);
                        mask_index = asset_get("empty_sprite");
                        rocket_speed = 15;
                        times_thru = 0;
                        for (var i = 0; i < 16; i++){
                            var ang = random_func(i, 360, true);
                            var hfx = spawnDrillRocks(1, lengthdir_x(spd, ang), lengthdir_y(spd, ang), depth - 1, i);
                        }
                        has_burrowed = 1;
                        sound_play(sfx_sonic_drill_burrow);
                        if abs(right_down - left_down) spr_dir = right_down - left_down;
                        attack_end();
                    }
                }
                
                // if !from_capsule phone_arrow_cooldown = get_attack_value(attack, AG_MUNO_ATTACK_COOLDOWN);
                // spr_angle = point_direction(0, 0, hsp, vsp) + 90 - 90 * spr_dir;
                break;
            case 3:
                if (window_timer == 1){
                    hsp *= 0.5;
                    vsp *= 0.5;
                    instance_create(x, y, "obj_article1");
                    // sound_play(sfx_sonic_laser_end, 0, noone, laser_vol);
                }
                if (window_timer < window_end / 2 && (!has_burrowed || window_timer == 1 && vsp > 0)){
                    hsp *= 0.9;
                    vsp *= 0.9;
                }
                else{
                    vsp += gravity_speed;
                }
                if image_index > 8 spr_angle = 0;
                break;
        }
        
        set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 7 * !(has_hit || has_burrowed));
        
        break;
    
}



#define spawnLaserPixels(count, xsp, ysp)

for (var i = 0; i < count; i++){
    var hfx_x = x + random_func(0 + i, 60, true) - 30;
    var hfx_y = y + random_func(1 + i, 60, true) - 30 - 26;
    
    var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_laser_pixels[clamp(random_func(i + 10, 3, true), 0, 2)]);
    hfx.hsp = xsp;
    hfx.vsp = ysp;
    hfx.draw_angle = spr_angle;
    hfx.depth = depth - 1;
    hfx.sonic_laser = self;
}

return hfx;



#define spawnRocketSmoke(count, xsp, ysp, dep, seed)

for (var i = 0; i < count; i++){
    var hfx_x = x + random_func(0 + i, 20, true) - 10;
    var hfx_y = y + random_func(1 + i, 20, true) - 10 - 26;
    
    var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_rocket_smoke[clamp(random_func(seed + i + 10, 3, true), 0, 2)]);
    hfx.hsp = xsp;
    hfx.vsp = ysp;
    hfx.draw_angle = spr_angle;
    hfx.depth = dep;
    hfx.sonic_laser = self;
}

return hfx;



#define spawnDrillRocks(count, xsp, ysp, dep, seed)

for (var i = 0; i < count; i++){
    var hfx_x = x + random_func(0 + i, 20, true) - 10;
    var hfx_y = y + random_func(1 + i, 20, true) - 10 - 26;
    
    var hfx = spawn_hit_fx(hfx_x, hfx_y, vfx_drill_rock);
    hfx.hsp = xsp + random_func(2 + i, 6, true) - 3;
    hfx.vsp = ysp + random_func(3 + i, 6, true) - 3;
    hfx.draw_angle = spr_angle;
    hfx.depth = dep;
    hfx.sonic_laser = self;
    hfx.sonic_drill = true;
}

return hfx;



#define chooseAngle

if abs(right_down - left_down) spr_dir = right_down - left_down;

if up_down{
    if abs(right_down - left_down) laser_angle = 45;
    else laser_angle = 90;
}
else if down_down{
    if abs(right_down - left_down) laser_angle = 315;
    else laser_angle = 270;
}
else if abs(right_down - left_down){
    laser_angle = 0;
}



#define cancelSpecial

if (shield_down) && window_timer == window_end{
    reset_window_value(attack, 3, AG_WINDOW_TYPE);
    setWindow(3);
    window_timer = 1;
    vsp = -12;
    instance_create(x, y, "obj_article1");
    sound_play(sfx_sonic_skid);
    sound_play(sfx_sonic_laser_end);
    return 1;
}

return 0;



#define setWindow(new)

window = new;
window_timer = 0;

destroy_hitboxes();