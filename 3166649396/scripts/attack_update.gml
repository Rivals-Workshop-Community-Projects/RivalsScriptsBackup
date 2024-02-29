// attack_update

#macro DEFAULT      0
#macro MOON         1
#macro FIRE		    2
#macro EARTH        3
#macro ICE          4
#macro WATER        5
#macro LIGHTNING    6
#macro SHADOW       7

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_USPECIAL {
    can_fast_fall = false
    can_move = false
    move_cooldown[AT_USPECIAL] = 10000000
    if window >= 1 {
        can_wall_jump = true
    }
    
    if window <= 2 && loadout[2] == EARTH {
        earth_armour = true
    } else {
        earth_armour = false
        soft_armor = 0
    }
    
    if window > 1 && !hitpause && scythe_head_obj != noone && instance_exists(scythe_head_obj) {
        if point_distance(x, y - 30, scythe_head_obj.x, scythe_head_obj.y) <= 40 {
            scythe_head_obj.switch_stance = true
            sound_play(sound_get("ScytheAttackHit"))
            scythe_cancel = true
            scythe_get_flash = true
            scythe_get_timer = 20
        }
    }
    
    if window == 1 {
    	scythe_cancel = false
        if window_timer == 4 {
            //sound_play(asset_get("sfx_clairen_fspecial_dash"))
            /*
            if loadout[2] == MOON {
                var fx = spawn_hit_fx(x, y - 35, vfx_dash_moon)
                    fx.depth = -5
            }
            */
        }
            
        holo_num = 0
        was_free = free
        angle_index = 0
    }
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("Swing_Startup02"))
        angle_index = round(joy_dir/45)
        
        if false && scythe_head_obj != noone && instance_exists(scythe_head_obj) {
            uspec_angle = point_direction(x, y-30, scythe_head_obj.x, scythe_head_obj.y)
            angle_index = uspec_angle/45
            var spd = 18
            hsp = spd*dcos(uspec_angle)
            vsp = -spd*dsin(uspec_angle)
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 20);
            sound_play(asset_get("sfx_ori_bash_launch"))
        } else {
            if !free {
                if angle_index == 7 {
                    angle_index = 0
                } else if angle_index == 5 {
                    angle_index = 4
                } else if angle_index == 6 {
                    angle_index = spr_dir == 1 ? 0 : 4
                }
            }
            uspec_angle = angle_index*45
            var spd = 18
            hsp = spd*dcos(uspec_angle)
            vsp = -spd*dsin(uspec_angle)
        }
        
        if left_down && spr_dir == 1 || right_down && spr_dir == -1 {
            spr_dir *= -1
        }
        
        if !free {
            spawn_base_dust(x, y, "dash_start", spr_dir)
        }
        
        switch loadout[2] {
            case SHADOW:
            var fx = spawn_hit_fx(x, y - 30, vfx_dash_shadow)
                fx.draw_angle = uspec_angle
                fx.spr_dir = 1
            uspec_shadow_timer = 0
            uspec_shadow_angle = uspec_angle
            uspec_shadow_spawn = [x, y - 30]
            uspec_shadow_spawn_2 = [x + 50*dcos(uspec_angle), y - 30 - 50*dsin(uspec_angle)]
            sound_play(asset_get("sfx_boss_shine"))
            sound_play(asset_get("sfx_abyss_explosion_start"))
            break;
            
            case LIGHTNING:
            var fx = spawn_hit_fx(x, y - 30, vfx_dash_lightning_initial)
                fx.depth = -5
            sound_play(sound_get("HareDash"))
            create_hitbox(AT_USPECIAL, 2, x, y - 30)
            break;
            
            case MOON:
            with hit_fx_obj if sprite_index == sprite_get("dash_moon_vfx") && player_id == other.id {
                draw_angle = uspec_angle + 180*(spr_dir == -1)
            }
            sound_play(sound_get("DogDashSlashesSound"))
            
            var wolf_hbox_dist = 20
            set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, spr_dir*wolf_hbox_dist*dcos(uspec_angle))
            set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, spr_dir*wolf_hbox_dist*dcos(uspec_angle))
            set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -35 - wolf_hbox_dist*dsin(uspec_angle))
            set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -35 - wolf_hbox_dist*dsin(uspec_angle))
            
            create_hitbox(AT_USPECIAL, 3, x, y)
            break;
            
            case EARTH:
            sound_play(sound_get("StagDash"))
            var stag_hbox_dist = 20
            set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, spr_dir*stag_hbox_dist*dcos(uspec_angle))
            set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -35 - stag_hbox_dist*dsin(uspec_angle))
            create_hitbox(AT_USPECIAL, 5, x, y)
            break;
            
            case FIRE:
            var fx = spawn_hit_fx(x, y - 35, vfx_dash_fire)
                fx.draw_angle = uspec_angle + 180*(spr_dir == -1)
            sound_play(sound_get("BirdDashSound"))
            

            var hbox_dist = 0
            var fire_hbox = create_hitbox(AT_USPECIAL, 6, x + floor(hbox_dist*dcos(uspec_angle)), floor(y - 25 - hbox_dist*dsin(uspec_angle)))
                fire_hbox.vsp = -18*dsin(uspec_angle)
                fire_hbox.hsp = 18*dcos(uspec_angle)
            break;
            
            case ICE:
            
            break;
            
            case WATER:
            var fx = spawn_hit_fx(x, y - 35, vfx_dash_water)
                fx.depth = -5
            sound_play(asset_get("sfx_waterhit_heavy2"), false, noone, 1, 0.7)
            create_hitbox(AT_USPECIAL, 8, x, y - 35)
            break;
        }
    }
    
    if window == 2 {
    	/*
        if !hitpause && scythe_head_obj != noone && instance_exists(scythe_head_obj) {
            x = lerp(x, scythe_head_obj.x, 0.07)
            y = lerp(y, scythe_head_obj.y, 0.07)
            if point_distance(x, y - 30, scythe_head_obj.x, scythe_head_obj.y) <= 50 || window_timer == window_length {
                scythe_head_obj.switch_stance = true
                sound_play(sound_get("ScytheAttackHit"))
            }
        }
        */
        
        if window_timer >= 10 && ((switched_stances && window_timer < window_length) || hsp == 0 && (instance_position(x + 30, y, asset_get("par_block")) || instance_position(x - 30, y, asset_get("par_block")))) {
            window_timer = window_length
        }
        if (was_free || angle_index >= 5) && !free {
            set_state(proj_parried ? PS_PRATLAND : PS_LANDING_LAG)
            sound_stop(sound_get("BearDashSound"))
        }
        hsp *= 0.95
        vsp *= 0.95
        
        if loadout[2] != LIGHTNING && !hitpause {
            if window_timer mod 2 == 1 {
                var col = merge_color(holo_col_1, holo_col_2, holo_num/(0.5*(get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH))))
                array_push(uspec_holograms, [x, y, 16, sprite_index, image_index, col])
                holo_num++
            }
        }
        
        //vfx
        switch loadout[2] {
            
            case LIGHTNING:
            if window_timer == window_length && !hitpause {
                var fx = spawn_hit_fx(x, y - 30, vfx_dash_lightning)
                    fx.depth = -5
                    
                create_hitbox(AT_USPECIAL, 2, x, y - 30)
            }
            break;
            
            case MOON:
            if window_timer == window_length - 3 && !hitpause {
                create_hitbox(AT_USPECIAL, 4, round(x), round(y))
            }
            break;
            
            case ICE:
            if window_timer == 2 && !hitpause {
                sound_play(sound_get("BearDashSound"))
            }
            if window_timer == window_length && !hitpause {
                spawn_hit_fx(x, y - 35, vfx_dash_ice)
                uspec_ice_count = 4
                uspec_ice_timer = 0
                uspec_ice_spawn = [round(x), round(y - 35)]
            }
            break;
        }
        
        
        //hitbox
        /*
        if loadout[2] == FIRE {
            if window_timer == window_length - 4 && !hitpause {
                var hbox_dist = 0
                var fire_hbox = create_hitbox(AT_USPECIAL, 6, x + floor(hbox_dist*dcos(uspec_angle)), floor(y - 25 - hbox_dist*dsin(uspec_angle)))
                    fire_hbox.vsp = -28*dsin(uspec_angle)
                    fire_hbox.hsp = 28*dcos(uspec_angle)
            }
        }
        */
    }
    
    if window == 3 {
        can_move = true
        vsp = clamp(vsp, -4, 4)
        hsp = clamp(hsp, -4, 4)
        
        if window_timer == window_length {
            if /*was_free &&*/ free && !switched_stances {
                set_state(PS_PRATFALL)
            }
        }
    }
    
    if proj_parried {
    	was_parried = true
    }
}

