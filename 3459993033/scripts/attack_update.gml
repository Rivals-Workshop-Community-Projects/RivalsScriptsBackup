//attack_update
var window_end = get_window_value(attack, window, AG_WINDOW_LENGTH);

switch(attack){
	case AT_NSPECIAL:
	case AT_NSPECIAL_2:
	case AT_FSPECIAL:
	case AT_FSPECIAL_2:
	case AT_DSPECIAL:
	case AT_DSPECIAL_2:
	case AT_USPECIAL:
	case AT_USPECIAL_2:
		trigger_b_reverse();
	break;
}

if (attack == AT_JAB) {
    if (right_down-left_down == -spr_dir && down_down-up_down == 0 && !has_hit && !has_hit_player) {
        var win_time = get_window_value(attack,window,AG_WINDOW_LENGTH);
        set_window_value(attack,window,AG_WINDOW_CANCEL_FRAME, win_time);
        if get_window_value(attack,window,AG_WINDOW_CANCEL_TYPE) != 0 && window_timer == win_time {
            set_state(PS_IDLE);
            // if you get ftilt frame-perfectly on parry you can carry the parry lag over
            // that doesn't happen in base cast so this fixes that
            was_parried = false; 
        }
    } else {
        reset_window_value(attack,window,AG_WINDOW_CANCEL_FRAME);
    }
}


