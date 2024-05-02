// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch attack {
    case AT_JAB:
    if window == 5 || window == 6 || window == 8 || window == 9 {
        if special_pressed && !hitpause {
            force_cancel = true
        }
    }
    break;
    case AT_UTILT:
    if window == 1 && window_timer == 7 sound_play(asset_get("sfx_swish_weak"))
    break;
    
    case AT_DAIR:
    if (window == 1 && window_timer == window_length) || (window == 2 && window_timer == 1) {
        fall_through = true
    } else {
        fall_through = false
    }
    if state_timer == 1002 {
        window_timer = 7
    }
    if state_timer == 1004 {
        sound_play(sound_get("ss_attack"))
    }
    if window == 1 && window_timer == window_length-2 {
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    if (window == 2 || window == 3) {
        if has_hit && !hitpause {
            window = 4;
            window_timer = 0;
            vsp = -14
            destroy_hitboxes()
        } else if !free && !has_hit {
            window = 5;
            window_timer = 0;
            sound_play(asset_get("sfx_land_heavy"))
            sound_play(asset_get("sfx_kragg_roll_land"))
            destroy_hitboxes()
        }
    }
    if window == 3 && window_timer > 15 {
        can_jump = true
        can_shield = true
    }
    
    if window == 4 && window_timer >= 9 {
        iasa_script()
    }
    break;
    
    case AT_NAIR:
    if window == 1 && window_timer == window_length sound_play(sfx_nair)
    if !free sound_stop(sfx_nair)
    break;
    
    case AT_FAIR:
    if window == 1 && window_timer == window_length-1 sound_play(sfx_fair)
    if !free sound_stop(sfx_fair)
    break;
    
    case AT_USTRONG:
    if window == 3 && window_timer == window_length-2 sound_play(sfx_ustrong)
    break;
    case AT_DSTRONG:
    if window == 2 && window_timer == window_length-3 sound_play(sfx_dstrong, false, noone, 1, 0.9)
    break;
    case AT_FSTRONG:
    if window == 2 && window_timer == window_length-2 sound_play(sfx_fstrong, false, noone, 1, 1)
    if window == 2 && window_timer == window_length-1 sound_play(asset_get("sfx_swipe_medium2"))
    break;
    case AT_NSPECIAL:
    
    if state_timer <= 4 && !breversed {
        if (left_pressed && spr_dir == 1) || (right_down && spr_dir == -1) {
            spr_dir *= -1
            breversed = true
            hsp *= -0.5
        }
    }
    
    //stall
    if window <= 5 {
        vsp = clamp(vsp, -8, 5)
    }
    
    move_cooldown[AT_NSPECIAL] = 0
    
    if !free && window <= 3 && window_timer == window_length spawn_base_dust(x, y, "n_wavedash", spr_dir)
    
    if window == 6 && window_timer == 2 sound_play(asset_get("sfx_frog_fspecial_fire"))
    
    if !free && window < 6 && state_timer mod 12 == 0 spawn_base_dust(x - 25*spr_dir, y, "walk", spr_dir)
    
    if !(window == 2 && window_timer <= 6) && (window >= 2 && window <= 5) {
        shuriken_charge = clamp(window-1, 1, 3);
        if shield_pressed {
            window = 7;
            window_timer = 0;
        } else if !special_down {
            window = 6
            window_timer = 0
            if free vsp = clamp(vsp - 4, -10000, -4)
        }
    }
    if window == 6 && window_timer == 1 {
        sound_stop(sfx_nspec1)
        sound_stop(sfx_nspec2)
        sound_stop(sfx_nspec3)
        if !free spawn_base_dust(x-20*spr_dir, y, "dash_start", spr_dir)
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, shuriken_charge == 1 ? asset_get("sfx_swipe_weak2") : (shuriken_charge == 2 ? sound_get("bar_swing_med1") : sound_get("bar_swing_med2")));
        var shkn = create_hitbox(AT_NSPECIAL, shuriken_charge, x+40*spr_dir, y-25)
            shkn.spr_dir = spr_dir
            shkn.fx_particles = get_hitbox_value(AT_NSPECIAL, shuriken_charge, HG_HIT_PARTICLE_NUM)
        shuriken_charge = 0
    }
    break;
    
    case AT_FSPECIAL:
    can_fast_fall = false
    if counter_hit {
        invincible = true
        invince_time = 2
    }
    if ss_type != 0 {
        var doll_obj = doll_exists() ? hit_doll : doll_id

        if window == 1 && doll_obj != noone && doll_obj != undefined && !((doll_obj.state == PS_DEAD || doll_obj.hitstun > 0) && doll_obj.recent_player != id) {
            if state_timer == 6 {
                doll_obj.state = PS_ATTACK_AIR
                doll_obj.state_timer = 0
                doll_obj.image_index = 1
                spawn_hit_fx(doll_obj.x, doll_obj.y-35, vfx_shine)
            }
        }
    }
    
    
    //spawn smoke vfx
    if window == 1 && (window_timer == 6 || window_timer == 9 || window_timer == 12) {
        for (var i = 0; i < 3; i++) {
            var smokex = x + (random_func(i, 60, true) - 30)
            var smokey = y - 35 + (random_func(i+1, 60, true) - 30)
            var smokeangle = random_func(i+2, 360, true)
            var smokefx = spawn_hit_fx(smokex, smokey, vfx_smoke)
                smokefx.draw_angle = smokeangle
                smokefx.depth = -10
        }
    }
    
    //teleport
    if window == 2 && window_timer = window_length {
        if ss_doll != undefined && !instance_exists(ss_doll) && ss_type == 1 ss_type = 0
        
        if ss_type == 1 {
            ss_x = ss_doll.x
            ss_y = ss_doll.y
        }
        
        x = ss_x
        if ss_type != 0 y = ss_y
        
        if ss_dist != 0 spr_dir = sign(ss_dist)
        
        //fwd and bwd attacks
        var attack_dir = 0; //0 = fwd, 1 = back, 2 = down, 3 = up
        var detect_dist_far = 90
        var detect_dist_mid = 60
        var detect_dist_close = 30
        
        if (spr_dir == -1 && (instance_position(x + detect_dist_far, y-20, pHurtBox) || instance_position(x + detect_dist_mid, y-20, pHurtBox) || instance_position(x + detect_dist_close, y-20, pHurtBox)))
        || (spr_dir == 1 && (instance_position(x - detect_dist_far, y-20, pHurtBox) || instance_position(x - detect_dist_mid, y-20, pHurtBox) || instance_position(x - detect_dist_close, y-20, pHurtBox))) {
            attack_dir = 1
        }
        
        if down_down && !(ss_type != 0 && doll_obj.hit_counter > 0) {
            attack_dir = 2
        } else if up_down && !(ss_type != 0 && doll_obj.hit_counter > 0) {
            attack_dir = 3
        } else if (left_down && spr_dir = 1) || (right_down && spr_dir == -1) {
            attack_dir = 1
        }
        
        if !was_parried {
            if attack_dir == 1 {
                set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 5);
                spr_dir *= -1
                x -= 50*spr_dir
            } else if attack_dir == 2 {
                set_attack(AT_DAIR)
                hit_doll = undefined
                window = 1
                window_timer = 0
                state_timer = 1000
                y -= 40
            } else if attack_dir == 3 {
                set_attack(AT_UTHROW)
                hit_doll = undefined
                hurtboxID.sprite_index = get_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE);
                window = 1
                window_timer = 0
                state_timer = 0
                y += 20
            }
        }
    }
    
    if (window == 3 || window == 5) && window_timer == window_length && !free {
        spawn_base_dust(x, y, "dash_start", spr_dir)
    }
    
    if window == 3 && window_timer == window_length-2 {
        sound_play(asset_get("sfx_swipe_medium2"))
    }
    if window == 5 && window_timer == window_length-2 {
        sound_play(asset_get("sfx_swipe_medium1"))
    }
    
    if window >= 7 can_wall_jump = true
    
    if window >= 7 && !free {
        set_state(was_parried ? PS_PRATLAND : PS_LAND)
    }
    
    if window == 8 && window_timer > 4 && !was_parried {
        if get_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE) != 7 iasa_script()
    }
    break;
    
    case AT_USPECIAL:
    can_move = false
    
    var can_rotate = false;
    if window == 1 && window_timer < window_length { //startup
        can_rotate = true
    }
    
    //arrow direction
    if can_rotate {
        if !joy_pad_idle uspec_dir = round(joy_dir/45)*45
    }
    
    //set hsp and vsp
    var abs_spd = 11;
    if window == 2 {
        if window_timer == window_length {
            draw_jet = true
            uspec_draw_dir = uspec_dir
            uspec_start = [x,y-35,uspec_draw_dir]
            var facing = sign(dcos(uspec_dir))
            if facing != 0 {
                spr_dir = -facing
            }
            set_window_value(AT_USPECIAL, window+1, AG_WINDOW_HSPEED, dcos(uspec_dir)*abs_spd*spr_dir);
            set_window_value(AT_USPECIAL, window+1, AG_WINDOW_VSPEED, -dsin(uspec_dir)*abs_spd);
            
            if uspec_dir == 90 {
                set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
                set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
                set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 3);
            }
        }
    }
    
    if window == 3 {
        if window_timer < 2 {
            uspec_draw_dir = uspec_dir
        }
    }
    
    if (window == 3 && window_timer > 2) || window == 4 {
        can_wall_jump = true
        
        if !free && (window == 4 || (uspec_dir != 0 && uspec_dir != 180)) {
            set_state(PS_LANDING_LAG)
            landing_lag_time = 28
            hsp*=0.5
            move_cooldown[AT_USPECIAL] = 20
        }
    }
    
    if window == 4 {
        uspec_draw_dir = lerp(uspec_draw_dir, 90, 0.2)
        
        if special_pressed {
            ss_start = true
            ss_timer = 90
            ss_count = 0
            if left_down && !right_down spr_dir = -1
            else if !left_down && right_down spr_dir = 1
            else if dcos(uspec_dir) != 0 spr_dir = sign(dcos(uspec_dir))
            ss_dist = 60*spr_dir
            ss_type = 0
            reset_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO);
            used_uspec = true
        }
    }
    break;
    
    case AT_DSPECIAL:
    move_cooldown[AT_DSPECIAL] = 60
    if state_timer == 6 {
        sound_play(asset_get("mfx_star"))
        var fx = spawn_hit_fx(x-50*spr_dir,y-30,301)
            fx.pause = 10
    }
    if state_timer == 2 {
        if doll_id != noone && instance_exists(doll_id) {
            doll_id.state = PS_DEAD
            doll_id.state_timer = 40
        }
    }
    
    
    var spd = 10
    if free spd = 8
    
    if window = 1 && window_timer == window_length {
        if free doll_angle = -90 + spr_dir*45
        else doll_angle = 90 - spr_dir*45
        
        doll_id = instance_create(x+40*spr_dir, y+10, "obj_article1")
        doll_id.hsp = spd*dcos(doll_angle)
        doll_id.vsp = -spd*dsin(doll_angle)
        doll_id.spr_dir = -spr_dir
        doll_id.recent_player = id
        take_damage(player, -1, 4)
        if free vsp -= 10
        
        if left_down && !right_down doll_id.hsp -= 6
        if !left_down && right_down doll_id.hsp += 6
    }
    
    if window == 2 && window_timer > 4 {
        iasa_script()
    }
    break;
    case AT_UTHROW:
    //fspecial upwards
    if window == 3 && window_timer > 8 && !was_parried {
        if get_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE) != 7 iasa_script()
    }
    if window == 1 && window_timer == 4 {
        sound_play(asset_get("sfx_bird_sidespecial_start"))
        sound_play(asset_get("sfx_swipe_medium2"))
    }
    break;
}

if (attack == AT_FSPECIAL || attack == AT_UTHROW || attack == AT_DAIR) && (!free || ss_free_timer <= 6 || has_hit) && !used_uspec {
    set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 0);
    set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
    set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
} else if used_uspec {
    reset_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE);
}

#define doll_exists()
return (hit_doll != undefined && instance_exists(hit_doll))

#define spawn_base_dust(x, y, name, dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;

switch (name) {
    default: 
    case "dash_start": dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;