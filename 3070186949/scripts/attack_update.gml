//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch (attack) {
    case AT_FSTRONG:
        if window == 3 and window_timer == 1 and !hitpause {
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.3)
        }
    break;
    case AT_TAUNT_2:
        if (window < 3){
            hud_offset = round(lerp(hud_offset, 220, 0.1));
        }
        if (window == 2 && taunt_down == false){
            window = 3;
            window_timer = 0;
        }
    break;
    case AT_TAUNT:
    if (window == 1){
            taunt_timer = 0;
            bg_alpha = 0;
        }
        if (window == 1 or window == 2){
        force_depth = true;
        depth = 5;
            suppress_stage_music( 0, 999);
        }
        if (window == 1 && window_timer == 11){
            var mus_volume = 1;
            sound_play(tune, true, noone, mus_volume, 1);
        }
        if (window == 2){
            taunt_timer ++;
            if (taunt_timer > 1700 && bg_alpha < 1){
                bg_alpha += 0.01;
            }
            if (taunt_timer == 1800){
            sound_play(sound_get("mus_chill"), true, noone, 1, 1);
            sound_stop(tune);
            }
        }
        if (window == 2 && taunt_down == false){
            window = 3;
            window_timer = 0;
            sound_stop(tune);
            sound_stop(sound_get("mus_chill"));
            suppress_stage_music( 1, 999);
        }
        if (window == 3){
            if (bg_alpha > 0){
                bg_alpha -= 0.1;
            }
        }
        
    break;
    case AT_FSPECIAL:
        can_fast_fall = false;
        can_wall_jump = true
        
        if window == 2 and instance_exists(record_player_obj) {
            record_player_obj.state = PS_DASH
            if instance_exists(record_player_obj) and is_special_pressed(DIR_ANY)
            {
                var record_player_record = record_player_obj.blook_record;
                record_player_obj.blook_record = blook_record;
                record_player_obj.sprite_index = sprite_get(`table_${blook_record+1}`)
                
                blook_record = record_player_record;
                switch blook_record {
                    case 0:
                    sound_play(sound_get("sfx_spooktune"));
                    break;
                    case 1:
                    sound_play(sound_get("sfx_spookwave"));
                    break;
                    case 2:
                    sound_play(sound_get("sfx_ghouliday"));
                    break;
                }
                
                destroy_hitboxes();
                if right_down-left_down != 0 spr_dir = right_down-left_down
                set_attack(AT_FSPECIAL_2);
                hurtboxID.sprite_index = sprite_get("fspecial_2_hurt")
                
                sound_play(sound_get("sfx_ut_blink"), false, noone, 0.7, 1.1)
                fspecial_usage_cooldown = 120;
            }
        }
    break;
    case AT_FSPECIAL_2:
        if window == 1 and !hitpause {
            if window_timer == 4
            {
                sound_play(asset_get("sfx_bird_sidespecial"), false, noone, 0.6, 1.3);
                sound_play(asset_get("sfx_oly_fspecial_dash"), false, noone, 0.6, 1.2)
            }
            if window_timer == 5
            {
                sound_play(asset_get("sfx_ell_strong_attack_explosion"), false, noone, 0.6, 1.1)
            }
        }
        
        if window > 1 and !hitpause and get_gameplay_time() mod 3 == 0 {
            var note = trails[blook_record]
            
            var yy = random_func(4, 32, false) - 16
            spawn_hit_fx(x - (30*spr_dir), floor(y - (char_height / 2) + yy), note)
        }
        
        if window == 3 and window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 {
            if was_parried {
                set_state(PS_PRATFALL)
            }
            else
            {
                if !free {
                    set_state(PS_IDLE)
                }
                else {
                    set_state(has_hit ? PS_IDLE_AIR : PS_PRATFALL)
                }
            }
        }
    break;
    case AT_NAIR:
        if window == 1 and window_timer == 5 sound_play(sound_get("sfx_cane_charge_swing"), false, noone, 0.6, 0.86)
    break;
    case AT_UAIR:
        if window > 1 and window < 5 {
            hud_offset = round(lerp(hud_offset, 140, 0.1))
        }
    break;
    case AT_USTRONG:
        if window > 2 and window < 6 {
            hud_offset = round(lerp(hud_offset, 200, 0.1))
        }
    break;
    case AT_USPECIAL:
    can_move = false
    can_wall_jump = true
        if window == 1 {
            if window_timer == 5 sound_play(asset_get("sfx_bird_sidespecial"), false, noone, 0.9, 1.1);
            if window_timer == 7 sound_play(asset_get("sfx_ell_strong_attack_explosion"))
        }
        
        if window == 2 or window == 3 {
            var horizontal = right_down-left_down
            
            if horizontal != 0 {
                hsp = lerp(hsp, horizontal * 3, 0.1);
            }
            
            if get_gameplay_time() mod 4 == 0
            {
                var range = 22;
                var rand = (range/2) - random_func(10, range, false)
                
                var angle = (point_direction(0,0,hsp,vsp) + 270);
                
                spawn_hit_fx(x + lengthdir_x(rand, angle),(y-10) + lengthdir_y(rand, angle), uspecial_trail_vfx).draw_angle = angle; 
            }
        }
    break;
    case AT_DSTRONG:
        if window == 2 and window_timer == 1 {
            sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.6, 1.1)
        }
        else if window == 4 and window_timer == 1 {
            sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.4, 1.2)
        }
    
        // if window == 2 or (window == 3 and window_timer < 7) {
        //     for (var i = 0; i < array_length(ftilt_grabbed); i++) {
        //         ftilt_grabbed[i].x = lerp(ftilt_grabbed[i].x, x + (80*spr_dir), 0.2);
        //         ftilt_grabbed[i].y = lerp(ftilt_grabbed[i].y, y - 10, 0.1);
        //     }            
        // }
    
        if window == 6 or (window == 7 and window_timer < 6) {
            for (var i = 0; i < array_length(ftilt_grabbed); i++) {
                if ftilt_grabbed[i] == noone continue;
                
                if ftilt_grabbed[i].hitstun == 0
                {
                    ftilt_grabbed[i] = noone 
                    continue;
                }
                var lerp_factor = (ftilt_grabbed[i].hitstun < 6) ? (6 - ftilt_grabbed.hitstun) / 100 : 0;
                ftilt_grabbed[i].x = lerp(ftilt_grabbed[i].x, x - (50*spr_dir), 0.18 - lerp_factor);
                ftilt_grabbed[i].y = lerp(ftilt_grabbed[i].y, y - 40, 0.14 - lerp_factor);
            }
        }
    break;
    case AT_FTILT:
    
        var spin_sound = asset_get("sfx_ori_stomp_spin");
        if (window == 1 && window_timer == 1){
            sound_play(spin_sound);
        }
        if (window == 2){
            sound_stop(spin_sound);
        }
        /*if window == 5 or (window == 6 and window_timer < 5) {
            for (var i = 0; i < array_length(ftilt_grabbed); i++) {
                ftilt_grabbed[i].x = lerp(ftilt_grabbed[i].x, x - (40*spr_dir), 0.15);
                ftilt_grabbed[i].y = lerp(ftilt_grabbed[i].y, y - 40, 0.15);
            }
        }*/
    break;
    case AT_DTILT:
        if window == 1 and window_timer == 2 {
            sound_play(asset_get("sfx_hod_flip1"), false, noone, 0.9, 1.2);
        }
    break;
    case AT_DATTACK:
    if (window == 1 && window_timer == 7){
        sound_play(asset_get("sfx_ori_dsmash_skitter_alone"));
        sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.8, 1.2);
    }
    break;
    case AT_UTILT:
        if window == 1
        {
            if (window_timer == 2) {
                sound_play(asset_get("sfx_forsburn_cape_swipe"))
            }
            else if (window_timer == 8) {
                sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.8, 1)
            }
        }
        else if window == 2 or (window == 3 and window_timer < 8) {
            hud_offset = round(lerp(hud_offset, 150, 0.3) )
        }
    break;
}