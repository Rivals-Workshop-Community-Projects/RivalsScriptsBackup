// attack_update

var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH)

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if attack == AT_DATTACK {
    //polevault frame stuff
    if window == 1 && window_timer == window_length {
        x += spr_dir*10
    } else if window == 2 && (window_timer == window_length/2 || window_timer == window_length) {
        x += spr_dir*24
    }
    
    if window != 1 off_edge = true;
    
    //grounded endlag
    if window == 4 || window == 3 {
        if !free && was_parried set_state(PS_PRATLAND)
        else if !free set_state(PS_LANDING_LAG)
    }
}

if attack == AT_UAIR {
    if window == 1 && window_timer == 6 {
        //sound_play(asset_get("sfx_ice_shieldup"))
    }
}

if attack == AT_USTRONG {
    if window >= 2 height_timer++;
    else height_timer = 0;
}

if attack == AT_NSPECIAL {
    //dust vfx when grounded
    if !free {
        if window == 2 {
            if state_timer mod 15 == 0 {
                var xmod = random_func(0, 10, true) - 5;
                spawn_base_dust(x + xmod, y, "dash", spr_dir);
            }
            if state_timer mod 11 == 0 {
                var xmod = random_func(1, 10, true) - 5;
                spawn_base_dust(x + xmod, y, "walk", spr_dir);
            }
        }
        if window == 4 && window_timer == 1 {
            spawn_base_dust(x, y, "dash_start", spr_dir);
        }
    }
    
    if window == 3 && window_timer == 1 {
        meter_prev = meter_cur;
        meter_cur -= gun_value;
        meter_flash_timer = meter_flash_val;
        meter_flash_timer = 15;
    }
    
    if window == 2 {
        //can_shield = true;
        if special_down strong_down = true;
        
        if window_timer > 4 && meter_cur <= gun_value {
            strong_down = false;
        }
        
        if strong_charge != 0 && strong_charge mod 3 == 0 {
            meter_cur -= nspec_value;
        }
        
        set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 15 + floor(strong_charge/4));
        set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8 + floor(strong_charge/12));
        set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3 + floor(strong_charge/8));
        /*
        if !special_down && window_timer > 3 {
            window++;
            window_timer = 0;
        }
        */
    }
}

if attack == AT_DSPECIAL {
    if window_timer == 3 {
        meter_flipped = !meter_flipped;
        init_shader()
        with obj_article1 {
            if player_id == other.id && pulse_cooldown == 0 {
                pulse = true;
            }
        }
    }
}

if attack == AT_FSPECIAL {
    if window == 1 && window_timer == window_length {
        var spawn_x = x + spr_dir*60;
        var orb = instance_create(spawn_x, y - 40, "obj_article1");
            orb.hsp = spr_dir*15;
        meter_prev = meter_cur;
        meter_cur -= orb_value;
        meter_flash_timer = meter_flash_val;
        if !free spawn_base_dust(x, y, "dash_start", spr_dir);
        //var col_r = get_color_profile_slot_r(alt_cur, 3);
        //var col_g = get_color_profile_slot_g(alt_cur, 3);
        //var col_b = get_color_profile_slot_b(alt_cur, 3);
        //set_article_color_slot(3, col_r, col_g, col_b, 1);
    }
    /*
    if window == 2 && window_timer == 1 {
        if free {
            vsp -= 8;
        }
    }
    */
}

/*
if hitstop == hitstop_full-1 {
    meter_cur += hit_value;
}
*/

if attack == AT_USPECIAL {
    if state_timer == 1 upb_coords = [x, y - 100];
    else if window == 1 {
        if up_down && !down_down upb_coords[1] -= 3;
        else if down_down && !up_down upb_coords[1] += 3;
        
        if left_down && !right_down {
            upb_coords[0] -= 3;
        } else if right_down && !left_down {
            upb_coords[0] += 3;
        }
    }
    
    
    
    if window == 1 {
        can_shield = true;
        if window_timer > 4 && meter_cur <= 0 {
            window++;
            window_timer = 0;
        }
        
        hsp = clamp(hsp, -4, 4)
        vsp = clamp(vsp, -4, 4)
        if strong_charge != 0 && strong_charge mod 2 == 0 {
            meter_cur -= upb_value;
        }
        set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 15 + floor(strong_charge/4));
    }
    can_move = false;
    can_wall_jump = true
    if special_down && meter_cur > 0 strong_down = true;
    
    if window == 3 && window_timer == window_length-1 {
        x = upb_coords[0]
        y = upb_coords[1]
        //x -= spr_dir*50
    }
    
    if window == 1 || (window == 2 && window_timer == window_length) {
        if left_down && !right_down {
            spr_dir = -1;
        } else if right_down && !left_down {
            spr_dir = 1;
        }
    }
    
    if window == 5 && window_timer == 1 {
        hsp *= 0.2
    }
    
    if window >= 5 {
        if !free || has_hit {
            set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 0);
            //can_jump = true;
            //can_attack = true;
        } else reset_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE);
    }
}

if attack == 49 {
    if window == 1 {
        hurtboxID.sprite_index = sprite_get("fs_hurt")
        has_hit_player = false;
        meter_cur = clamp(meter_cur - 10, 0 , meter_max)
    }
    
    if window == 4 {
        meter_cur = clamp(meter_cur + 10, 0 , meter_max)
    }
    
    if window >= 2 {
        hsp = 0
        vsp = 0
    }
    
    if window == 3 && window_timer == window_length && !has_hit_player {
        if free set_state(PS_IDLE_AIR)
        else set_state(PS_IDLE)
    }
    
    if window == 6 && window_timer == 1 {
        sound_play(asset_get("sfx_charge_blade_ready"))
    }
    
    if window == 5 && window_timer == window_length {
        x -= spr_dir*50
    }
    
    if window == 8 {
        meter_cur = clamp(meter_cur - 10, 0, meter_max)
    }
    
    if window == 8 && window_timer == window_length {
        if free set_state(PS_IDLE_AIR)
        else set_state(PS_LANDING_LAG)
    }
}

if attack == AT_TAUNT_2 {
    if window == 2 {
        draw_limit = true;
        
        if meter_cur >= meter_max {
    		draw_limit = false;
    		spawn_hit_fx(x, y, limit_finish)
    		window = 3;
    		window_timer = 0;
    		draw_limit_flash = true;
    		sound_play(sound_get("limit_end_sfx"))
    		spawn_base_dust(x, y, "dash_start", 1)
    		spawn_base_dust(x, y, "dash_start", -1)
    	}
    }
    if window == 2 && !taunt_down {
        window = 3;
        window_timer = 0;
    }
    if window == 3 {
        sound_stop(limit_loop)
        draw_limit = false;
    }
}

/*
if attack == AT_JAB {
    if window == 3 && special_pressed {
        set_attack(AT_FSPECIAL)
    }
}
*/

if window <= 2 user_event(0)

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