switch(attack)
{	
	case AT_EXTRA_1:
		if window_timer == 2 {
			sound_stop(taunt_sound)
			taunt_sound = sound_play(sound_get("taunt_song"), false, noone, 1, 1)
		}
		
		hud_offset = round(lerp(hud_offset, 140, 0.2))
		
		suppress_stage_music(0, 0.1)
		
		if !taunt_down {
			sound_stop(taunt_sound)
			set_state(PS_IDLE)
		}
	break;
	case AT_DATTACK:
		if window == 1 and window_timer == 5 and !hitpause {
			sound_play(sound_get("sfx_delta_swipe_spin"), false, noone, 1, 1.2)
		}
		if (window == 1 && window_timer == window_end && !hitpause){
			spawn_base_dust(x,y,"dash_start",spr_dir)
		}
		if (window == 2 && window_timer == window_end && !hitpause){
			spawn_hit_fx(x, y, dattack_linger);
		}
	break;
	case AT_UAIR:
	hud_offset = 64;
		if window == 1 and window_timer == 9 {
			sound_play(sound_get("sfx_delta_swipe_spin"), false, noone, 1, 1)
		}
		
		if window == 2 and window_timer == window_end and (!attack_down && !up_stick_down) {
			set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 13);
			window = 4;
			window_timer = 0;
		}
		if (window == 4 && window_timer == window_end && !hitpause){
			spawn_hit_fx(x, y, uair_linger);
		}
	break;
	case AT_DSPECIAL:
		if (window == 1 && !hitpause && window_timer % 5 == 0 && !free){
			spawn_base_dust(x-(30*spr_dir),y,"dash",spr_dir)
		}
		can_fast_fall = false;
		if (window >= 1 && window < 4){
			hsp *= 1;
		} else {
			hsp *= 0.7;
		}
		vsp = vsp >= 0 ? vsp*0.85 : vsp*0.97
		if window == 4 and window_timer == 1{
			if (!free) spawn_base_dust(x+(77*spr_dir),y,"land",spr_dir)
			if instance_exists(toadie_obj) {
	            ds_list_add(kamek_particles_obj.particles, {
	                sprite: sprite_get("toadie_die"),
	                x: toadie_obj.x,
	                y: toadie_obj.y,
	                hsp: 3 - random_func(3, 6, true),
	                vsp: -3,
	                xaccel: 0,
	                yaccel: 0.4,
	                angle: 0,
	                torque: 6,
	                lifetime: 300,
	                xscale: toadie_obj.spr_dir,
	                yscale: 1
	            })	
				instance_destroy(toadie_obj)
			}
			
			toadie_obj = !free ? instance_create(x+(77*spr_dir),y-57,"obj_article1") : instance_create(x+(77*spr_dir),y+23,"obj_article1")
			toadie_obj.spr_dir = spr_dir
			sound_play(sound_get("poof"), false, noone, 0.5, 1.1);
			sound_play(asset_get("sfx_bubblepop"));
			spawn_hit_fx(toadie_obj.x,toadie_obj.y,toadie_smoke).depth = depth-6
			toadie_obj.hsp = 1*spr_dir;
			toadie_obj.vsp = !free ? -1.4 : 1.4;
			move_cooldown[AT_DSPECIAL] = 60
			if (free){
				set_attack_value(attack, AG_CATEGORY, 1);
			}
		}
		if (window == 1 && window_timer == window_end && !hitpause){
			sound_play(sound_get("sfx_delta_charge_cancel"));
		}
		if (window == 4 && window_timer == window_end && !hitpause){
			sound_play(sound_get("laugh_fast"), false, noone, 0.7, 1);
		}
	break;
	case AT_USTRONG:
		ustrong_update_rings();
		
		if window == 2 and get_gameplay_time() mod 20 == 0{
			//print("got it")
			spawn_base_dust(x+(20*spr_dir),y,"dash",-spr_dir)
			spawn_base_dust(x-(20*spr_dir),y,"dash",spr_dir)
		}
		
		if window == 1 and window_timer == 1 {
			ustrong_sound = sound_play(sound_get("sfx_delta_ustrong_charge"), false, noone);
		}
		
		if window > 1 and window < 8 {
			hud_offset = round(lerp(hud_offset, 100 + (50*array_length(ustrong_rings)), 0.3))
		}
		
		if (window == 2 and !hitpause) {
			
			if ustrong_ring_timer mod 21 == 0{
				ustrong_add_ring()
				sound_play(asset_get("sfx_boss_shine"))
			}
			ustrong_ring_timer++;
		}
		if window == 3 {
			
			ustrong_multihits = array_length(ustrong_rings)
			if (window_timer == window_end && !hitpause){
				spawn_base_dust(x+(20*spr_dir),y,"dash",-spr_dir)
				spawn_base_dust(x-(20*spr_dir),y,"dash",spr_dir)
			}
			
		}
		if window == 4 and window_timer == 1 and !hitpause{
			sound_stop(ustrong_sound)
			print(ustrong_multihits)
			if ustrong_multihits > 0 {
				ustrong_rings[array_length(ustrong_rings) - ustrong_multihits].state=2;
				ustrong_rings[array_length(ustrong_rings) - ustrong_multihits].state_timer=0;
				ustrong_multihits--;
				sound_play(sound_get("sfx_delta_jab3_rise"), false, noone, 1, 1.3)
			}	
		}
		if window == 5 {
			
			//iteration of cycle
			if window_timer == 3 {
				if ustrong_multihits > 0 {
					ustrong_rings[array_length(ustrong_rings) - ustrong_multihits].state++;
					ustrong_rings[array_length(ustrong_rings) - ustrong_multihits].state_timer=0;
					ustrong_multihits--;
					sound_play(sound_get("sfx_delta_jab3_rise"), false, noone, 1, 1.3+ ((array_length(ustrong_rings) - ustrong_multihits)*0.1) )
				}			
			}
			if window_timer == window_end {
				window_timer = 0;
				window = 5;
			}
		}
	break;
	case AT_JAB:
		if jab_should_skip and window< 9{
			attack_end()
			destroy_hitboxes()
			print("hey skipp")
			window = 10;
			window_timer = 0;
		}
		if (window == 1){
			if (window_timer == window_end && !hitpause) spawn_base_dust(x-(20*spr_dir),y,"dash",spr_dir);
		}
		if (window == 4){
			if (window_timer == window_end && !hitpause) spawn_base_dust(x-(20*spr_dir),y,"dash",spr_dir);
		}
		if (window == 2){
			if (window_timer == window_end && !hitpause){
				spawn_hit_fx(x, y, jab1_linger);
			}
		}
		if (window == 5){
			if (window_timer == window_end && !hitpause){
				spawn_hit_fx(x, y, jab2_linger);
			}
		}
		if window == 9 and window_timer == window_end {
			sound_play(sound_get("sfx_delta_explosion"), false, noone, 0.9, 1.2)
		}
		if (window == 10){
			if (window_timer == window_end && !hitpause){
				spawn_hit_fx(x, y, jab3_linger);
			}
		}
	break;
	case AT_FTILT:
		if (window == 1 && window_timer == window_end && !hitpause){
			spawn_base_dust(x - 22*spr_dir, y, "dash_start", spr_dir);
		}
		if (window == 3 && window_timer == window_end && !hitpause){
			spawn_hit_fx(x, y, ftilt_linger);
		}
	break;
	case AT_UTILT:
		if (window == 1 && window_timer == window_end && !hitpause){
			sound_play(sound_get("sfx_delta_swipe1"), false, noone, 1, 1.2);
		}
		if (window == 2 && window_timer == window_end && !hitpause){
			sound_play(sound_get("sfx_delta_swipe_spin"), false, noone, 0.7, 1.4);
			sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.5, 0.8);
			spawn_base_dust(x - 22*spr_dir, y, "dash", spr_dir);
			spawn_base_dust(x + 22*spr_dir, y, "dash", -spr_dir);
		}
		if (window == 3){
			if (window_timer % 8 == 0 && !hitpause){
				spawn_base_dust(x - 22*spr_dir, y, "dash", spr_dir);
				spawn_base_dust(x + 22*spr_dir, y, "dash", -spr_dir);
			}
			if (window_timer == 3 || window_timer == 9) && (!hitpause){
				sound_play(sound_get("sfx_delta_swipe4"), false, noone, 0.6, 2);
			}
			if (window_timer == window_end && !hitpause){
				spawn_hit_fx(x, y, utilt_linger);
			}
		}
	break;
	case AT_DTILT:
		if (window == 1 && window_timer == window_end && !hitpause){
			sound_play(asset_get("sfx_icehit_weak1"));
			sound_play(sound_get("magic_hit"), false, noone, 0.8, 1.3);
			spawn_base_dust(x-(20*spr_dir),y,"dash",spr_dir)
		}
		if (window == 2 && window_timer == window_end && !hitpause){
			spawn_hit_fx(x, y, dtilt_linger);
		}
	break;
    case AT_NAIR:
    if (window == 1 && window_timer == window_end-5 && !hitpause){
    	sound_play(sound_get("sfx_delta_swipe_spin"));
    }
    if (window == 2){
    	if (window_timer == 3 && !hitpause){
    		spawn_hit_fx(x, y, nair_linger1);
    		
    	}
    	if (window_timer == 6 && !hitpause){
    		spawn_hit_fx(x, y, nair_linger2);
    		sound_play(sound_get("sfx_delta_swipe1"), false, noone, 0.4, 1.2);
    	}
    }
    break;
    case AT_FAIR:
		if (window == 2 && window_timer == 1 && !hitpause){
    		sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.8, 1.35);
    	}
		if (window == 3 && window_timer == window_end && !hitpause){
			spawn_hit_fx(x, y, fair_linger);
		}
    break;
    case AT_BAIR:
    if (window == 2){
    	if (window_timer == window_end - 1 && !hitpause){
    		sound_play(sound_get("sfx_delta_swipe1"));
    	}
    }
    if (window == 3){
    	if (window_timer == 3 && !hitpause){
    		spawn_hit_fx(x, y, bair_low);
    		sound_play(sound_get("sfx_delta_explosion"), false, noone, 0.7, 0.9);
    	}
    	if (window_timer == 6 && !hitpause){
    		spawn_hit_fx(x, y, bair_mid);
    		sound_play(sound_get("sfx_delta_explosion"), false, noone, 0.8, 1.0);
    	}
    	if (window_timer == 9 && !hitpause){
    		spawn_hit_fx(x, y, bair_high);
    	}
    }
		
    break;
    case AT_DAIR:
    	if window == 1 and window_timer == 8 and !hitpause {
    		sound_play(sound_get("sfx_delta_explosion"), false, noone, 0.7, 1)
    		sound_play(asset_get("sfx_mol_flash_explode"))
    	}
    	if (window == 3 && window_timer == window_end && !hitpause){
    		spawn_hit_fx(x, y, dair_linger);
    	}
    break;
    case AT_FSTRONG:
		if (window == 1 && window_timer == window_end && !hitpause){
			spawn_base_dust(x - 14*spr_dir, y, "dash_start", spr_dir);
		}
		if (window == 2){
    		if (window_timer == window_end-1 && !hitpause){
    			sound_play(sound_get("sfx_delta_explosion_fire"));
    			sound_play(sound_get("sfx_delta_explosion"), false, noone, 0.5, 0.8)
    		}
		}
    	if (window == 3){
    		if (window_timer == window_end && !hitpause){
    			spawn_hit_fx(x, y, fstrong_linger);
    		}
    	}
    	
    	var factor = 1 + (0.5 * !has_hit)
    	if window == 4 and !hitpause {
    		if window_timer == floor(15*factor)
    		{
    			sound_play(sound_get("sfx_delta_fire_extinguish"), false, noone, 1, 1.2)
    		}
    		
      		if window_timer == floor(12*factor)
    		{
    			sound_play(sound_get("sfx_delta_head_spin"))
    		}  		
    	}
    break;
    case AT_DSTRONG:
    if (window == 1 && window_timer == 3 && !hitpause){
    	spawn_hit_fx(x, y, dstrong_poof_start);
    	sound_play(sound_get("poof"), false, noone, 0.5, 1.1);
		sound_play(asset_get("sfx_forsburn_disappear"));
    }
    if (window == 6 && window_timer == (has_hit? 11 : 16) && !hitpause){
    	sound_play(asset_get("sfx_forsburn_reappear"));
		sound_play(sound_get("magic_hit"), false, noone, 0.4, 1.1);
		sound_play(asset_get("sfx_bubblepop"));
		spawn_hit_fx(x - (10*spr_dir), y, dstrong_poof_end);
    }
    if (window == 2 || window == 4) && window_timer == window_end && !hitpause{
    	switch window{
    		case 2:
    		spawn_base_dust(x + (36*spr_dir), y, "dash_start", -spr_dir);
    		break;
    		case 4:
    		spawn_base_dust(x - (52*spr_dir), y, "dash_start", spr_dir);
    		break;
    	}
    }
    break;
    break;
    case AT_FSPECIAL:
    case AT_FSPECIAL_2:
    	can_fast_fall = false;
    	can_move = window > 3
    	can_wall_jump = true
    	if window == 1 and window_timer == window_end and !free and !hitpause{
    		vsp = -(short_hop_speed);
    		spawn_base_dust(x, y, "jump", spr_dir);
    	}
    	
    	if window == 3  and window_timer == window_end and !hitpause {
    		create_hitbox(attack, 1, x, y)
    	}
    	
    	if window == 3 and window_timer == window_end - 7 and !hitpause{
    		sound_play(sound_get("sfx_delta_broom_swipe"));
    		if (attack == AT_FSPECIAL){
    			sound_play(sound_get("broom_start"), false, noone, 0.6, 1);
    		} else {
    			sound_play(sound_get("broom_magic1"), false, noone, 0.75, 1);
    		}
    	}
		/*
		if (window == 1 or window == 2 or (window == 3 and window_timer < 10)) and shield_down {
			set_state(PS_PRATFALL)
			spawn_hit_fx(x,y-20,toadie_smoke)
			hsp = 6*spr_dir;
			vsp = -6
	    	sound_play(asset_get("sfx_forsburn_reappear"));
			sound_play(sound_get("magic_hit"), false, noone, 0.4, 1.1);
			sound_play(asset_get("sfx_bubblepop"));
		}*/

    	if window == 1 {
    		hsp *= 0.94;
    		vsp *= 0.94
    		fspecial_timer = 0
			fspecial_dir = 180*(spr_dir == -1)
    	}
    	if window == 3 and window_timer == window_end and !hitpause{
    		vsp = 0;
    		hsp = (attack == AT_FSPECIAL? 15*spr_dir : 18*spr_dir);
    	}
    	if window == 4 {
        	if (window_timer % 3 == 0 && hsp != 0) and !hitpause{
            	spawn_hit_fx(x - 16*spr_dir, y + 4 + (random_func(0, 42, true) - 42), nspecial_trail);
            	if (attack == AT_FSPECIAL_2){
            		var type =  random_func(9, array_length(part_shapes), true)
					var yy = bbox_top+random_func(4, bbox_bottom-bbox_top, false)
					var xx = (bbox_left-2)+random_func(5, (bbox_right+2)-(bbox_left-2), false)
					with spawn_hit_fx(xx, yy, part_shapes[type]) {
						hsp = lengthdir_x(random_func(2,2,false), 90)
						vsp = lengthdir_y(random_func(1,2,false), 90)
						if get_gameplay_time() mod 8 == 0 depth = other.depth-1
					}
            	}
        	}
    		var vert_dir = down_down-up_down;
    		fspecial_timer += !hitpause;
    		
    		if vert_dir != 0 {
    			var ang = 180*(spr_dir==-1)
    			fspecial_dir = clamp(fspecial_dir -(vert_dir*spr_dir*1), ang-60, ang+60)
    		}
    		
            if (!fspecial_ledgeforgiven and (free and place_meeting(x+hsp,y,asset_get("par_block"))))
            {
                for (var i = 0; i < 35; i++)
                {
                    if fspecial_ledgeforgiven break;
                    
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block")))
                    {
                        y -= i;
                        fspecial_ledgeforgiven = true;
                    }
                }
            }
    		
    		if (!special_down and fspecial_timer > 20) or fspecial_timer > fspecial_max_time
    		{
    			window_advance_to(attack, 4, 5, false)
    		}
    		
    		if !hitpause {
	    		var spd = (attack == AT_FSPECIAL? 15 : 18) - (8* (fspecial_timer / fspecial_max_time) )
	    		hsp = lengthdir_x(spd, fspecial_dir)
	    		vsp = lengthdir_y(spd, fspecial_dir)
    		}
    	}
    	
    	if window == 5 {
    		hsp *= 0.95
    		if (window_timer == 15 && !hitpause){
    			var end_poof = spawn_hit_fx(x, y, fspec_poof_end);
				sound_play(asset_get("sfx_forsburn_reappear"));
				sound_play(sound_get("magic_hit"), false, noone, 0.4, 1.1);
				sound_play(asset_get("sfx_bubblepop"));
    		}
    	}
    	
    	if (window == 2){
    		if (window_timer == window_end && !hitpause){
    			var start_poof = spawn_hit_fx(x, y, fspec_poof_start);
    			start_poof.follow_id = self;
	    		start_poof.follow_time = 5;
    			vsp *= 0.1;
    			sound_play(sound_get("poof"), false, noone, 0.5, 1.1);
				sound_play(asset_get("sfx_forsburn_disappear"));
    		}
    	}
    	if (attack == AT_FSPECIAL){
    		if (window  == 2 ) && (nspec_fully_charged && special_down) and !shield_down{
    			nspec_fully_charged = false;
    			nspecial_charge = false;
    			attack = AT_FSPECIAL_2;
    			sound_play(sound_get("block_appear"), false, noone, 0.7, 1.3);
    			sound_play(sound_get("sfx_delta_full_charge"), false, noone, 0.8, 1.2);
    			white_flash_timer = 10;
    			spawn_hit_fx(x,y-floor(char_height/2), vfx_charge_stored);
    			
    		}
    	}
    	if (attack == AT_FSPECIAL_2){
    		if (window == 4 && window_timer % 3 == 0){
    			create_hitbox(AT_FSPECIAL_2, 2, x + (6*spr_dir), y - 72);
    		}
    	}
    	
    break;
    case AT_NSPECIAL:
    can_fast_fall = false;
    can_wall_jump = true;
    	if (window == 1 && window_timer == window_end) || (window == 2) || (window == 3) || (window == 4) || (window == 7) || (window == 8) {
    		nspec_is_casting = true;
    	} else {
    		nspec_is_casting = false;
    	}
    	if (window == 1){
    		if (window_timer == window_end){
    			if (!hitpause && nspecial_loops == 0){
    				nspec_loop_sfx = sound_play(sound_get("magic_charge_loop_start"), false, noone, 1.5);
    			}
				if (!free){
					spawn_base_dust(x - 20*spr_dir, y, "dash", spr_dir);
					spawn_base_dust(x + 20*spr_dir, y, "dash", -spr_dir);
				}
    			if (!special_down){
    				window = 3;
    				window_timer = 0;
    				sound_stop(nspec_loop_sfx);
    			}
    			if (nspecial_charge >= nspecial_max_charge){
    				window = 7;
    				window_timer = 0;
    				sound_stop(nspec_loop_sfx);
    			}
    		}
    	}
    	if (window == 2){ //proj on release, cancel + store on shield
    		if down_pressed and !freemd {
    			y+=4
    		}
		if (window_timer % 20 == 0 && !hitpause){
			if (!free){
				spawn_base_dust(x - 20*spr_dir, y, "dash", spr_dir);
				spawn_base_dust(x + 20*spr_dir, y, "dash", -spr_dir);
				}
			}
    		nspec_loop_timer++;
    		var type =  random_func(9, array_length(part_shapes), true)
    		if get_gameplay_time() mod 4 == 0 {
    			var dir = random_func(4, 360, true)
    			
    			var dist = random_func(6,22,false)
    			var xx = lengthdir_x(dist, dir)
    			var yy = lengthdir_y(dist, dir)
    			with spawn_hit_fx(x-(46*spr_dir)+xx, y-68+yy, part_shapes[type]) {
    				hsp = lengthdir_x(random_func(2,2,false), dir)
    				vsp = lengthdir_y(random_func(1,2,false), dir)
    			}
    		}
    		
    		if (nspecial_charge < nspecial_max_charge){
    			nspecial_charge++;
    		}
    		if (!special_down){
    			if (nspecial_charge >= nspecial_max_charge){
    				window = 7;
    				window_timer = 0;
    			} else {
    				window = 3;
    				window_timer = 0;
    			}
    			sound_stop(nspec_loop_sfx);
    			nspecial_loops = 0;
    			nspec_loop_timer = 0;
    		}
    		if (shield_down){
    			window = 11;
    			window_timer = 0;
    			sound_stop(nspec_loop_sfx);
    			nspecial_loops = 0;
    			nspec_loop_timer = 0;
    			sound_play(sound_get("sfx_delta_charge_cancel"));
    		}
    		if (window_timer == window_end && !hitpause){
    			nspecial_loops++;
    		}
    	}
    	if (window == 3){
    		if (window_timer == window_end && !hitpause){
    			sound_play(sound_get("sfx_delta_swipe1"), false, noone, 1, 1);
    		}
    	}
    	if (window == 4){
    		if (window_timer == window_end && !hitpause){
    			nspecial_charge = 0;
    		}
    	}
    	if (window == 5){
    		if (window_timer == window_end && !hitpause){
    			spawn_hit_fx(x, y, nspec_linger);
    		}
    	}
    	if (window == 7){
    		if (window_timer == window_end && !hitpause){
    			sound_play(sound_get("sfx_delta_swipe4"), false, noone, 1, 1);
    			sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.7, 1.35);
    			sound_play(sound_get("sfx_delta_explosion_2"), false, noone, 1, 1);
    			
    		}
    	}
    	if (window == 8){
    		if window_timer == 3 and !hitpause {
    			with spawn_hit_fx(x+(80*spr_dir),y-30,vfx_shockwave){
    				depth = other.depth-1
    			}
    		}
    		 if (window_timer == window_end && !hitpause){
    			nspecial_charge = 0;
    			nspec_fully_charged = false;
    		}
    	}
    	if (window == 9){
    		if (window_timer == window_end && !hitpause){
    			spawn_hit_fx(x, y, nspec_charge_linger);
    		}
    	}
    break;
    case AT_USPECIAL:
    can_fast_fall = false;
    can_wall_jump = true;
    if (window == 1){
    	hsp *= 0.8
    	vsp *= 0.8
    	if (window_timer == 1 && uspec_second_teleport){
    		reset_attack_value(AT_USPECIAL, AG_CATEGORY);
    		hsp *= 0.2;
    	}
    	if (window_timer == window_end && !hitpause){
    		sound_play(sound_get("teleport_disappear"), false, noone, 1, 1 + (uspec_second_teleport*0.08));
    		sound_play(asset_get("sfx_ori_stomp_spin"));
    	}
    }
    if (window == 2){
    	if (window_timer == window_end && !hitpause){
    		spawn_hit_fx(x, y, uspec_vfx)
    		uspec_start_pos_x = x;
    		uspec_start_pos_y = y;
    	}
    }
    if (window == 3){
    	hsp = 0;
    	vsp = 0;
    if (window_timer == window_end and !hitpause){
    	if (!joy_pad_idle){
    	hsp = lengthdir_x(150, joy_dir);
    	vsp = lengthdir_y(150, joy_dir);
    	}
     		sound_play(sound_get("teleport_appear"), false, noone, 1, 1 + (uspec_second_teleport*0.08));
    		sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 1, 0.75);
    	}
    }
    if (window == 4){
    	if (instance_exists(toadie_obj) && place_meeting(x, y, toadie_obj)){
    		toadie_obj.x = uspec_start_pos_x;
    		toadie_obj.y = uspec_start_pos_y;
    		toadie_obj.state = PS_SPAWN
			toadie_obj.state_timer = 0;
			toadie_obj.sprite_index = sprite_get("toady_spawn");
			toadie_obj.image_index = 0;
			with (toadie_obj){
				sound_play(asset_get("sfx_bubblepop"));
				sound_play(sound_get("teleport_disappear"), false, noone,0.7, 1.3);
				spawn_hit_fx(x, y - 14, other.toadie_smoke).depth = player_id.depth-6;
			}
    	}
    	if (nspec_fully_charged && special_down) and !shield_down{
    		reset_attack_value(AT_USPECIAL, AG_CATEGORY);
    		window = 1;
    		window_timer = 0;
    		uspec_second_teleport = true;
    		nspec_fully_charged = false;
    		nspecial_charge = false;
    		sound_play(sound_get("block_appear"), false, noone, 0.7, 1.3);
    		sound_play(sound_get("sfx_delta_full_charge"), false, noone, 0.8, 1.2);
    		white_flash_timer = 10;
    		spawn_hit_fx(x,y-floor(char_height/2), vfx_charge_stored)
    		if (!free){
    			hsp *= 0.025;
    		}
    	}
    	if (free){
    		hsp = 0;
    		vsp = 0;
    	} else { //ledge cancel
    		if (window_timer == 1){
    		set_attack_value(attack, AG_CATEGORY, 0);
    		hsp *= 0.025;
    		vsp = 0;
    		}
    	}
    	if (window_timer == window_end && !hitpause){
    		if (free){
    			window = 6;
    			window_timer = 0;
    		} 
    	}
    }
    if (window == 5){
    	set_attack_value(attack, AG_CATEGORY, 0);
    }
    break;
    case AT_TAUNT:
    if window == 2 && (window_timer == 4 || window_timer == 17 || window_timer == 31) && !hitpause{
    	sound_play(asset_get("sfx_swipe_weak1"), false, noone, 0.6, 1);
    }
    break;
    case AT_TAUNT_2:
    if (window == 1 && window_timer == window_end && !hitpause){
    	sound_play(sound_get("sfx_delta_charge_cancel"));
    	taunt_sound = sound_play(sound_get("taunt2_fingers"));
    }
    break;
}

