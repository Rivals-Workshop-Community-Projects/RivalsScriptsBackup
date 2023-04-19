//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch (attack)
{
    case AT_TAUNT:
        if window_timer == 10 or window_timer == 35 {
            sound_play(sound_get("sfx_idle_shake"), false, noone, 0.8, 1)
        }
    
        if !taunt_down and window_timer < 4 {
            attack_end();
            set_state(PS_IDLE)
        }
    break;
    case AT_TAUNT_2:
        if taunt_down {
            window = 0;
            window_timer = 0;
        }
    break;
    case AT_DATTACK:
    can_fast_fall = false;
        if window == 1 {
            if window_timer == 1
            {
                sound_play(asset_get("sfx_ori_dtilt_perform"), false, noone, 0.8, 1.1)
            }
            else if window_timer == 8 and last_note != -1 {
                dattack_sfx[0] = sound_play(sound_get("sfx_glissando"), false, noone, 0.5, 1.35)
            }
            else if window_timer == 12 and last_note != -1 {
                dattack_sfx[1] = sound_play(sound_get("sfx_glissando"), false, noone, 0.2, 1.36)
            }
        }
    
        if window == 3 {
            if window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-1 {
                dattack_loops++;
            }
            
            if dattack_loops > 3 {
                can_shield = free;
                can_wall_jump = true;
                can_jump = free;
            }
            
            if !free and dattack_loops > 0 {
                window++;
                window_timer = 0;
                off_edge = false;
                sound_stop(dattack_sfx[0]);
                sound_stop(dattack_sfx[1]);
                sound_play(sound_get("sfx_dattack_plop"))
            }
            
        }
    break;
    case AT_FSPECIAL:
    //nothing
    if window == 1 and window_timer == 11 {
        spawn_hit_fx(x,y,fspecial_vfx)
    }
    
    can_wall_jump = true

    if window == 2 or window == 3 and get_gameplay_time() mod 4 == 0 {
        var vfx = -1;
        switch random_func( (x+y) mod 8, 3, true ) {
            case 0:
            vfx = note_trail_purple
            break;
            case 1:
            vfx = note_trail
            break;
            case 2:
            vfx = note_trail_orange
            break;
        }
        
        var yy;
        yy = random_func(4, 40, false)-20
        spawn_hit_fx(x,y-20+yy,vfx)
    }
    
    if window == 3 {
        vsp += 0.4;
        
        fspecial_timer += 1;
        if fspecial_timer > 20 {
            can_shield = free;
            can_jump = free;
        }
        
        if !free {
            sound_play(asset_get("sfx_swipe_heavy2"))
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.6, 1)
            window++;
            window_timer=0;
        }
        
    }
    
    if window == 4 and window_timer == 1 {
        move_cooldown[AT_FSPECIAL] = 30;
    }
    break;
    case AT_USTRONG:
        if window == 3 and window_timer == 9 {
            sound_play(sound_get("sfx_tambo_swipe"), false, noone, 0.8, 1.1)
        }
    
        if (window == 3 and window_timer > 5) or window == 4 or (window == 5 and window_timer < 10) {
            hud_offset = round(lerp(hud_offset, 350, 0.2))
        }
    break;
    case AT_DSTRONG:
        if window == 2 and window_timer == 5 {
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.6, 1)
            sound_play(sound_get("sfx_idle_shake"), false, noone, 0.2, 0.93)
            sound_play(sound_get("sfx_idle_shake"), false, noone, 0.3, 1.0)
        }
    break;
    case AT_NAIR:
        switch (window)
        {
            case 1:
                if window_timer == 2 {
                    sound_play(asset_get("sfx_pom_fair"), false, noone, 0.7, 1.1)
                }
            break;
            case 3:
                if window_timer == 5 {
                    sound_play(asset_get("sfx_pom_blast3"), false, noone, 0.9, 1.0);
                }                
            break;
        }
        break;
    case AT_DSPECIAL:
        switch (window) {
            case 2:
                if window_timer == 1
                {
                    var i = 0;
                    repeat 2
                    {
                        with spawn_hit_fx(x + (70*i) - 35,y-14,smoke_vfx) depth = other.depth-2
                        i++;
                    }      
                    tambo_obj = instance_create(x, y+9, "obj_article1")
                    tambo_obj.note_storage = notes;
                    notes = [-1,-1,-1,-1]
                }
            break;
        }
    break;
    case AT_USPECIAL:
        can_wall_jump = true;
        can_move = false;
        
        if window == 2 or window == 3 and get_gameplay_time() mod 4 == 0 {
            var vfx = -1;
            switch random_func( (x+y) mod 8, 3, true ) {
                case 0:
                vfx = note_trail_purple
                break;
                case 1:
                vfx = note_trail
                break;
                case 2:
                vfx = note_trail_orange
                break;
            }
            
            var yy;
            yy = random_func(4, 40, false)-20
            spawn_hit_fx(x,y-20+yy,vfx)
        }
    break;
    case AT_DAIR:
    
    can_move = false;
        switch (window)
        {
            case 1:
                vsp *= 0.9;
            break;
            case 2:
                vsp *= 0.9;
                hsp *= 0.9;
            case 3:
                if get_gameplay_time() mod 3 == 0
                {
                    var xx;
                    xx = random_func(4, 20, false)-10
                    spawn_hit_fx(x-(20*spr_dir)+xx,y-20,note_trail)
                }
            break;
        }
    break;
    case AT_BAIR:
        if window == 1 and window_timer == 8
        {
            sound_play(asset_get("sfx_pom_tail_forward"), false, noone, 0.4, 1.1)
            sound_play(sound_get("sfx_tambo_swipe"), false, noone, 0.8, 0.9)
        }
    break;
    case AT_FTILT:
        if window == 1 and window_timer == 3
        {
            sound_play(asset_get("sfx_pom_tail_back"), false, noone, 0.8, 1.1)
            sound_play(asset_get("sfx_swipe_heavy2"), false, noone, 1, 1);
        }
    break;
    case AT_UTILT:
        if window == 1 and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1
        {
            hsp += spr_dir * 3.5
            print("lol")
        }
        
        if window == 3 and window_timer == 4 {
            sound_play(asset_get("sfx_zetter_downb"), false, noone, 0.5, 1.05)
        } 
    break;
    case AT_DTILT:
    can_move = false;
        switch (window)
        {
            case 2:
                hsp *= 0.9;
                
                if has_hit and !hitpause
                {
                    window = 4;
                    window_timer = 0;
                }
            break;
            case 3:
                if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 and !hitpause)
                {
                    attack_end()
                    set_state(was_parried ? PS_PRATLAND : PS_IDLE);
                    if was_parried parry_lag = 40;
                }
            break;
        }
    break;
}


#define get_num_notes
var i = 0
while i != array_length(notes) and notes[i] != -1 {
    i++;
}

return i