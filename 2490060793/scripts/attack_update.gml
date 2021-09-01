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

if attack == AT_DSPECIAL {
	if window_timer == 1 {
		with obj_article1 {
            if player_id == other.id && pulse_cooldown == 0 {
                pulse = true;
            }
        }
	}
    if window_timer == 3 {
        meter_flipped = !meter_flipped;
        init_shader()
    }
}

if attack == AT_NSPECIAL {
    if window == 1 && window_timer == window_length {
        var spawn_x = x + spr_dir*60;
        var orb = instance_create(spawn_x, y - 40, "obj_article1");
            orb.hsp = spr_dir*15;
        meter_prev = meter_cur;
        meter_cur -= orb_value;
        meter_flash_timer = meter_flash_val;
        if !free spawn_base_dust(x, y, "dash_start", spr_dir);
    }
}


if attack == AT_FSPECIAL {
    if state_timer == 1 fspec_coords = [x + 30*spr_dir, y];
    else if window == 1 {
        if up_down && !down_down fspec_coords[1] -= 2;
        else if down_down && !up_down fspec_coords[1] += 2;
        
        if left_down && !right_down {
            fspec_coords[0] -= 4;
        } else if right_down && !left_down {
            fspec_coords[0] += 4;
        }
    }
    
    //jump cancel
    if window == 1 {
		has_jumped = 0;
	}
	
	if has_hit && window == 4 && window_timer <= window_length - 6 && jump_pressed {
		has_jumped = true;
	}
	
	if has_jumped && !hitpause && !was_parried {
		attack_end();
		destroy_hitboxes();
		if !free set_state(PS_JUMPSQUAT);
		else {
			set_state(PS_DOUBLE_JUMP)
			vsp = -djump_speed
			old_vsp = -djump_speed
		}
		hsp = old_hsp/2
	}
    
    
    
    if window == 1 {
        has_snapped = false;
        //can_shield = true;
        if window_timer > 4 && meter_cur <= 0 {
            window++;
            window_timer = 0;
        }
        
        hsp = clamp(hsp, -4, 4)
        vsp = clamp(vsp, -4, 4)
        if strong_charge != 0 && strong_charge mod 2 == 0 {
            meter_cur -= fspec_value;
        }
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 15 + floor(strong_charge/8));
    }
    can_move = false;
    can_wall_jump = true
    if special_down && meter_cur > 0 strong_down = true;
    
    if window == 3 && window_timer == window_length-1 {
        x = fspec_coords[0]
        y = fspec_coords[1]
        //x -= spr_dir*50
    }
    
    //change spr_dir
    /*
    if window == 1 || (window == 2 && window_timer == window_length) {
        if left_down && !right_down {
            spr_dir = -1;
        } else if right_down && !left_down {
            spr_dir = 1;
        }
    }
    */
    
    if window == 5 && window_timer == 1 {
        hsp *= 0.2
    }
    
    if window >= 5 {
        if !free || has_hit {
            set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
            //can_jump = true;
            //can_attack = true;
        } else reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE);
        
        if has_hit can_jump = true;
    }
    
    //40px ledge snap
    if (window == 4 || window == 5) && !has_snapped && free && place_meeting(x + hsp, y, asset_get("par_block")) {
        for (var i = 0; i < 40; i++) {
            if (!place_meeting(x + hsp, y-(i+1), asset_get("par_block"))) {
                y -= i;
                has_snapped = true;
                break;
            }
        }
    }
}

if attack == AT_USPECIAL {
    can_wall_jump = true;
    
    if window == 1 {
        uspec_pratfall = true;
    }
    if window == 3 && window_timer == window_length && (special_down || special_pressed) {
        uspec_pratfall = false;
    }
    
    if window == 4 && window_timer == 1 sound_play(asset_get("sfx_ori_stomp_spin"))
    
    if uspec_pratfall && window == 3 && window_timer == window_length {
        window = 8;
        window_timer = 0;
    }
    
    if window == 5 {
        if !free {
            window = 7;
            window_timer = 0;
            destroy_hitboxes()
        }
    }
    if window == 7 && window_timer == 0 {
        destroy_hitboxes()
    }
    
    if window == 6 && window_timer > 25 {
        can_jump = true;
        can_shield = true;
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