#define ustrong_update_rings

for (var i = 0; i < array_length(ustrong_rings); i++)
{
	if ustrong_rings[i].state == -1 continue;
	
	
	if ustrong_rings[i].state == 1 or (ustrong_rings[i].state == 2 and state_timer < 5) and !hitpause and get_gameplay_time() mod 9 == 0{
		var ang = random_func(5+i, 360, true)
		var xx = lengthdir_x(73, ang);
		var yy = lengthdir_y(10, ang);
		
		
		with spawn_hit_fx(x+xx-(4*spr_dir), y + (ustrong_ring_offset - (i*ustrong_ring_separation))+yy-4, part_shapes[i*2]) {
			hsp = lengthdir_x(1.25, ang);
			vsp = lengthdir_y(1.25, ang)
			depth = other.depth - 1
		}
		
	}
	ustrong_rings[i].state_timer += !hitpause;
	if ustrong_rings[i].state_timer >= ustrong_ring_state_format[ustrong_rings[i].state].length {
		ustrong_rings[i].state_timer = 0;
		if "loop" not in ustrong_ring_state_format[ustrong_rings[i].state] or !ustrong_ring_state_format[ustrong_rings[i].state].loop {
			ustrong_rings[i].state++;
		}
	}
	
	if ustrong_rings[i].state == 2 and ustrong_rings[i].state_timer == 6 and !hitpause {
		var hb = i == array_length(ustrong_rings) - 1 ? 2 : 1
		var hitbox = create_hitbox(AT_USTRONG, hb, x, y)
		hitbox.hit_effect = hb == 1 ? ustrong_smallhfx[i] : ustrong_bighfx[i]
		hitbox.y_pos = ustrong_ring_offset - (i*ustrong_ring_separation)
		//print(hb)
		
		if hb == 2 and state == PS_ATTACK_GROUND and attack == AT_USTRONG and window != 7 {
			window_timer = 0;
			window = 7;
			if (!hitpause){
			spawn_base_dust(x - 14*spr_dir, y, "dash_start", spr_dir);
			spawn_base_dust(x + 14*spr_dir, y, "dash_start", -spr_dir);
			}
			sound_play(sound_get("sfx_delta_swipe2"), false, noone, 0.6, 1.4)
		}
	}
	
	if ustrong_rings[i].state >= array_length(ustrong_ring_state_format) {
		ustrong_rings[i].state = -1;
	}
}

