if(attack == AT_JAB){
	if(window > 10 && window < 17){
		if(attack_pressed){
			keep_jab = true;
		}
	}
    if(window == 16 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        if(attack_down || keep_jab){
            window = 11;
            window_timer = 0;
            keep_jab = false;
        }
    }
}

if(attack == AT_DATTACK){
	if (k_grab_id != noone && window == 2 && hitpause){
		grab_move(x + 30*spr_dir, y - 10, k_grab_id);
    }
}

if(attack == AT_FTILT){
	if (window == 3 && window_timer >= 6 && is_attack_pressed(DIR_ANY)){
		window = 4;
		window_timer = 0;
    }
}

if(attack == AT_FSTRONG){
    //move into stun animation if parried
    if(window <= 8){
    	vsp /= 2;
		hsp /= 2;
    }
    if(window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !was_parried){
    	window = 6;
    	window_timer = 0;
    }
    else if(window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && free){
    	attack_end();
    	state = PS_PRATFALL;
    }
    else if(window == 4 && !k_stun_timer){
    	window = 5;
    	window_timer = 0;
    }
    else if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    	attack_end();
    	attack = 0;
    }
    
    //grab opponent
    if (k_grab_id != noone){
    	//stick to end of tail
        if(window == 2){
        	grab_move(grab_posX + 20 * spr_dir, grab_posY - 10, k_grab_id);
        }
        //drag in
        else if(window == 6){
        	grab_move(x + 45 * spr_dir, y - 10, k_grab_id);
        }
	}
	if(window > 6){
		k_grab_id = noone;
	}
    move_cooldown[attack] = 30;
}

if(attack == AT_USTRONG){
	if(window < 8){
		with (k_grab_id){
			grab_pos_x = other.x;
            grab_pos_y = other.y - 70;
			hurt_img = 1;
			hitstop = 2;
			x = ease_sineInOut(x, grab_pos_x, other.window_timer, 10);
            y = ease_sineInOut(y, grab_pos_y, other.window_timer, 10);
		}	
	}
	if(window == 7 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
		sound_play(asset_get("sfx_rag_axe_swing"), false, noone, 0.9, 1.1);
	}
}

if(attack == AT_DSTRONG){
	if((window == 3 || window == 5) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 2){
		sound_play(asset_get("sfx_rag_axe_swing"), false, noone, 0.5, 0.95);
	}
}

if(attack == AT_NAIR){
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		sound_play(asset_get("sfx_spin"));
	}	
}
if(attack == AT_DAIR){
	if(glassbounce){
		if( window < 6){
			window = 6;
			window_timer = 0;
			djumps = 0;
			sound_play(asset_get("sfx_absa_jump"))
		}
		else{
			vsp -= 1;
		}
	}
	else{
		if(window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			vsp = -8;
		}
	}
	if (k_grab_id != noone){
        if(window <= 5){
        	grab_move(x, y + 50, k_grab_id)
			vsp /= 2;
			hsp /= 2;
        }
	}
	if(window == 3 && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit? 1 : 1.5))){
		k_grab_id = noone;
    	attack_end();
    	attack = 0;
    }
    if(window > 5){
    	k_grab_id = noone;
    }
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2 || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_2){
    trigger_b_reverse();
}

if (attack == AT_FSPECIAL){
	can_move = false;
	if(window < 2 || window > 5){
		hsp /= 2;
		vsp /= 2;
	}
	//snap to ledge if slightly under when dashing into ledge
	else if(window == 2){
		vsp /= 2;
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
			interrupt = true;
			for (var i = 1; i < 40; i++){
				if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
					y -= i;
					break;
				}
			}      
		}
		if(has_hit){
			window = 3;
			window_timer = 0;
		}
		//skip attack window if no one is grabbed
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !has_hit){
			window = 5;
			window_timer = 0;
		}
	}
    can_fast_fall = false;
    can_wall_jump = true;
    //avoiding single frame of pratfall when grounded
    if((window == 5 || window == 8) && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit? 1 : 1.5))){
    	if(free && !has_hit){
    		set_state(PS_PRATFALL);
    	}
    }
	//flip direction if someone is grabbed and opposite direction is held
	else if(window == 3 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) * 0.80){
		if((left_down && spr_dir) || right_down && !spr_dir){
			spr_dir *= -1;
			window = 6;
			window_timer = 0;
		}
	}
	
	//flip window is on window 6 so end if not flipping
    if(window == 5 && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit? 1 : 1.5))){
    	k_grab_id = noone;
    	attack_end();
    	attack = 0;
    }
    
    //grab opponent
    if (k_grab_id != noone){
        if(window <= 3){
        	grab_move(x + 70*spr_dir, y - 20, k_grab_id);
        }
        else if(window > 5 && window <= 6){
        	grab_move(x + 50*spr_dir, y - 20, k_grab_id);
        }
    }
}

