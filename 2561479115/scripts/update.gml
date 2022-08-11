attacking = state == clamp(state,5,6);

//#region Jump FX
if (state == PS_JUMPSQUAT) played_hit_fx = false;
if (state == PS_FIRST_JUMP && prev_state == PS_JUMPSQUAT) {
    if (state_timer <= 1) {
        //reset effect
        played_hit_fx = false;
    }
    if (state_timer == 1 && vsp == -short_hop_speed) {
        played_hit_fx = true; //ignore shorthop
    } else if (state_timer == 3 && played_hit_fx == false) {
        //play effect
        sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,noone,jump_audio_volume);
        spawn_hit_fx(floor(x),floor(y),jump_fx);
        played_hit_fx = true;
    }
} else if (prev_state == PS_JUMPSQUAT && state == PS_ATTACK_AIR && state_timer == 3) {
    //play logic when fullhopping with attacks
    if (played_hit_fx == false && vsp < -(short_hop_speed+1)+(gravity_speed*3)) {
        sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,noone,jump_audio_volume);
        spawn_hit_fx(floor(x),floor(y),jump_fx);
        played_hit_fx = true;
    }
} else if state == PS_DOUBLE_JUMP && state_timer == 1 {
    //sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,noone,jump_audio_volume);
}
//djump sound, except it works with instant djump aerial now?
if (djumps > fix_old_djumps && !djumped) { 
    djumped = true;
    sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,noone,jump_audio_volume);
}

if djumps == 0 djumped = false; //reset djumped variable.
fix_old_djumps = djumps;
//Soup accel jump (because the base game accel jump is broken.)

//archived due to not being necessary anymore.

//this is the jump detection, in retrospect it should have tracked what the djumps variable was the previous frame
//then if it was less the previous frame, run the code, then set the prev frame djumps variable afterwards
/*if (djumps > fix_old_djumps && !djumped) { 
    r_djump_timer = 0;
    djumped = true;
    sound_play(asset_get("sfx_ell_strong_attack_explosion"),false,noone,jump_audio_volume);
}
djumping = false; //set djumping to false, as by default you're not double jumping.
if !free r_djump_timer = -1
if r_djump_timer == clamp(r_djump_timer,0,r_djump_accel_end_time-1)  {
    //gravity jump. you can just reset it directly since the criteria is just "did you fast fall on the first frame"
    if vsp == fast_fall {
        djumps = 0; 
        djumped = false;
    }
    
    fast_falling = false;
    do_a_fast_fall = false;
    free = true;
    can_land = false;
    //double jump cancel
    if state == clamp(state, 5, 6) && !jump_down {
        r_djump_timer = r_djump_accel_end_time
        print("djump cancel");
    }
    //apply accel. for some reason having the +1 and -1 makes it more accurate? i won't question it.
    if r_djump_timer == clamp(r_djump_timer, r_djump_accel_start_time+1, r_djump_accel_end_time-1) {
        vsp += r_djump_accel;
    }
    r_djump_timer++; //increment timer
    djumping = true; //yes i am double jumping.
    //print(vsp);
}
if djumps == 0 djumped = false; //reset djumped variable.
fix_old_djumps = djumps;
*/
//#endregion

//#region Airdodge FX
if (state == PS_AIR_DODGE) {
    if (clamp(state_timer,1,13)%4 == 0) {
        var fx = instance_create(x,y,"obj_article3");
        fx.image_index = floor(state_timer/4)-4;
    }
}
if prev_state == PS_AIR_DODGE && state_timer == 0 && uspec_airdodge_pratfall == true {
    uspec_airdodge_pratfall = false;
    set_state(free?PS_PRATFALL:PS_PRATLAND);
}

//#endregion

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
    move_cooldown[AT_USPECIAL] = 0;
}


if beacon_error beacon_error--;
else if can_special && is_special_pressed(DIR_DOWN) && move_cooldown[AT_DSPECIAL] {
    sound_play(asset_get("mfx_tut_fail"));
    beacon_error = 40;
}

//#region Other Update
user_event(0);
//#endregion

//#region Natural Bullet CD
if (bullets < bullets_max) {
    bullet_cd++;
    move_cooldown[AT_NSPECIAL] = 2;
    if (bullet_cd >= bullet_cd_max) {
        bullets++;
        bullet_cd = bullets < bullets_max ? 0 : bullet_cd_max;
        sound_play(asset_get("mfx_star"),false,-4,0.8,1);
        white_flash_timer = 5;
    }
}
//#endregion

//#region Gravity Jumping
//deprecated code due to jump rewrite. 