#define ustrong_add_ring

array_push(ustrong_rings, {
	state:0,
	state_timer:0,
	sprite:sprite_get("ring"+string(array_length(ustrong_rings) + 1))
}
)

//iasa_script (insantly as soon as, aka switch back into full control/idle) without having to check for !was_parried
#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

// window_advance_to
// input the attack index, like AT_JAB, then the window you want to switch to happen from, then the window you want to switch to
// continuous is a boolean (true or false) that makes it automatically switch windows after going through the current window's frames
// example: window_advance_to(AT_TAUNT, 1, 2, true)
#define window_advance_to(attackindex, currentwindow, newwindow, continuous)
{
    if window == currentwindow
    {
	    if continuous
	    {
	        if window_timer >= get_window_value(attackindex, currentwindow,AG_WINDOW_LENGTH)
	        {
	            window = newwindow;
	            window_timer = 0;
	        }
	    }
	    else if !continuous
	    {
	        window = newwindow;
	        window_timer = 0;
	    }
    }
	
}

// makes the user flash yellow like a strong
// example: yellow_flash_cycle(8);
#define yellow_flash_cycle(cyclenumber)
{
    strong_flashing = (floor(get_gameplay_time()/cyclenumber) % 2) == 0;
}

// makes the user glow depending on the timer set. the larger the number the brighter and slower it flashes
// example: white_flash_cycle(10);
#define white_flash_cycle(timer)
{
	if white_flash_timer <= 1
	{
		white_flash_timer = timer;
	}
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;