if (attack == AT_USPECIAL){
	can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
    //avoiding single frame of pratfall when grounded
    if(window == 6 && window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * (has_hit? 1 : 1.5))){
    	if(free){
    		set_state(PS_PRATFALL);
    	}
    }
    if (k_grab_id != noone && window == 3 && hitpause){
		grab_move(x + 20*spr_dir, y - 30, k_grab_id);
    }
}

if (attack == AT_DSPECIAL){
	hsp /= 1.5;
	vsp /= 1.5;
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    	sound_play(asset_get("sfx_abyss_explosion_start"));
    	adrenaline_timer = adrenaline_max_time;
    	dspec_container = instance_create(x, y, "obj_article1");
    	if(free){
    		set_article(dspec_container, "dspec", sprite_get("dspecialgas_air"), sprite_get("dspecialgas_air_hitbox"), [7, 18], 18, 3, 1)	
    	}
    	else{
    		set_article(dspec_container, "dspec", sprite_get("dspecialgas"), sprite_get("dspecialgas_hitbox"), [7, 18], 18, 3, 1)	
    	}
    	//consume death ring
    	if(instance_exists(deathring) && !deathring.dissipate){
    		deathring.transfer = true;
    		deathring.consume = true;
    		k_finish_timer = 1;
    		k_combo = 2;
    		k_combo_perm = true;
    	}
    }
    can_fast_fall = false;
    can_move = false
    move_cooldown[attack] = 30;
    move_cooldown[AT_NSPECIAL] = 30;
}

if (attack == AT_NSPECIAL){
	hsp/=2;
	vsp/=2;
	if(window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		if(joy_dir > 30 && joy_dir < 150 && !uthrows){
			if(joy_dir < 90){
				spr_dir = 1;
			}
			else if(joy_dir > 90){
				spr_dir = -1;
			}
    		uthrows++;
    		window = 3;
    		window_timer = 0;
		}
		else if(free && joy_dir > 210 && joy_dir < 330 && !dthrows){
			dthrows++;
			window = 4;
			window_timer = 0;
		}
	}
    else if((window == 2 || window == 3 || window == 4) && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
    	attack_end();
    	attack = 0;
    }
    can_fast_fall = false;
    move_cooldown[attack] = 25;
}

if(attack == AT_FSPECIAL_2){
	if(window == 1){
		hsp /= 2;
		vsp /= 2;
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			gas = instance_create(x, y, "obj_article1");
			set_article(gas, "fspec2", sprite_get("fspecial2gas"), sprite_get("fspecial2gas_hitbox"), [1, 47, 25, 76, 56, 99], 23, 3, 2)	
			sound_play(sound_get("gasglass"));
			sound_play(asset_get("sfx_spin_longer"));
		}
	}
	if(window < 3){
		if(window_timer < 18 && k_grab_id != noone){
			grab_move(x + 50*spr_dir, y - 20, k_grab_id);
		}
	}
	else{
		k_grab_id = noone;
	}
	can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
    
	if(window >= 2){
		//ledge snap
		if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
			for (var i = 1; i < 40; i++){
				if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
					y -= i;
					break;
				}
			}      
		}
	}
}

if(attack == AT_USPECIAL_2){
	if(window == 1){
		hsp /= 2;
		vsp /= 2;
		if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			gas = instance_create(x, y, "obj_article1");
			set_article(gas, "uspec2a", sprite_get("uspecial2agas"), sprite_get("uspecial2agas_hitbox"), [2, 48, 30, 70], 28, 3, 2)	
			sound_play(sound_get("gasglass"));
			sound_play(asset_get("sfx_spin_longer"));
		}
	}
	if(window > 1 && window < 3){
		vsp *= 0.95;
		if(k_grab_id != noone && window_timer < 24)
		grab_move(x + 10*spr_dir, y - 30, k_grab_id);
	}
	else if(window == 3 && window_timer = get_window_value(attack, window, AG_WINDOW_LENGTH)){
		gas = instance_create(x, y, "obj_article1");
		set_article(gas, "uspec2b", sprite_get("uspecial2bgas"), sprite_get("uspecial2bgas_hitbox"), [0], 28, 3, 2)	
	}
	can_move = false;
    can_fast_fall = false;
    can_wall_jump = true;
    move_cooldown[AT_USPECIAL] = 40;
    move_cooldown[AT_FSPECIAL] = 40;
}

if(attack == AT_TAUNT_2){
	if(window == 1){
		if(window_timer == 20){
			sound_play(sound_get("ruffle"));
		}
		else if (window_timer == 60){
			sound_play(asset_get("sfx_clairen_hair"));
		}
	}
}
#define set_article(gas, type, img_spr, hit_spr, a_windows, endf, a_speed, tier){
    gas.spr_dir = spr_dir;
    gas.gas_type = type;
    gas.spr = img_spr;
    gas.sprite_index = hit_spr;
    gas.anim_windows = a_windows;
    gas.endframe = endf;
    gas.anim_speed = a_speed;
    gas.tier = tier;
}

#define grab_move(move_toX, move_toY, pid){
	pid.hurt_img = 1;
	pid.hitstop = 2;
	pid.x += (move_toX - pid.x)/2;
	pid.y += (move_toY - pid.y)/2;
}