if attack == AT_NSPECIAL {
    switch loadout[0] {
        case DEFAULT:
        move_cooldown[AT_NSPECIAL] = 40
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            spawn_hit_fx(x, y, vfx_nspecial)
            sound_play(sound_get("DefaultBolt"))
            create_hitbox(AT_NSPECIAL, 1, x + 30*spr_dir, y - 42)
        }
        break;
        
        case MOON:
        move_cooldown[AT_NSPECIAL] = 60
        if window == 1 {
            can_move = false
            vsp = clamp(vsp, -6, 2)
            hsp *= 0.8
        } else if window == 2 {
            can_move = false
            vsp = 0
        } else if window == 3 {
            vsp *= 0.95
        }
        
        if window == 1 && window_timer == window_length && !hitpause {
            spawn_hit_fx(x, y - 25, vfx_bolt_moon)
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            sound_play(sound_get("DogBoltSound"))
            create_hitbox(AT_NSPECIAL, 2, x, y - 25)
        }
        
        if window == 3 && window_timer == window_length && proj_parried {
        	was_parried = true
        }
        
        break;
        
        case FIRE:
        move_cooldown[AT_NSPECIAL] = 60
        if window == 1 {
            can_move = false
            vsp = clamp(vsp, -6, 2)
            hsp *= 0.8
        } else if window == 2 {
            can_move = false
            vsp = 0
        } else if window == 3 {
            vsp *= 0.95
        }
        
        if window == 1 && window_timer == window_length && !hitpause {
            spawn_hit_fx(x, y - 45, vfx_bolt_fire)
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            sound_play(sound_get("BirdBoltSound"))
            create_hitbox(AT_NSPECIAL, 3, x + 60*spr_dir, y - 35)
        }
        if window == 2 {
            if !hitpause && window_timer == 6 {
                create_hitbox(AT_NSPECIAL, 3, x + 110*spr_dir, y - 35)
            }
            if !hitpause && window_timer == 12 {
                create_hitbox(AT_NSPECIAL, 4, x + 180*spr_dir, y - 45)
            }
        }
        
        if window == 3 && window_timer == window_length && proj_parried {
        	was_parried = true
        }
        
        break;
        
        case EARTH:
        move_cooldown[AT_NSPECIAL] = 40
        if window <= 2 {
            earth_armour = true
        } else {
            earth_armour = false
            soft_armor = 0
        }
        if window == 1 && window_timer == window_length - 6 && !hitpause {
            sound_play(sound_get("StagBolt_Startup"))
        }
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            //spawn_hit_fx(x, y, vfx_nspecial)
            create_hitbox(AT_NSPECIAL, 5, x + 30*spr_dir, y - 42)
        }
        break;
        
        case ICE:
        move_cooldown[AT_NSPECIAL] = 60
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            //spawn_hit_fx(x, y, vfx_nspecial)
            sound_play(asset_get("sfx_ice_end"))
            create_hitbox(AT_NSPECIAL, 6, x + 30*spr_dir, y - 42)
        }
        break;
        
        case WATER:
        move_cooldown[AT_NSPECIAL] = 60
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            spawn_hit_fx(x, y, vfx_nspecial)
            sound_play(asset_get("sfx_waterwarp_start"))
            var hbox1 = create_hitbox(AT_NSPECIAL, 8, x + 30*spr_dir, y - 42)
            var hbox2 = create_hitbox(AT_NSPECIAL, 8, x + 30*spr_dir, y - 42)
            var hbox3 = create_hitbox(AT_NSPECIAL, 8, x + 30*spr_dir, y - 42)
                
                hbox1.hsp = 7.5*spr_dir
                hbox1.vsp = -1
                
                hbox2.hsp = 8*spr_dir
                hbox2.vsp = -2.5
                
                hbox3.hsp = 8.5*spr_dir
                hbox3.vsp = -4
        }
        break;
        
        case LIGHTNING:
        move_cooldown[AT_NSPECIAL] = 40
         if window == 1 {
            can_move = false
            vsp = clamp(vsp, -6, 2)
            hsp *= 0.8
        } else if window == 2 {
            can_move = false
            vsp = 0
        } else if window == 3 {
            vsp *= 0.95
        }
        
        if window == 1 && window_timer == window_length - 8 && !hitpause {
            sound_play(sound_get("HareBoltStartup"))
        }
        
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            
            //detect wall
            var max_dist = 200
            var increment = 5
            lightning_wall_distance = 200
            for (var i = 0; i < max_dist/increment; i++) {
                var x_offset = i*increment
                if position_meeting(x + x_offset*spr_dir, y - 45, asset_get("par_block"))
                || (position_meeting(x + x_offset*spr_dir, y - 45, oPlayer) && instance_position(x + x_offset*spr_dir, y - 45, oPlayer).id != id) 
                {
                    lightning_wall_distance = x_offset
                    break;
                }
            }
            spawn_hit_fx(x + 25*spr_dir, y - 45, HFX_ORI_ORANGE_SMALL)
            spawn_hit_fx(x + lightning_wall_distance*spr_dir, y - 45, vfx_bolt_lightning)
            
            create_hitbox(AT_NSPECIAL, 9, x + lightning_wall_distance*spr_dir, y - 45)
        }
        break;
        
        case SHADOW:
        move_cooldown[AT_NSPECIAL] = 60
        if window == 1 && window_timer == window_length && !hitpause {
            if !free {
                spawn_base_dust(x, y, "dash", spr_dir)
            }
            //spawn_hit_fx(x, y, vfx_nspecial)
            //sound_play(asset_get("sfx_waterwarp_start"))
            var num_stars = 5
            for (var i = 0; i < num_stars; i++) {
                var star_angle = 5 - i*10
                var star_spd = 15
                var hbox1 = create_hitbox(AT_NSPECIAL, 10, x + 30*spr_dir, y - 42)
                    hbox1.hsp = spr_dir*star_spd*dcos(star_angle)
                    hbox1.vsp = -star_spd*dsin(star_angle)
            }
                
            
        }
        break;
    }
    
    if queue_loadout[0] != undefined {
        move_cooldown[AT_NSPECIAL] = 2
    }
}

