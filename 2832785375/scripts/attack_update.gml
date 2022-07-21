// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_DAIR){
    trigger_b_reverse();
}

if attack == AT_DAIR {
    if window == 1 {
        old_djumps = djumps
    }
    if window == 2 || window == 3 {
        can_move = false
        if !free {
            window++
            window_timer = 0
            destroy_hitboxes()
        }
        
        if window_timer > 20 can_jump = true
    }
    
    if window == 6 && window_timer == 1 {
        hsp = 6*spr_dir
    }
    
    if window == 6 can_move = false
    
    if window == 4 {
        if window_timer == window_length && !attack_down {
            window = 9
            window_timer = 0
        }
    }
    
    if window == 6 {
        djumps = old_djumps
    }
    
    can_fast_fall = false
    //if window == 9 can_jump = true
}

if attack == AT_USPECIAL {
    can_wall_jump = true
    can_move = false
    
    if window == 1 && window_timer == 1 sound_play(asset_get("sfx_syl_uspecial_travel_start"))
    if window == 2 {
        if !free {
            window++
            window_timer = 0
        } else if window_timer == window_length {
            window = 6
            window_timer = 0
            sound_play(asset_get("sfx_bite"))
        }
        if shield_pressed {
            window = 7
            window_timer = 6
            vsp *= 0.8
        }
    }
    
    //wall detection
    var touch_wall = place_meeting(x+1, y, asset_get("par_block")) || place_meeting(x-1, y, asset_get("par_block"))
    if window == 2 && touch_wall {
        window = 3
        window_timer = 0
    }
    
    if window == 4 {
        uspec_spawn_x = x + spr_dir*120
        if right_down && !left_down uspec_spawn_x += 60
        if left_down && !right_down uspec_spawn_x -= 60
        
        if window_timer == window_length {
            var uspec_spawn_y = floor(y/8)*8
            
            while position_meeting(uspec_spawn_x, uspec_spawn_y, asset_get("par_block")) {
                uspec_spawn_y -= 8
            }
            
            x = uspec_spawn_x
            y = uspec_spawn_y+8
        }
    }
}

if attack == AT_NSPECIAL {
    move_cooldown[AT_NSPECIAL] = 30;
}

if attack == AT_DSPECIAL {
    move_cooldown[AT_DSPECIAL] = 30;
    
    if window_timer == 6 {
        dspec_coords = [x,y];
    }
    
    //1 seed on ground, 1 seed marked on player
    if seed_count >= 2 && window_timer == 8 {
        with obj_article1 if player_id == other.id && state == PS_IDLE {
            state = PS_JUMPSQUAT
            state_timer = 0
        }
    } else if seed_count == 1 && ground_seed_count == 1 && window_timer == 8 { //only seed on ground
        with obj_article1 if player_id == other.id && state == PS_IDLE {
            state = PS_ATTACK_AIR
            state_timer = 0
            window_timer = 0
            window = 0
        }
    }
}

if attack == AT_FAIR {
    if window == 1 && window_timer == 1 {
        special_fair = false;
        reset_num_hitboxes(AT_FAIR);
        reset_window_value(AT_FAIR, 4, AG_WINDOW_SFX);
        reset_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME);
    }
    if (window <= 2) && (special_down || special_pressed) {
        special_fair = true;
    }
    if special_fair {
        set_num_hitboxes(AT_FAIR, 1);
        set_window_value(AT_FAIR, 4, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
        set_window_value(AT_FAIR, 4, AG_WINDOW_SFX_FRAME, 0);
        if window == 4 && window_timer == 3 && !hitpause {
            var _seed = create_hitbox(AT_NSPECIAL, 1, floor(x + 70*spr_dir), floor(y + 10));
                _seed.hsp = 10*spr_dir;
                _seed.vsp = 10;
        }
    }
}

if attack == AT_JAB {
    if window == 7 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_bite"))
    }
}

