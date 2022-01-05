// attack_update

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
    
    //dacus
    if window == 1 && window_timer < 4 && up_strong_pressed {
    	set_attack(AT_USTRONG)
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
	if window_timer == 3 {
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
        if !break_active {
        	meter_prev = meter_cur;
        	meter_cur -= orb_value;
        	meter_flash_timer = meter_flash_val;
        }
        if !free spawn_base_dust(x, y, "dash_start", spr_dir);
    }
}

//limit xslash
if attack != AT_FSPECIAL_2 && state_timer <= 3 && attack_pressed && special_pressed && break_active {
	set_attack(AT_FSPECIAL_2)
	sound_play(sound_get("xslash_start"))
	tip_active = false
	hurtboxID.sprite_index = get_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE);
}


if attack == AT_FSPECIAL {
    if state_timer == 1 fspec_coords = [x + 80*spr_dir, y];
    else if window == 1 {
        //if up_down && !down_down fspec_coords[1] -= 2;
        //else if down_down && !up_down fspec_coords[1] += 2;
        
        if special_down {
        	fspec_coords[0] += 4*spr_dir;
        }
        /*
        if left_down && !right_down {
            fspec_coords[0] -= 4;
        } else if right_down && !left_down {
            fspec_coords[0] += 4;
        }
        */
    }
    
    //jump cancel
    if window == 1 {
		has_jumped = 0;
		if !free noprat = true
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
    	fspec_movearr = array_create(5, [undefined,undefined])
        has_snapped = false;
        //can_shield = true;
        /*
        if window_timer > 4 && meter_cur <= 0 {
            window = 2;
            window_timer = 0;
        }
        */
        
        hsp = clamp(hsp, -4, 4)
        vsp = clamp(vsp, -4, 4)
        if !break_active && strong_charge != 0 && strong_charge mod 1 == 0 {
            meter_cur -= fspec_value;
        }
        
        movespd = 12 + floor(strong_charge/4)
        moveangle = point_direction(x, y, fspec_coords[0], fspec_coords[1])
        movedist = point_distance(x, y, fspec_coords[0], fspec_coords[1])
        
        origx = x
        origy = y
        
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, movespd*spr_dir*dcos(moveangle));
        set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -movespd*dsin(moveangle));
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, movespd*spr_dir*dcos(moveangle));
        set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -movespd*dsin(moveangle));
    }
    can_move = false;
    can_wall_jump = true
    
    if special_down && meter_cur > 0 strong_down = true;
    
    if window == 2 {
    	fspec_movearr[0] = fspec_movearr[1]
    	fspec_movearr[1] = fspec_movearr[2]
    	fspec_movearr[2] = fspec_movearr[3]
    	fspec_movearr[3] = fspec_movearr[4]
    	fspec_movearr[4] = [x,y]
    }
    
    if window == 2 {
    	if window_timer == 1 {
    		if !free spawn_base_dust(x, y, "dash_start", spr_dir);
    	}
    	
    	var iscolliding = false; //whether detection hitbox is hitting a hurtbox
        
        //find detection hitbox
        with pHitBox {
            if attack == AT_FSPECIAL && hbox_num == 3 && player_id == other {
                var hitboxID = id; //id of detection hitbox
            }
        }
        
        //check if any hurtbox is colliding with detection hitbox
        with pHurtBox {
            if instance_place(x, y, hitboxID) && playerID != other {
                iscolliding = true;
            }
        }
        
        //advance window if colliding
        if iscolliding || hsp == 0 {
            window = 3;
            window_timer = window_length;
            //set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0.5*movespd*spr_dir*dcos(moveangle));
        	//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -0.5*movespd*dsin(moveangle));
            //hsp = get_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED) * spr_dir;
            destroy_hitboxes();
        }
    	
    	if (abs(point_distance(x, y, origx, origy)) > abs(movedist) + 20 - 8*movespd) || (place_meeting(x + 20*spr_dir, y-30, asset_get("par_block"))) {
    		window = 3
    		window_timer = window_length
    		destroy_hitboxes();
    	}
    }
    
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
    
    if window == 4 && window_timer == 1 {
    	if !has_reduced && !break_active {
	        meter_prev = meter_cur;
	        meter_cur -= 8;
	        meter_flash_timer = 30;
	        has_reduced = true;
	    }
    }
    
    if window >= 5 {
        if !free || has_hit || noprat {
            set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 0);
            //can_jump = true;
            //can_attack = true;
        } else reset_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE);
        
        //if has_hit can_jump = true;
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
	if (taunt_down) && (debugMode == true || practice_mode) {
	    if up_down {
	        meter_cur++;
	    } else if down_down {
	        meter_cur--;
	    }
	}
    if window == 2 {
        draw_limit = true;
        
        if meter_cur >= meter_max {
    		draw_limit = false;
    		window = 3;
    		window_timer = 0;
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

if attack == AT_FSPECIAL_2 {
	//if window == 1 soft_armor = 12
	//else soft_armor = 0
	can_move = false
	if window < 6 && window_timer == window_length-1 && !hitpause {
		has_reduced = true
        meter_prev = meter_cur;
        //meter_cur -= 10;
        //meter_flash_timer = 30;
	}
	if window == 7 && !hitpause {
		meter_prev = meter_cur;
    	meter_cur -= 5
	}
	
	/*
    if window_timer == window_length switch window {
        case 1: sound_play(sound_get("xslash_hit1")) break;
        case 2: sound_play(sound_get("xslash_hit2")) break;
        case 3: sound_play(sound_get("xslash_hit3")) break;
        case 4: sound_play(sound_get("xslash_hit4")) break;
        case 5: sound_play(sound_get("xslash_hit5")) break;
    }
    */
}

if attack == AT_EXTRA_1 {
	if taunt_down && window_timer == window_length {
		window_timer = window_length-1
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