if attack == AT_FSPECIAL {
    can_fast_fall = false
    
    if window <= 3 && loadout[1] == EARTH {
        earth_armour = true
    } else {
        earth_armour = false
        soft_armor = 0
    }
    
    if window == 1 {
    	rush_x = x
        rush_y = y
        if window_timer == 2 && !hitpause {
            sound_play(asset_get("sfx_forsburn_cape_swipe"))
        }
        if window_timer == window_length && !hitpause {
            sound_play(sound_get("BladesAttackUpAir"))
            create_hitbox(AT_FSPECIAL, 1, x + 30*spr_dir, y - 42)
        }
    }
    
    if window == 3 {
        if (fspec_wall_rush || fspec_scythe_rush || fspec_has_hit) {
            if attack_pressed || up_strong_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || special_pressed || fspec_wall_rush || fspec_scythe_rush {
                fspec_goto_rush = true
            }
            vsp = clamp(vsp, -3, 3)
            hsp = clamp(hsp, -3, 3)
        }
        
    }
    
    if window == 4 {
        if fspec_goto_rush {
            window = 6
            window_timer = 0
            sound_play(asset_get("sfx_swipe_medium1"))
            if !free {
                spawn_base_dust(x, y, "dash_start", spr_dir)
            }
        } else {
            with oPlayer if id != other.id && ("omen_fspec_owner" in self) && omen_fspec_owner == other.id {
                x = lerp(x, other.x + 30*other.spr_dir, 0.15)
                y = lerp(y, other.y, 0.1)
            }
        }
    }
    
    if window == 5 {
        if fspec_has_hit move_cooldown[AT_FSPECIAL] = 20
        with oPlayer if id != other.id && ("omen_fspec_owner" in self) && omen_fspec_owner == other.id {
            hitstop = 0
        }
        if window_timer == 1 && !fspec_has_hit {
            sound_play(asset_get("sfx_ell_utilt_retract"))
        }
        
        if fspec_has_hit && window_timer >= 6 {
            iasa_script()
        }
    }
    
    if window == 6 {
        can_move = false
        var target_x = 0
        var target_y = 0
        if fspec_has_hit {
            rush_x = fspec_hit_player.x - 30*spr_dir
            rush_y = fspec_hit_player.y - 30
            target_x = fspec_hit_player.x - 30*spr_dir
            target_y = fspec_hit_player.y - 30
        } else if fspec_wall_rush {
            rush_x = fspec_wall_rush_x
            rush_y = fspec_wall_rush_y
            target_x = fspec_wall_rush_x - 20*spr_dir
            target_y = fspec_wall_rush_y
        } else if fspec_scythe_rush {
        	rush_x = fspec_scythe_rush_x
            rush_y = fspec_scythe_rush_y
            target_x = fspec_scythe_rush_x
            target_y = fspec_scythe_rush_y
        }
        prev_x = x
        prev_y = y
        x = lerp(x, rush_x, 0.2)
        y = lerp(y, rush_y, 0.3)
        if window_timer > 12 && (point_distance(x, y, target_x, target_y) < 40 || window_timer > 30) {
            window = 7
            window_timer = 0
            sound_play(asset_get("sfx_swipe_medium2"))
        }
    }
    
    if window >= 6 && fspec_scythe_rush && !fspec_has_hit && !scythe_cancel && scythe_head_obj != noone && instance_exists(scythe_head_obj) && point_distance(x, y - 30, scythe_head_obj.x, scythe_head_obj.y) <= 70 {
        scythe_head_obj.switch_stance = true
        sound_play(sound_get("ScytheAttackHit"))
        scythe_cancel = true
        scythe_get_flash = true
        scythe_get_timer = 20
        hsp = x - prev_x
        vsp = y - prev_y
        move_cooldown[AT_FSPECIAL] = 30
    }
    
    
    if window >= 6 {
        can_wall_jump = true
    }
    
    if window >= 7 {
        can_move = true
    }
    
    if window == 7 {
        move_cooldown[AT_FSPECIAL] = 30
        if (fspec_wall_rush || fspec_scythe_rush) && !fspec_hit_player && window_timer == 1 {
            vsp = -6
            //hsp -= 2*spr_dir
        }
    }
}

