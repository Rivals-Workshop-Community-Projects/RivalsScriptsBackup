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
    if window == 7 && window_timer == window_length - 2 && !hitpause {
        sound_play(asset_get("sfx_ori_uptilt_single"))
    }
    break;
    case AT_UTILT:
    if window == 1 && window_timer == 7 sound_play(sound_get("bar_swing_med1"))
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
        sound_play(asset_get("sfx_clairen_fspecial_dash"))
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
    if window == 1 && window_timer == window_length - 4 sound_play(sfx_nair)
    //if window == 1 && window_timer == window_length sound_play(asset_get("sfx_ori_uptilt_single"))
    if !free sound_stop(sfx_nair)
    break;
    
    case AT_FAIR:
    if window == 1 && window_timer == window_length-2 sound_play(sfx_fair)
    if !free sound_stop(sfx_fair)
    break;
    
    case AT_USTRONG:
    if window == 3 && window_timer == window_length-4 sound_play(sfx_ustrong)
    break;
    case AT_DSTRONG:
    if window == 2 && window_timer == window_length-3 sound_play(sfx_dstrong, false, noone, 1, 0.9)
    if window == 2 && window_timer == window_length-3 sound_play(asset_get("sfx_ori_spirit_flame_1"))
    break;
    case AT_FSTRONG:
    //if window == 2 && window_timer == window_length sound_play(sfx_fstrong, false, noone, 1, 1)
    if window == 2 && window_timer == window_length-3 sound_play(asset_get("sfx_ori_spirit_flame_1"))
    break;
    case AT_NSPECIAL:
    
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sfx_nspec_charge)
    }
    
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
    
    move_cooldown[AT_NSPECIAL] = 60
    
    if !free && window <= 3 && window_timer == window_length spawn_base_dust(x, y, "n_wavedash", spr_dir)
    
    if window == 6 && window_timer == 2 sound_play(asset_get("sfx_frog_fspecial_fire"))
    
    if !free && window < 6 && state_timer mod 12 == 0 spawn_base_dust(x - 25*spr_dir, y, "walk", spr_dir)
    
    //nebulae suck
    if window == 4 || window == 5 || window == 8 {
        nspec_sucking = true
        with obj_article1 if "is_nebula" in self && is_nebula {
            for (var i = 0; i < cloud_num; i++) {
                var cloud = cloud_arr[i]
                if cloud.state != 0 && cloud.state != 2 && point_distance(cloud.x, cloud.y, other.x - 40*other.spr_dir, other.y - 20) <= 150 {
                    cloud.state = 2
                    cloud.suck_id = other.id
                    cloud.timer = 0
                }
            }
        }
    }
    
    if !(window == 2 && window_timer <= 6) && ((window >= 2 && window <= 5) || window == 8) {
        if window == 5 && !nspec_empowered && nspec_cloud_count >= 4 {
            window = 8
            window_timer = 0
            nspec_empowered = true
            set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 24);
        }
        
        if window != 8 shuriken_charge = clamp(window-1, 1, 3);
        if shield_pressed {
            window = 7;
            window_timer = 0;
            nspec_empowered = false
            nspec_sucking = false
            sound_stop(sfx_nspec_charge)
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
        //sound_stop(sfx_nspec4)
        sound_stop(sfx_nspec_charge)
        nspec_sucking = false
        if !free spawn_base_dust(x-20*spr_dir, y, "dash_start", spr_dir)
        set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, shuriken_charge == 1 ? asset_get("sfx_swipe_weak2") : (shuriken_charge == 2 ? sound_get("bar_swing_med1") : asset_get("sfx_ori_bash_launch")));
        set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, nspec_empowered ? sprite_get("nspec_proj_empowered") : sprite_get("nspec_proj_large"));
        
        if nspec_empowered {
            set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_abyss_hazard_hit"));
            set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, hfx_ori_orange_small);
            set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, hfx_wra_wind_huge);
            set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
            set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 8);
            set_hitbox_value(AT_NSPECIAL, 5, HG_EXTRA_HITPAUSE, 7);
            set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.9);
            set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 55);
        }
        var shkn = create_hitbox(AT_NSPECIAL, shuriken_charge, x+40*spr_dir, y-25)
            shkn.spr_dir = spr_dir
            shkn.fx_particles = get_hitbox_value(AT_NSPECIAL, shuriken_charge, HG_HIT_PARTICLE_NUM)
            shkn.nspec_empowered = nspec_empowered
        shuriken_charge = 0
    }
    break;
    
    case AT_FSPECIAL:
    can_fast_fall = false
    
    //spawn smoke vfx
    /*
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
    */
    
    if window == 1 && window_timer == 6 {
        spawn_nebula(x, y - 35, round(abs(ss_dist/15)), 0, 0, 0.7 + abs(ss_dist/200), 50, 60, noone)
    }
    
    if window == 1 && window_timer >= 6 {
        force_depth = true
        depth = 10
    }
    
    //teleport
    if window == 2 && window_timer = window_length {
        
        x = ss_x
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
        
        if down_down {
            attack_dir = 2
        } else if up_down {
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
                window = 1
                window_timer = 0
                state_timer = 1000
                y -= 40
            } else if attack_dir == 3 {
                set_attack(AT_UTHROW)
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
    
    if window == 3 && window_timer == window_length-3 {
        sound_play(sound_get("bar_swing_heavy"))
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
        holo_num = 0
        uspec_neb = noone
    }
    
    //arrow direction
    if can_rotate {
        if !joy_pad_idle uspec_dir = round(joy_dir/45)*45
    }
    
    //set hsp and vsp
    var abs_spd = 11;
    if window == 2 {
        if window_timer == window_length {
            //draw_jet = true
            uspec_draw_dir = uspec_dir
            uspec_start = [x,y-35,uspec_draw_dir]
            var facing = sign(dcos(uspec_dir))
            if facing != 0 {
                //spr_dir = -facing
            }
            var h_dir = dcos(uspec_dir)*spr_dir
            var v_dir = dsin(uspec_dir)
            set_window_value(AT_USPECIAL, window+1, AG_WINDOW_HSPEED, h_dir*abs_spd);
            set_window_value(AT_USPECIAL, window+1, AG_WINDOW_VSPEED, -abs_spd*v_dir);
            
            var hbox_x = 30*h_dir
            var hbox_y = -35 - 30*v_dir
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, hbox_x);
            set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, hbox_x);
            set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, hbox_x);
            set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, hbox_x);
            set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, hbox_x);
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, hbox_y);
            set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, hbox_y);
            set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, hbox_y);
            set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, hbox_y);
            set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, hbox_y);
            /*
            if uspec_dir == 90 {
                set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
                set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 5);
            }
            */
            
        }
    }
    
    if window == 3 {
        if window_timer < 2 {
            uspec_draw_dir = uspec_dir
        }
        
        if window_timer mod 6 == 1 && !hitpause {
            var col = merge_color(holo_col_1, holo_col_2, holo_num/(0.2*(get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH))))
            array_push(uspec_holograms, [x, y-35, 16, sprite_get("uspecial_rotate"), image_index, col, uspec_draw_dir - 90])
            holo_num++
        }
        
        if window_timer mod 4 == 1 && !hitpause {
            uspec_neb = spawn_nebula(x, y - 40, 2, -2*dcos(uspec_dir), 2*dsin(uspec_dir), 0.8, 4, 4, uspec_neb)
        }
    }
    
    if (window == 3 && window_timer > 2) || window == 4 {
        can_wall_jump = true
        
        if !free && (window == 4 || (uspec_dir != 0 && uspec_dir != 180)) {
            set_state(was_parried ? PS_PRATLAND : PS_LANDING_LAG)
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
    move_cooldown[AT_DSPECIAL] = 30
    if window == 1 && window_timer == window_length {
        dspec_coords = [x,y]
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
    
    case AT_TAUNT:
    if window == 2 && window_timer >= 16 && !taunt_down {
        window = 3
        window_timer = 0
    }
    break;
    
    case AT_TAUNT_2:
    if window == 1 && window_timer == 10 sound_play(asset_get("sfx_clairen_hair"))
    if window == 1 && window_timer == 20 sound_play(asset_get("mfx_star"))
    if window == 3 && window_timer == 6 sound_play(asset_get("sfx_clairen_hair"))
    if window == 3 && window_timer == 6 sound_play(asset_get("sfx_ell_utilt_fire"))
    if window == 2 {
        if state_timer >= 70 && !taunt_down && !down_down {
            window = 3
            window_timer = 0
        } else if window_timer == window_length {
            window_timer = 0
        }
    }
    break;
}


if (attack == AT_FSPECIAL || attack == AT_UTHROW || attack == AT_DAIR) && (!free || ss_free_timer <= 6 || has_hit) && !used_uspec {
    //set_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE, 0);
    //set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 0);
    //set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 0);
} else if used_uspec {
    reset_window_value(AT_UTHROW, 3, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE);
    reset_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE);
}

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

#define get_oldest_article()
var age = 10000000000000000
with obj_article1 if player_id == other.id {
    if id < age {
        age = id
    }
}
return age;

#define spawn_nebula(_x, _y, _n, hsp_mod, vsp_mod, spd_mod, spawn_w, spawn_h, update_id)
if update_id == noone {
    with obj_article1 if player_id == other.id {
        cur_age++
    }
    var neb = instance_create(_x, _y, "obj_article1")
        neb.cloud_num = _n
        neb.hsp_mod = hsp_mod
        neb.vsp_mod = vsp_mod
        neb.spd_mod = spd_mod
        neb.spawn_w = spawn_w
        neb.spawn_h = spawn_h
} else if instance_exists(update_id) {
    var neb = update_id
        neb.update_data = {
            x: _x,
            y: _y,
            n: _n,
            hsp: hsp_mod,
            vsp: vsp_mod,
            spd: spd_mod,
            w: spawn_w,
            h: spawn_h
        }
}


return neb.id;