if attack == AT_FSPECIAL {
    can_move = false;
    /*
    if (window == 3 || window == 4) && window_timer == window_length {
        spr_dir *= -1;
    }
    */
    with oPlayer if id != other.id && arb_grabbed == other.id {
        if !other.hitpause {
            arb_grab_timer++
            y = lerp(y, other.y, 0.1)
        }
        
        x -= clamp((power(0.5*arb_grab_timer, 3))-4, 0, 30)*other.spr_dir;
        
        other.attack_invince = true
    }
    
    if window == 3 && window_timer == window_length {
        move_cooldown[AT_FSPECIAL] = 14
    }
    
    //wall grab
    var grabbox = undefined;
    with pHitBox if player_id == other.id && attack == AT_FSPECIAL && hbox_num == 2 {
        grabbox = id
    }
    if grabbox != undefined && !has_hit {
        with grabbox if position_meeting(x, y, asset_get("par_block")) {
            if !other.wall_grab {
                sound_play(asset_get("sfx_leafy_hit2"))
            }
            other.wall_grab = true
            other.has_hit = true
            other.hitpause = true
            other.hitstop = 6
            other.old_hsp = 0
            other.old_vsp = 0
            
            spawn_hit_fx(x, y-2, 305)
        }
        
        //seed grab
        with obj_article1 if player_id == other.id && place_meeting(x, y, grabbox) && state == PS_IDLE {
            if !other.wall_grab {
                sound_play(asset_get("sfx_leafy_hit2"))
            }
            other.wall_grab = true
            other.seed_grab = true
            other.seed_grab_id = id
            other.has_hit = true
            other.hitpause = true
            other.hitstop = 6
            other.old_hsp = 0
            other.old_vsp = 0
            
            spawn_hit_fx(x, y-8, 305)
        }
    }
    
    if wall_grab {
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 4);
        
        if (window == 2 && window_timer >= 6) || (window == 4 && window_timer != window_length) {
            hsp += 2*spr_dir
            hsp = clamp(hsp, -10, 10)
            
            if seed_grab {
                seed_grab_id.destroyed = true
                var hbox = create_hitbox(AT_NSPECIAL, 1, seed_grab_id.x, seed_grab_id.y)
                    hbox.spr_dir = -spr_dir
                    hbox.hsp *= -1.6
                    hbox.vsp *= 1
                seed_grab = false
                
            }
        }
        can_wall_jump = true
        if window >= 4 {
            can_jump = true
        }
        move_cooldown[AT_FSPECIAL] = 14
    }
}

if !remote_strong {
    strong_draw_x = x
    strong_draw_y = y
}

switch attack {
    case AT_TAUNT:
    if window == 1 && window_timer == window_length sound_play(asset_get("sfx_syl_uspecial_travel_start"))
    if window == 2 && window_timer == 1 shake_camera(4, 12)
    break;
    
    case AT_FSTRONG:
    if window == 2 && window_timer == window_length-1 {
        sound_play(asset_get("sfx_syl_dstrong"))
    }
    if !remote_strong {
        //prevent hanging off ledge
        var offset = 90;
        while !position_meeting(strong_draw_x+offset*spr_dir, y+2, asset_get("par_block")) && !position_meeting(strong_draw_x+offset*spr_dir, y+2, asset_get("par_jumpthrough")) && abs(strong_draw_x-x) < 100 {
            strong_draw_x -= 2*spr_dir
            set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 90 - abs(strong_draw_x-x));
        }
        reset_num_hitboxes(AT_FSTRONG);
    } else {
        set_num_hitboxes(AT_FSTRONG, 2);
    }
    //seed_attack(AT_FSTRONG)
    break;
    case AT_DSTRONG:
    if window == 2 && window_timer == window_length-2 {
        sound_play(asset_get("sfx_zetter_downb"))
    }
    
    if !remote_strong {
        reset_num_hitboxes(AT_DSTRONG);
    } else {
        set_num_hitboxes(AT_DSTRONG, 3);
    }
    //seed_attack(AT_DSTRONG)
    break;
    case AT_USTRONG:
    if window == 2 && window_timer == 3 {
        sound_play(asset_get("sfx_may_root"))
    }
    //seed_attack(AT_USTRONG)
    if !remote_strong {
        reset_num_hitboxes(AT_USTRONG);
    } else {
        set_num_hitboxes(AT_USTRONG, 4);
    }
    break;
    
    case AT_BAIR:
    if window == 1 && window_timer == 7 sound_play(sfx_ivy_swipe_heavy3)
    break;
    
    case AT_DTILT:
    if window == 1 && window_timer == 3 sound_play(sfx_ivy_swipe_med1)
    break;
    
    case AT_UTILT:
    if window == 1 && window_timer == 5 sound_play(sfx_ivy_swipe_weak1)
    if window == 2 && window_timer == 7 sound_play(sfx_ivy_swipe_med1)
    break;
    
    case AT_FAIR:
    if window == 1 && window_timer == 7 sound_play(sfx_ivy_swipe_weak2)
    if !special_fair && window == 4 && window_timer == 2 sound_play(sfx_ivy_swipe_heavy1)
    break;
    
    case AT_FTILT:
    if window == 2 && window_timer == 7 sound_play(sfx_ivy_swipe_med1)
    break;
    
    case AT_UAIR:
    if window == 1 && window_timer == 10 sound_play(sfx_ivy_swipe_heavy1)
    break;
    
    case AT_FSPECIAL:
    if window == 1 && window_timer == window_length-3 sound_play(asset_get("sfx_rag_plant_shoot"))
    if window == 4 && window_timer == 1 sound_play(asset_get("sfx_may_whip2"))
    if window == 1 && window_timer == window_length-3 sound_play(sfx_ivy_swipe_weak2)
    
    break;
}

#define seed_attack(atk)
//remote_strong = false
with obj_article1 if player_id == other.id && state == PS_IDLE {
    state = PS_ATTACK_GROUND
    state_timer = 0
    attack = atk
    window = 1
    window_timer = 0
    other.remote_strong = true
}