if attack == AT_NAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("BladesAttackNeutralAir"))
    }
}

if attack == AT_FAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("Attack_Gartish01"))
    }
}

if attack == AT_DTILT {
    if window == 1 && window_timer == 1 {
        spawn_base_dust(x, y, "dash", spr_dir)
    }
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x + 60*spr_dir, y, "wavedash", -spr_dir)
    }
    
    if window == 3 && ((window_timer >= 4) || has_hit) && window_timer < window_length - 6 && attack_pressed && (down_down || joy_pad_idle) {
        window = 4
        window_timer = 0
    }
    
    if window == 4 {
        if window_timer == 2 {
            sound_play(sound_get("BowStringSound"))
        }
        if window_timer == window_length && !hitpause {
            sound_stop(sound_get("BowStringSound"))
            sound_play(sound_get("BowShootSound"))
        }
    }
}

if attack == AT_DATTACK {
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "wavedash", spr_dir)
    }
    if window == 3 && !free {
        window++
        window_timer = 0
        spawn_base_dust(x, y, "dash", spr_dir)
        sound_play(asset_get("sfx_land"))
    }
    
    if (window == 2 || window == 3) && has_hit && !hitpause {
        window = 5
        window_timer = 0
        hsp = -1*spr_dir
        vsp = -5
        destroy_hitboxes()
    }
    
    if window == 5 {
        if window_timer == 6 {
            sound_play(sound_get("BowStringSound"))
        }
        if window_timer == window_length && !hitpause {
            sound_stop(sound_get("BowStringSound"))
            sound_play(sound_get("BowShootSound"))
            var vfx1 = spawn_hit_fx(x, y - 10, vfx_dattack)
            var vfx2 = spawn_hit_fx(x, y - 20, vfx_dattack_shoot)
            vfx1.depth = -10
            vfx2.depth = -10
        }
    }
    
    if window == 3 && window_timer >= 20 {
        iasa_script()
    }
    
    if window == 6 && !free {
        set_state(PS_LAND)
    }
}

