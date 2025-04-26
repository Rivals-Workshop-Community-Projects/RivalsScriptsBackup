// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch attack {
    case AT_DTILT:
    if window == 1 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_flareo_rod"))
    }
    break;

    case AT_JAB:
    if window == 1 {
        jab_grab = false
    }
    
    if window == 8 && jab_grab && !hitpause {
        window = 10
        window_timer = 0
    }
    
    //grab
    if window == 10 {
        jab_grab_pos = [x + 30*spr_dir, y - 30]
        with oPlayer if "tco_jab_grab_id" in self && tco_jab_grab_id == other.id {
            x = lerp(x, other.jab_grab_pos[0], 0.2)
            y = lerp(y, other.jab_grab_pos[1] + char_height/2, 0.2)
        }
        
        if window_timer == 3 {
            sound_play(asset_get("sfx_zetter_fireball_fire"))
        }
    }
    break;


    //fire ftilt
    case AT_FTHROW:
    if (window == 1 || window == 5) && window_timer == window_length && (attack_down || attack_pressed) && fire_stance {
        window = 3
        window_timer = 0
    }
    
    if window == 3 && window_timer == window_length && (attack_down || attack_pressed) && fire_stance {
        window = 5
        window_timer = 0
    }
    
    if window == 2 || window == 4 {
        fire_amount = 0
    }
    
    if (window == 1 || window == 3 || window == 5) && window_timer == 5 && !hitpause {
        fire_amount -= 20
        //sound_play(asset_get("sfx_ell_small_missile_fire"))
        sound_play(asset_get("sfx_burnapplied"), false, noone, 0.4, 1.5)
        var fireball = create_hitbox(AT_FTHROW, 1, x + 30*spr_dir, y - 45)
        fireball.hsp = 30*spr_dir
        if window == 1 || window == 5 {
            fireball.vsp = 4
        } else {
            fireball.vsp = -4
        }
    }
    break;

    case AT_UTILT:
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "jump", spr_dir)
    }
    break;

    case AT_DATTACK:
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "wavedash", spr_dir)
    }
    if window == 4 && !free {
        window++
        window_timer = 0
        spawn_base_dust(x, y, "dash", spr_dir)
        sound_play(asset_get("sfx_land"))
        destroy_hitboxes()
    }
    
    if window == 5 && has_hit {
        can_jump = true
    }
    
    if window == 4 && (window_timer >= 20 || (window_timer >= 10 && has_hit)) {
        iasa_script()
    }
    break;

    case AT_BAIR:
    if window == 1 && window_timer == window_length {
        sound_play(asset_get("sfx_ell_small_missile_ground"))
    }
    break;

    case AT_FAIR:
    if window == 2 {
        if window_timer >= 4 soft_armor = 12
        var kbg = 0.6 + clamp(window_timer/160, 0, 0.2)
        if !attack_down && !strong_down && !(left_stick_down && spr_dir == -1) && !(right_stick_down && spr_dir == 1) && window_timer >= 4 {
            set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, kbg);
            set_window(3)
            soft_armor = 0
        }
    }
    break;
    
    case AT_FSTRONG_2: //fire fair
    if window == 2 {
        can_move = false
    } else {
        can_move = true
    }
    break;
    
    case AT_FSPECIAL:
    move_cooldown[AT_FSPECIAL] = 30
    if window == 3 && window_timer >= 12 can_move = true
    else can_move = false
    if window == 1 {
        hsp *= 0.95
        vsp *= 0.95
        laser_state = 0
        laser_timer = 0
        laser_dist = 0
        laser_hit = false
        if up_down && !down_down laser_angle = 15
        else if down_down && !up_down laser_angle = -15
        else laser_angle = 0
        
        if !laser_hit laser_end_pos = [x + 60*spr_dir, y - 42]
        laser_pos_max = [0,0]
        
        if window_timer == window_length && !hitpause {
            laser_state = 1
        }
        
        if window_timer == 4 sound_play(asset_get("sfx_forsburn_cape_swipe"))
    }
    
    if laser_state >= 1 {
        if !laser_hit laser_dist = lerp(laser_dist, laser_dist_max, 0.5)
        
        laser_pos_max = [x + (20 + laser_dist_max*dcos(laser_angle))*spr_dir, y - 46 - laser_dist_max*dsin(laser_angle)]
    }
    
    if ((window == 1 && window_timer == window_length) || window == 2 || window == 3) {
        var num_hitboxes = floor(laser_dist/20)
        for (var i = 1; i < num_hitboxes + 1; i++) {
            var hbox_num = 1
            if laser_timer >= 32 {
                hbox_num = 2
            }
            
            if laser_hit || laser_timer < 15 { 
                var hbox = create_hitbox(AT_FSPECIAL, hbox_num, x + 30*spr_dir + floor((laser_dist*dcos(laser_angle))*spr_dir*i/num_hitboxes), y - 44 - floor((laser_dist*dsin(laser_angle))*i/num_hitboxes))
                    //hbox.priority = num_hitboxes + 1 - i
                if laser_hit {
                    hbox.image_xscale = 40/200
                    hbox.image_yscale = 40/200
                }
            }
            
        }
    }
    
    if window == 2 && window_timer == window_length {
        laser_state = 2
        sound_play(sound_get("laser_loop"), true)
    }
    
    if window == 3 && (((laser_timer > 16) && !laser_hit) || laser_timer >= 40) {
        window++
        window_timer = 0
        laser_state = 3
        sound_play(sound_get("laser_end"))
    }
    
    if laser_state >= 1 {
        laser_timer++
    }
    
    if window == 4 && window_timer == 1 {
        sound_stop(sound_get("laser_loop"))
    }
    
    
    
    if window >= 2 {
        if !laser_hit laser_end_pos = [x + (20 + laser_dist*dcos(laser_angle))*spr_dir, y - 46 - laser_dist*dsin(laser_angle)]
    }
    
    if window == 4 && window_timer == window_length {
        laser_state = 0
    }
    
    if window == 5 && window_timer == window_length && was_parried {
        set_state(free ? PS_PRATFALL : PS_PRATLAND)
    }
    break;
    
    case AT_USTRONG:
    // if window <= 2 && state_timer mod 12 == 2 {
    //     spawn_base_dust(x, y, "dash", spr_dir)
    //     spawn_base_dust(x, y, "dash", -spr_dir)
    // }
    if window == 2 && window_timer == 1 && !hitpause {
        sound_play(asset_get("sfx_zetter_fireball_fire"))
    }
    break;
    
    case AT_DSTRONG:
    if window == 3 && window_timer == window_length && !hitpause {
        sound_play(asset_get("sfx_ice_back_air"))
        sound_play(asset_get("sfx_zetter_downb"))
    }
    
    if window == 1 && window_timer == 3 && under_cloud {
        empowered_cloud = true
        sound_play(asset_get("sfx_absa_dattack"))
        sound_play(asset_get("sfx_absa_champ_loop"))
        if cloud_exists() && cloud_id.state == 1 {
            cloud_id.state = 2
            cloud_id.state_timer = 0
            cloud_id.lightning_draw_surface = 0
        }
    }
    
    if window == 3 && window_timer >= 4 {
        if cloud_exists() && cloud_id.state == 2 {
            cloud_id.state = 3
            cloud_id.state_timer = 0
            cloud_id.queue_dissipate = true
        }
    }
    
    if window == 3 && window_timer == window_length && empowered_cloud && !hitpause {
        var num_hitboxes = 16
        for (var i = 1; i < num_hitboxes + 1; i++) {
            var hbox_num = 3
            var hbox = create_hitbox(AT_DSTRONG, hbox_num, x + floor((lightning_draw_length*dcos(lightning_angle+90))*i/num_hitboxes), y - floor((lightning_draw_length*dsin(lightning_angle+90))*i/num_hitboxes))
        }
        sound_stop(asset_get("sfx_absa_champ_loop"))
        sound_play(asset_get("sfx_absa_uair"))
        var hbox_1 = create_hitbox(AT_DSTRONG, 4, x + 40, y - 10)
            hbox_1.spr_dir = 1
        var hfx1 = spawn_hit_fx(x + 20, y - 8, vfx_electric_ground)
            hfx1.spr_dir = -1
        var hbox_2 = create_hitbox(AT_DSTRONG, 4, x - 40, y - 10)
            hbox_2.spr_dir = -1
        var hfx2 = spawn_hit_fx(x - 20, y - 8, vfx_electric_ground)
            hfx2.spr_dir = 1
    }
    break;
    
    case AT_FSTRONG:
    if window == 1 && window_timer == 4 && !hitpause {
        sound_play(asset_get("sfx_ori_bash_hit"))
    }
    if window == 3 {
        if window_timer == window_length && !hitpause {
            sound_stop(asset_get("sfx_ori_charged_flame_charge"))
            sound_play(asset_get("sfx_ori_charged_flame_release"))
            sound_play(asset_get("sfx_ori_ustrong_launch"))
            spawn_base_dust(x, y, "dash_start", spr_dir)
        }
        // if window_timer == 1 sound_play(asset_get("sfx_ori_sein_fstrong"))
    }
    break;
    
    case AT_DSPECIAL:
    if window == 3 {
        can_move = true
    } else {
        can_move = false
    }
    if window == 1 {
        if window_timer == 1 {
            sound_play(asset_get("sfx_absa_cloud_send"))
        }
        hsp *= 0.9
        vsp *= 0.9
        
        if window_timer == 6 {
            sound_play(asset_get("sfx_absa_boltcloud"))
            with obj_article1 if player_id == other.id {
                state = 9
                state_timer = 0
            }
            instance_create(x, y, "obj_article1")
        }
        
        if window_timer == window_length - 4 {
            if cloud_exists() {
                cloud_id.state = 3
                cloud_id.state_timer = 0
            }
        }
        if window_timer == window_length && !hitpause {
            sound_play(asset_get("sfx_absa_uair"))
            move_cooldown[AT_DSPECIAL] = 120
        }
    }
    if window == 3 {
        if !free {
            set_state(was_parried ? PS_PRATLAND : PS_LAND)
        }
    }
    break;
    
    case AT_NSPECIAL:
    can_fast_fall = false
    can_wall_jump = true
    move_cooldown[AT_NSPECIAL] = 1000000
    /*
    if window > 1 {
        move_cooldown[AT_NSPECIAL] = 40
    }
    */
    if window == 3 {
        hover_timer = 24
    }
    
    if window >= 3 && !free {
        set_state(PS_LAND)
    }
    
    if window == 1 && window_timer == window_length {
        fire_stance = true
        fire_amount = 100
        if !free {
            vsp -= 5
            spawn_base_dust(x, y, "jump", spr_dir)
        } else {
            vsp = clamp(vsp, -5, 2)
            vsp -= 1
        }
    }
    
    if window == 3 {
        can_fast_fall = true
        can_jump = true
        can_attack = true
        can_special = true
        can_strong = true
        if (special_pressed && joy_pad_idle) || shield_pressed {
            window = 4
            window_timer = 0
            hover_timer = 0
            fire_stance = false
        }
    }
    break;
    
    case AT_USPECIAL:
    can_fast_fall = false
    can_move = false
    hover_timer = 0
    move_cooldown[AT_USPECIAL] = 100000
    if window == 1 {
    	vsp = clamp(vsp, -8, 4)
        if window_timer == 1 {
            was_grounded = false
            has_snapped = false
        }
        if !joy_pad_idle && window_timer <= window_length - 6 {
            uspec_angle = round(joy_dir/45)*45
            if uspec_angle == 315 || uspec_angle == 360 {
                uspec_angle = 0
            }
            if uspec_angle == 225 {
                uspec_angle = 180
            }
            if uspec_angle == 270 {
                uspec_angle = 90 - 90*spr_dir
            }
            
            if uspec_angle != 90 {
                spr_dir = sign(dcos(uspec_angle))
            }
            
        }
        if window_timer == window_length - 6 sound_play(asset_get("sfx_ell_fist_fire"), false, noone, 1, 1.8)
        
        vsp *= 0.95
        hsp *= 0.95
        
        if !free {
            was_grounded = true
        }
        
        if window_timer == window_length && !hitpause {
            //sound_play(asset_get("sfx_ell_big_missile_ground"))
            sound_play(sound_get("item_proc_igniteOnKill_01"))
            var spd = 13
            hsp = spd*dcos(uspec_angle)
            vsp = -spd*dsin(uspec_angle)
            
            if !free {
                spawn_base_dust(x, y, "dash_start", spr_dir)
            }
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 20*spr_dir*dcos(uspec_angle));
            set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -20*dsin(uspec_angle) - 30);
            create_hitbox(AT_USPECIAL, 1, x, y)
        }
    }
    
    //40px ledge snap
    if (uspec_angle == 0 || uspec_angle == 180) && window >= 2 && !has_snapped && free && place_meeting(x + hsp, y, asset_get("par_block")) {
        for (var i = 0; i < 40; i++) {
            if (!place_meeting(x + hsp, y-(i+1), asset_get("par_block"))) {
                y -= i;
                has_snapped = true;
                break;
            }
        }
    }
    
    if window == 2 && !hitpause {
        var spd = 13
        hsp = spd*dcos(uspec_angle)
        vsp = -spd*dsin(uspec_angle)
    }
    
    if window >= 1 {
        can_wall_jump = true
    }
    
    if window == 3 && window_timer >= window_length - 8 && !free {
        hsp *= 0.5
        set_state(PS_PRATLAND)
    }
    
    if (window == 2 && window_timer > window_length-6) || window == 3 {
    	if has_hit {
            can_jump = true
            can_attack = true
            can_special = true
            can_strong = true
        }
    }
    
    if window == 3 {
        
        can_move = true
        vsp = clamp(vsp, -6, 6)
        hsp = clamp(hsp, -8, 8)
        if window_timer <= 8 && (uspec_angle == 0 || uspec_angle == 180) {
            vsp = 0
            if window_timer == 5 && !hitpause {
                //hsp -= 8*spr_dir
                sound_play(asset_get("sfx_ell_dspecial_explosion_1"))
                create_hitbox(AT_USPECIAL, 2, x, y)
            }
        }
        if window_timer == window_length {
            if free /*&& !was_grounded*/ {
                set_state(PS_PRATFALL)
            }
        }
    }
    break;
    
    case AT_UTHROW: //fire utilt
    if window == 1 {
        utilt_grab = false
    }
    
    can_move = window != 2
    
    if window == 1 && window_timer == window_length && !hitpause {
        spawn_base_dust(x, y, "jump", spr_dir)
    }
    
    //grab
    if window == 2 && utilt_grab {
        utilt_grab_pos = [x + 10*spr_dir, y - 100]
        with oPlayer if "tco_utilt_grab_id" in self && tco_utilt_grab_id == other.id && !hitstop {
            x = lerp(x, other.utilt_grab_pos[0], 0.3)
            y = lerp(y, other.utilt_grab_pos[1] + char_height/2, 0.3)
        }
    }
    break;
    
    case AT_NTHROW: //fire jab
	if (window == 3 || window == 6) && !hitpause {
		can_attack = true
		move_cooldown[AT_NTHROW] = 6
	}
	
    if window == 7 {
        fireblast_state = 0
        fireblast_timer = 0
        fireblast_dist = 0
        fireblast_hit = false
        fireblast_angle = 0
        
        if !fireblast_hit fireblast_end_pos = [x + 60*spr_dir, y - 42]
        fireblast_pos_max = [0,0]
        
        if window_timer == window_length && !hitpause {
            fireblast_state = 1
            fire_stance = false
            fire_amount = 0
        }
        
        if window_timer == 4 sound_play(asset_get("sfx_forsburn_cape_swipe"))
    }
    
    if fireblast_state >= 1 {
        if !fireblast_hit fireblast_dist = lerp(fireblast_dist, fireblast_dist_max, 0.5)
        
        fireblast_pos_max = [x + (20 + fireblast_dist_max*dcos(fireblast_angle))*spr_dir, y - 46 - fireblast_dist_max*dsin(fireblast_angle)]
    }
    
    if ((window == 7 && window_timer == window_length) || window == 8 || window == 9) {
        var num_hitboxes = floor(fireblast_dist/20)
        for (var i = 1; i < num_hitboxes + 1; i++) {
            var hbox_num = 3
            if fireblast_timer >= 32 {
                hbox_num = 4
            }
            
            if fireblast_hit || fireblast_timer < 15 { 
                var hbox = create_hitbox(AT_NTHROW, hbox_num, x + 40*spr_dir + floor((fireblast_dist*dcos(fireblast_angle))*spr_dir*i/num_hitboxes), y - 40 - floor((fireblast_dist*dsin(fireblast_angle))*i/num_hitboxes))
                    //hbox.priority = num_hitboxes + 1 - i
                if fireblast_hit {
                    hbox.image_xscale = 40/200
                    hbox.image_yscale = 40/200
                }
            }
            
        }
    }
    
    if window == 8 && window_timer == window_length {
        fireblast_state = 2
        //sound_play(sound_get("laser_loop"), true)
    }
    
    if window == 9 && (((fireblast_timer > 16) && !fireblast_hit) || fireblast_timer >= 40) {
        window++
        window_timer = 0
        fireblast_state = 3
    }
    
    if fireblast_state >= 1 {
        fireblast_timer++
    }
    
    
    if window >= 8 {
        if !fireblast_hit fireblast_end_pos = [x + (20 + fireblast_dist*dcos(fireblast_angle))*spr_dir, y - 40 - fireblast_dist*dsin(fireblast_angle)]
    }
    
    if window == 10 && window_timer == window_length {
        fireblast_state = 0
    }
    
    if window == 10 && window_timer == window_length && was_parried {
        set_state(free ? PS_PRATFALL : PS_PRATLAND)
    }
	break;
	
	case AT_DTHROW: //fire dair
	if window == 1 {
	    hsp *= 0.9
	    vsp *= 0.9
	}
	
	if window <= 2 {
	    fall_through = true
	} else {
	    fall_through = false
	}
	if window > 2 {
	    can_move = false
	}
	if window == 3 {
	    if window_timer >= 20 && free {
	        iasa_script()
	    }
	    if !free && !hitpause {
	    	destroy_hitboxes()
    	    window = 4
    	    window_timer = 0
    	    sound_play(asset_get("sfx_zetter_downb"))
    	    create_hitbox(AT_DTHROW, 2, x, y)
	    }
	}
	
	if window == 1 && window_timer == 3 && under_cloud {
        empowered_cloud = true
        sound_play(asset_get("sfx_absa_dattack"))
        sound_play(asset_get("sfx_absa_champ_loop"))
        if cloud_exists() && cloud_id.state == 1 {
            cloud_id.state = 2
            cloud_id.state_timer = 0
            cloud_id.lightning_draw_surface = 0
        }
    }
    
    if window == 4 {
        if cloud_exists() && cloud_id.state == 2 {
            cloud_id.state = 3
            cloud_id.state_timer = 4
            cloud_id.lightning_timer = 4
            cloud_id.queue_dissipate = true
            sound_stop(asset_get("sfx_absa_champ_loop"))
        	sound_play(asset_get("sfx_absa_uair"))
        	
        	var num_hitboxes = 16
	        for (var i = 1; i < num_hitboxes + 1; i++) {
	            var hbox_num = 3
	            var hbox = create_hitbox(AT_DSTRONG, hbox_num, x + floor((lightning_draw_length*dcos(lightning_angle+90))*i/num_hitboxes), y - floor((lightning_draw_length*dsin(lightning_angle+90))*i/num_hitboxes))
	        }
	        
	        var hbox_1 = create_hitbox(AT_DSTRONG, 4, x + 40, y - 10)
	            hbox_1.spr_dir = 1
	        var hfx1 = spawn_hit_fx(x + 20, y - 8, vfx_electric_ground)
	            hfx1.spr_dir = -1
	        var hbox_2 = create_hitbox(AT_DSTRONG, 4, x - 40, y - 10)
	            hbox_2.spr_dir = -1
	        var hfx2 = spawn_hit_fx(x - 20, y - 8, vfx_electric_ground)
	            hfx2.spr_dir = 1
		}
    }
    
	break;
	
	case AT_TAUNT:
	if window == 2 && window_timer == window_length {
		//sound_play(asset_get("sfx_forsburn_cape_swipe"))
	}
	break;
	
	case AT_TAUNT_2:
	if window == 1 && window_timer == 54 {
		sound_stop(sound_get("pencil"))
	}
	
	if window == 1 && window_timer == window_length {
		with oPlayer if id != other.id {
			if "tcoart" in self && tcoart != undefined {
				other.tcoart_spr = tcoart
			} else if "url" in self {
				other.tcoart_url = self.url
			}
		}
		move_cooldown[AT_TAUNT_2] = 120
		
		//print(tcoart_spr)
		//print(tcoart_url)
		
		if tcoart_spr == undefined && tcoart_url != undefined {
			switch tcoart_url {
				case "1865940669": tcoart_spr = sprite_get("sand") break;
				case 2: tcoart_spr = sprite_get("zetter") break;
				case 6: tcoart_spr = sprite_get("fors") break;
				case 12: tcoart_spr = sprite_get("claire") break;
				case 16: tcoart_spr = sprite_get("mollo") break;
				case 5: tcoart_spr = sprite_get("kragg") break;
				case 7: tcoart_spr = sprite_get("maypul") break;
				case 13: tcoart_spr = sprite_get("sylva") break;
				case 19: tcoart_spr = sprite_get("oly") break;
				case 4: tcoart_spr = sprite_get("wrastor") break;
				case 8: tcoart_spr = sprite_get("absa") break;
				case 14: tcoart_spr = sprite_get("elli") break;
				case 18: tcoart_spr = sprite_get("pomme") break;
				case 3: tcoart_spr = sprite_get("orca") break;
				case 9: tcoart_spr = sprite_get("etalus") break;
				case 11: tcoart_spr = sprite_get("ranno") break;
				case 17: tcoart_spr = sprite_get("hodan") break;
				case 10: tcoart_spr = sprite_get("ori") break;
				case 15: tcoart_spr = sprite_get("shovel") break;
			}
		}
		
		if tcoart_spr == undefined {
			tcoart_spr = sprite_get("notcoart")
		}
		
		tcoart_timer = tcoart_timer_max
		tcoart_coords = [x - 100 + 10*spr_dir, y - 370]
		sound_play(asset_get("mfx_star"))
	}
	break;
}

fire_moves = [
    AT_FTHROW, AT_UAIR, AT_DATTACK, AT_NTHROW, AT_FSPECIAL, AT_NSPECIAL, AT_TAUNT
]

if window == 1 && window_timer == window_length {
	var is_fire_move = false
	for (var i = 0; i < array_length(fire_moves); i++) {
	    if attack == fire_moves[i] {
	        is_fire_move = true
	    }
	}
	
	if !is_fire_move {
	    fire_stance = false
	    fire_amount = 0
	}
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

#define set_window(w)
window = w;
window_timer = 0;
return;

#define cloud_exists()
return (cloud_id != undefined && instance_exists(cloud_id) && cloud_id.state != 9)