if (djumps > old_djumps && !djumping) {
    djumping = true;
    djump_track_timer = 0;
} else if djumping {
    djump_track_timer++
    if djump_track_timer >= djump_accel_end_time djumping = false;
    if state_cat != SC_AIR_COMMITTED && state_cat != SC_AIR_NEUTRAL djumping = false;
}
old_djumps = djumps;
if (roke_grav_jump) {
    roke_grav_jump = 0;
    if (fast_falling) {
        djumps = 0;
        djumped = false;
    }
}
if (djump_track_timer == 0 && vsp == fast_fall && fast_falling && djumps > 0) roke_grav_jump = 1;
//
//#endregion

//#region Bullet Landing Lag
if (state == PS_LANDING_LAG && state_timer == 0 && bullet_fired) {
    landing_lag_time = get_attack_value(attack,AG_BULLET_LANDING_LAG);
    landing_lag_time *= 1+(0.5*(!has_hit && !has_hit_player));
}
//#endregion

//#region DSpecial Cooldown
//if instance_exists(beacon) move_cooldown[AT_DSPECIAL] = 2;
//#endregion

with hit_fx_obj if player_id == other {
    if hit_fx == other.plasma_hitfx {
        depth = player_id.depth-5;
    }
}


//#region Roke Text Easter Egg
if (t_active && t_target != noone) {
    t_timer++;
    if (!t_stopped) t_shade += t_shade<15;
    else if (t_timer > 165) t_shade -= t_shade>0;
    if (t_timer == 1 && !t_stopped) {
        
        
    }
    
    
    if (t_timer > 2 && !t_stopped && t_shade == 15) {
        if (t_chars < t_length) {
            t_chars += t_speed;
            current_text[t_line] = string_copy(target_text[t_line],0,floor(t_chars));
            if (t_loop == -1 && t_chars > 1) {
                t_loop = sound_play(sound_get("typeytypey"),true);
            } else if (t_chars == t_speed) {
                sound_play(sound_get("bleep"));
            }
        } else {
            t_delay++;
            if (t_delay%30 == 0) {
                sound_play(sound_get("blip"));
            }
            sound_stop(t_loop);
            if (t_delay > 100) {
                
                t_line++;
                t_chars = 0;
                t_delay = 0;
                if (t_line > 2) {
                    t_stopped = true;
                    t_timer = 0;
                    if (target_text[3] != "") rokesha_line = true;
                } else {
                    t_loop = sound_play(sound_get("typeytypey"),true);
                    t_length = string_length(target_text[t_line]);
                }
            }
        }
    }
    if (t_stopped) {
        if (t_timer > 180) {
            t_active = false;
        }
    }
}

if (rokesha_line) {
    r_timer++;
    if (r_timer >= 360) {
        rokesha_line = false;
    }
}
//#endregion

//#region Game Pause
//Check if game is paused
if (!start_down) {
    //game_paused = false;
    pause_draw = 0;
}
//if (game_paused) start_down = false;
//if (start_down) game_paused = true;
//#endregion

if (ds_list_size(particles) > 0) p_process();
if (ds_list_size(roke_dstrong_targets) > 0) {
    if roke_dstrong_grabbing
        grab_process();
    else
        ds_list_clear(roke_dstrong_targets);
}

#define p_process()
//process particles. everything here should be self explanatory.
var i = 0;
repeat (ds_list_size(particles)) {
    var ap = particles[| i];
    if (ap.sprite != -1) {
        ap.alpha += ap.alpha_rate;
        ap.timer++;
        ap.x += ap.hsp;
        ap.y += ap.vsp;
        ap.hsp += ap.hAccel;
        ap.vsp += ap.vAccel;
        if (ap.alpha < 0 || ap.timer > ap.lifetime) {
            ds_list_delete(particles,i);
            continue;
        }
        i++;
    }
}
#define grab_process
var t;
if state == clamp(state, 5, 6)
    for (var i = 0; i < ds_list_size(roke_dstrong_targets); i++) {
        t = roke_dstrong_targets[|i];
        if !instance_exists(t) {
            i--;
            ds_list_remove(roke_dstrong_targets,t);
            continue;
        }
        if !t.hitpause with t {
            state = PS_HITSTUN;
            state_timer = 1;
            hitstun = hitstun_full;
            hsp = 0;
            vsp = 0;
            grav = 0;
            x = lerp(x,other.x+other.xtarget*other.spr_dir,0.11);
            y = lerp(y,other.y+other.ytarget,0.11);
        }
    }
else 
    roke_dstrong_grabbing = false;