if attack == AT_FSTRONG {
    if window <= 2 && state_timer mod 12 == 6 {
        spawn_base_dust(x - 20*spr_dir, y, "dash", spr_dir)
    }
    if window == 2 && window_timer == 1 && !hitpause {
        spawn_base_dust(x, y, "dash_start", spr_dir)
    }
    if window == 2 && window_timer == window_length && !hitpause {
        sound_play(sound_get("Swing_Startup01"))
    }
}

if attack == AT_USTRONG {
    if window <= 2 && state_timer mod 12 == 6 {
        spawn_base_dust(x - 10*spr_dir, y, "dash", spr_dir)
        spawn_base_dust(x + 10*spr_dir, y, "dash", -spr_dir)
    }
    if window == 2 && window_timer == 1 && !hitpause {
        spawn_base_dust(x, y, "dash_start", spr_dir)
        spawn_base_dust(x, y, "dash_start", -spr_dir)
    }
    if window == 2 && window_timer == window_length - 1 && !hitpause {
        sound_play(asset_get("sfx_ori_uptilt_single"))
        sound_play(sound_get("BowHitSound"), false, noone, 0.5)
    }
}

if attack == AT_UTILT {
    hsp *= 0.9
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("Attack_Gartish01"))
        spawn_base_dust(x, y, "jump", spr_dir)
    }
    if window <= 2 {
        can_move = false
    }
    if window == 3 && !free {
        set_state(was_parried ? PS_PRATLAND : has_hit ? PS_LAND : PS_LANDING_LAG)
    }
}

if attack == AT_FTILT {
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "dash_start", spr_dir)
    }
    if window == 2 && window_timer == window_length && !hitpause {
        sound_play(sound_get("Attack_Gartish01"))
    }
}

if attack == AT_BAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_spin"))
    }
}

if attack == AT_TAUNT {
    if state_timer == 1 && practice_mode {
        if down_down {
            update_loadout = true
            debug_reset_loadout = true
            loadout = [DEFAULT,DEFAULT,DEFAULT,DEFAULT]
            prev_loadout = [DEFAULT,DEFAULT,DEFAULT,DEFAULT]
            queue_loadout = [undefined, undefined]
            loadout_apply_timer = 0
            loadout_cols = [DEFAULT,DEFAULT,DEFAULT,DEFAULT]
            stored_timer = 0
            stored_spirit = DEFAULT
            spirit_col = c_white
        } else {
            if left_down {
                debug_orb_element--
            }
            if right_down {
                debug_orb_element++
            }
            if debug_orb_element < 1 debug_orb_element = 7
            if debug_orb_element > 7 debug_orb_element = 1
            
            if left_down || right_down spawn_orb(debug_orb_element)
        }
    }
}

//taunt debug spawn orb
/*
if attack == AT_TAUNT {
    if state_timer == 1 {
        loadout[0] = DEFAULT
        update_loadout = true
        var orb = instance_create(x + 100*spr_dir, y - 60, "obj_article1")
            orb.element = random_func(0, 7, true) + 1
    }
}
*/
/*
if attack == AT_TAUNT {
    if state_timer == 1 {
        loadout[2] = (loadout[2] + 1) mod 8
        update_loadout = true
    }
}
*/

if attack == AT_UAIR {
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(sound_get("BladesAttackUpAir"))
    }
}

if attack == AT_DSPECIAL || attack == AT_DSPECIAL_2 {
    if window <= 1 && loadout[3] == EARTH {
        earth_armour = true
    } else {
        earth_armour = false
        soft_armor = 0
    }
    if window <= 5 {
        can_move = false
        hsp *= 0.99
        vsp = clamp(vsp, -10000, 6)
    }
    if window == 1 && window_timer == 1 {
        dspec_perfect = false
    }
    if window == 2 && window_timer == 1 {
        sound_stop(sound_get("GartishLauncher_Charging"))
    }
    if ((window == 1 && window_timer >= 20) || window == 2 || window == 3) && !special_down {
        window = 4
        window_timer = 0
        sound_stop(sound_get("GartishLauncher_Charging"))
    }
    
    if window == 2 {
        dspec_perfect = true
    } else if window == 3 {
        dspec_perfect = true
    }
    
    if window == 4 && window_timer == window_length && dspec_perfect && !hitpause {
        sound_play(sound_get("GartishLauncher_PerfectHit"))
        if attack == AT_DSPECIAL && !switched_stances {
            dspec_stance = !dspec_stance
            attack = AT_DSPECIAL_2
            switched_stances = true
            var _angle = 0
            if up_down && !down_down {
            	_angle = 30
            } else if down_down && !up_down && free {
            	_angle = -30
            }
            var scythe = instance_create(x + 80*spr_dir, y - 40, "obj_article2")
                scythe.spr_dir = spr_dir
                scythe.element = loadout[3]
                scythe.launch_angle = _angle
        }
    }
    
    if window == 6 && window_timer == window_length && proj_parried {
    	was_parried = true
    }
}

if scythe_cancel {
	move_cooldown[AT_USPECIAL] = 0
	can_jump = true
	can_attack = true
	can_strong = true
	can_special = true
	can_shield = true
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
if newdust != noone {
    newdust.dust_fx = dfx; //set the fx id
    if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
    newdust.dust_color = dust_color; //set the dust color
    if dir != 0 newdust.spr_dir = dir; //set the spr_dir
}
return newdust;

#define spawn_orb(e)
//loadout[0] = DEFAULT
//update_loadout = true
var rand_x = x
var rand_y = y - 120
//print(rand_x - x)
while place_meeting(rand_x, rand_y + 16, asset_get("par_block")) {
	rand_y -= 32
}
while room_width - rand_x < 200 {
	rand_x -= 32
}

while rand_x < 200 {
	rand_x += 32
}
var orb = instance_create(rand_x, rand_y, "obj_article1")
    orb.element = e
    //orb.element = LIGHTNING

essence_col = get_spirit_col(orb.element)
return;

#define get_spirit_col(s)
var col = c_white
switch s {
	case DEFAULT: col = c_white break;
	case MOON: col = $ff5eff break;
	case FIRE: col = $0000ff break;
	case EARTH: col = $00ff00 break;
	case ICE: col = $ffff00 break;
	case WATER: col = $ff5f00 break;
	case LIGHTNING: col = $00ffff break;
	case SHADOW: col = $c50076 break;
}
return col;