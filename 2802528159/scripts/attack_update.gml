//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

switch(attack){
	case AT_NSPECIAL:
	grab_x = x + (40 * spr_dir);
    grab_y = y - 10;
	
	if(!special_down && window == 2 && window_timer >= 4){
		window = 3;
		window_timer = 0;
	}
	if (window == 3 && window_timer == 2){
		sound_play(sound_get("needle_1"));
	}
	if(attack_pressed || special_pressed) && window == 6 && timing == false{
		timing = true;
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 40 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 306);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	}else if((attack_pressed || special_pressed) && window > 3 && window < 6 && timing == false){
		timing = true;
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 11 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	}else if(timing == false){
		set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 11 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	}
	
	if(hit_player_obj.shield_pressed && window == 6 && opp_timing == false){
		opp_timing = true;
		opp_timed = true;
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
	}else if(hit_player_obj.shield_pressed && window > 3 && window < 6 && opp_timing == false){
		opp_timing = true;
		opp_timed = false;
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
	}else if(opp_timing == false){
		set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
	}
	
	if(instance_exists(victim) && window < 7 && window >= 3){
		//keep in hitpause
        hit_player_obj.hitstop++;
        hit_player_obj.hitpause = true;
        //force move to your grab position
        victim.x = lerp(victim.x, grab_x, 0.1)
        victim.y = lerp(victim.y, grab_y, 1.1)
    }else{
        victim = noone;
    }
    
    if(window == 7){
    	if(opp_timed){
    		hit_player_obj.hitstop = 0;
    		hit_player_obj.hitpause = 0;
    		hit_player_obj.y += 10;
    		hit_player_obj.free = false;
    		hit_player_obj.state = PS_PARRY;
    		hit_player_obj.perfect_dodging = true;
    		hit_player_obj.state_timer = 0;
    	}
    	hit_player_obj.grabbed = false;
    }
    
    if(has_rune("L")){
    	set_num_hitboxes(AT_NSPECIAL, 1);
    	if(window == 7 && window_timer == 1){
    		create_deathbox(x + 60 * spr_dir, y - 10, 30, 20, 0, true, 2, 1, 2);
    	}
    }
	break;
	case AT_NSPECIAL_AIR:
	set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 4);
	grab_x = x + (40 * spr_dir);
    grab_y = y;
	
	if(window == 3 && !free){
		window = 4;
		window_timer = 0;
	}
	
	if(window >= 4){
		sprite_change_offset("0_nspecial_air", 77, 160);
		sprite_change_offset("1_nspecial_air", 77, 160);
		sprite_change_offset("nspecial_air_hurt", 154, 320);
	}else{
		sprite_change_offset("0_nspecial_air", 77, 160 - 26);
		sprite_change_offset("1_nspecial_air", 77, 160 - 26);
		sprite_change_offset("nspecial_air_hurt", 154, 320 - 52);
	}
	
	if(hit == true){
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 2);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 8);
    }else{
        set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_GOTO, 9);
        set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 9);
    }
    if (window == 1 && window_timer == 22){
		sound_play(sound_get("needle_1"));
	}
	if (window == 7 && window_timer == 1){
		sound_play(sound_get("needle_2"));
	}
	if(attack_pressed || special_pressed) && window == 7 && timing == false && window_timer >= 3{
		timing = true;
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 40 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 15);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 306);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	}else if((attack_pressed || special_pressed) && window > 3 && window < 6 && timing == false){
		timing = true;
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 11 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	}else if(timing == false){
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 11 + (2 * anger_state));
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
	}
	
	if(instance_exists(victim) && window <= 7){
		//keep in hitpause
        hit_player_obj.hitstop++;
        hit_player_obj.hitpause = true;
        //force move to your grab position
        victim.x = lerp(victim.x, grab_x, 0.4)
        victim.y = lerp(victim.y, grab_y + (free? 52: 0), 1.1)
    }else{
        victim = noone;
    }
    
    if(window == 8){
    	hit_player_obj.grabbed = false;
    	hit_player_obj = noone;
    }
    
    if(has_rune("L")){
    	set_num_hitboxes(AT_NSPECIAL_AIR, 1);
    	if(window == 7 && window_timer == 4){
    		create_deathbox(x + 60 * spr_dir, y - 10, 30, 20, 0, true, 2, 1, 2);
    	}
    }
	break;
	case AT_DSTRONG:
	set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DSTRONG, 4, HG_DAMAGE, 8 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 8 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	case AT_FSTRONG:
	if(window == 1){
		move_cooldown[AT_FSTRONG] = 40;
	}
	set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 8 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 9 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 10 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	case AT_USTRONG:
	if(ustrong_whiff == true){
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
	}else{
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 3);
	}
	if(window == 3 && window_timer == 15 && wall == 0){
		spr_dir = (spr_dir = 1? -1: 1);
		x += 4 * spr_dir;
	}
	move_cooldown[AT_USTRONG] = 20;
	set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	case AT_FSPECIAL:
	if(window == 3 && window_timer == 9){
		move_cooldown[AT_FSPECIAL] = (has_rune("M")? 0: 300);
	}
	set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	case AT_FSPECIAL_AIR:
	set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4 + (plate_state * 2));
	set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 4 + (plate_state * 2));
	set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 4 + (plate_state * 2));
	set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 4 + (plate_state * 2));
	if(!free){
		state = PS_LAND;
		state_timer = 0;
	}
	break;
	case AT_DSPECIAL_AIR:
	set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	if(!free){
		state = PS_LAND;
		state_timer = 0;
	}
	break;
	case AT_DSPECIAL:
	if(window == 4 && window_timer >= 17){
		move_cooldown[AT_DSPECIAL] = (has_rune("M")? 0: 300);
	}
	if(!special_down && (window == 2 || window == 3) && (window == 2? window_timer >= 30 : window_timer >= 0)){
		window = 5;
		window_timer = 0;
	}
	if(window == 2){
		if(window_timer <= 40){
			orb_level = (has_rune("K")? 2: 0);
			fire = 1;
		}else{
			orb_level = (has_rune("K")? 2: 1);
			fire = 1;
		}
	}else if(window == 3){
		orb_level = (has_rune("K")? 2: 2);
		fire = 1;
	}
	if(fire == 1 && window == 1){
		window = 4;
		window_timer = 0;
		fire = 0;
	}
	if(window == 4 && window_timer < 15){
		switch(orb_level){
			case 0:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_small"));
			best_target = noone;
			for(ae=0;ae<5;ae++){
				with (oPlayer) if player == other.ae && other != self {
					if(!instance_exists(other.best_target)){
						other.best_target = self
					}else if(other.best_target != self){
						var compare_player = other.best_target;
						if(point_distance(x,y,other.x,other.y) < point_distance(other.x,other.y,compare_player.x,compare_player.y)){
							other.best_target = self; 
						};
					};
				};
			};
			enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -38);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 40);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_small);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_small);
			break;
			
			case 1:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_med"));
			best_target = noone;
			for(ae=0;ae<5;ae++){
				with (oPlayer) if player == other.ae && other != self {
					if(!instance_exists(other.best_target)){
						other.best_target = self
					}else if(other.best_target != self){
						var compare_player = other.best_target;
						if(point_distance(x,y,other.x,other.y) < point_distance(other.x,other.y,compare_player.x,compare_player.y)){
							other.best_target = self; 
						};
					};
				};
			};
			enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_med);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_med);
			break;
			
			case 2:
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("orb_big"));
			best_target = noone;
			for(ae=0;ae<5;ae++){
				with (oPlayer) if player == other.ae && other != self {
					if(!instance_exists(other.best_target)){
						other.best_target = self
					}else if(other.best_target != self){
						var compare_player = other.best_target;
						if(point_distance(x,y,other.x,other.y) < point_distance(other.x,other.y,compare_player.x,compare_player.y)){
							other.best_target = self; 
						};
					};
				};
			};
			enemy_dir = point_direction(x + 66, y, best_target.x, best_target.y);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, sin(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8 * spr_dir);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, cos(degtorad(angle_difference(enemy_dir, 0) + 90)) * 8);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -42);
			set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
			set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
			set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hit_big);
			set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, hit_big);
			break;
		}
	}
	break;
	case AT_JAB:
	
	if(special_pressed && wall = 0 && window >= 2){
		set_attack(AT_NSPECIAL);
	}
	
	//makes the spinny spinny
	if(attack_down && window == 5){
		set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 9);
	}else{
		set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 0);
	}
	
	//better cancel
	if(attack_pressed || attack_down) && joy_pad_idle{
		if(window == 1 && window_timer >= 7){
			set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 0);
		}else{
			set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
		}
		if(window == 2 && window_timer >= 9){
			set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 0);
		}else{
			set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);
		}
	}
	
	//plateless jab
	if(plate_state == 1 && window == 4){
		window = 6;
		window_timer = 0;
	}
	set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 1 + anger_state);
	set_hitbox_value(AT_JAB, 6, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_FTILT:
	if(special_pressed && wall = 0 && window >= 2){
		set_attack(AT_NSPECIAL);
	}
	if(window == 2 && ftilt_cancel == 0 && attack_pressed){
		ftilt_cancel = 1;
	}
	if(ftilt_cancel == 1){
		set_window_value(AT_FTILT, 2, AG_WINDOW_GOTO, 3);
	}else{
		set_window_value(AT_FTILT, 2, AG_WINDOW_GOTO, 4);
	}
	set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_USPECIAL:
	set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, (6 + (anger_state * (has_rune("J")? 3: 2))) * (stored_spark = true? 2: 1));
	set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, (6 + (anger_state * (has_rune("J")? 3: 2))) * (stored_spark = true? 2: 1));
	set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, (6 + (anger_state * (has_rune("J")? 3: 2))) * (stored_spark = true? 2: 1));
	set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, (6 + (anger_state * (has_rune("J")? 3: 2))) * (stored_spark = true? 2: 1));
	set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, (stored_spark = true? 15: 12));
	if(free && window < 4){
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_air_uspecial"));
	}else{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_uspecial"));
	}
	on_cooldown = 1;
	fall_through = true;
	can_fast_fall = false;
	if(window == 2){
		hsp = 0;
		vsp = 0;
		if(joy_dir >= -22.5 && joy_dir < 22.5){
			spr_dir = 1;
			head_rot = (spr_dir = 1? 0: 4);
		}else if(joy_dir >= 22.5 && joy_dir < 67.5){
			spr_dir = 1;
			head_rot = (spr_dir = 1? 1: 3);
		}else if(joy_dir >= 67.5 && joy_dir < 112.5){
			if(right_down){
				spr_dir = 1;
			}else if(left_down){
				spr_dir = -1;
			}
			head_rot = 2
		}else if(joy_dir >= 112.5 && joy_dir < 157.5){
			spr_dir = -1;
			head_rot = (spr_dir = 1? 3: 1);
		}else if(joy_dir >= 157.5 && joy_dir < 202.5){
			spr_dir = -1;
			head_rot = (spr_dir = 1? 4: 0);
		}else if(joy_dir >= 202.5 && joy_dir < 247.5){
			spr_dir = -1;
			head_rot = (spr_dir = 1? 5: 7);
		}else if(joy_dir >= 247.5 && joy_dir < 292.5){
			head_rot = 6;
			if(right_down){
				spr_dir = 1;
			}else if(left_down){
				spr_dir = -1;
			}
		}else if(joy_dir >= 292.5 && joy_dir < 337.5){
			spr_dir = 1;
			head_rot = (spr_dir = 1? 7: 5);
		}
		stored_head = head_rot;
	}
	if(window == 4){
		if(collision_point(x + 21, y, asset_get("solid_32_obj"), false, true) && (spr_dir = 1? (head_rot == 1 || head_rot == 0 || head_rot == 7): (head_rot == 3 || head_rot == 4 || head_rot == 5))){
			window = 7;
			window_timer = 0;
			temp_wall = 1;
			wall = temp_wall;
		}else if(collision_point(x, y - 33, asset_get("solid_32_obj"), false, true) && (head_rot == 1 || head_rot == 2 || head_rot == 3)){
			window = 8;
			window_timer = 0;
			temp_wall = 3;
			wall = temp_wall;
		}else if(collision_point(x - 21, y, asset_get("solid_32_obj"), false, true) && (spr_dir = 1? (head_rot == 3 || head_rot == 4 || head_rot == 5): (head_rot == 1 || head_rot == 0 || head_rot == 7))){
			window = 7;
			window_timer = 0;
			temp_wall = 2;
			wall = temp_wall;
		}else if(collision_point(x, y + 33, asset_get("solid_32_obj"), false, true) && (head_rot == 5 || head_rot == 6 || head_rot == 7)){
			window = 8;
			window_timer = 0;
			temp_wall = 0;
			wall = temp_wall;
		}
	}
	if(window == 3 && window_timer == 2){
		sound_play(asset_get("sfx_abyss_explosion"));
	}
	if(window > 4){
		stored_spark = false;
		hsp = 0;
		vsp = 0;
	}
	if(window > 4 && window < 9){
		if(window_timer == 1){
			switch(temp_wall){
			case 0:
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
			y += 32;
			spr_dir = 1;
			break;
			case 1:
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
			x += 12;
			spr_dir = 1;
			break;
			case 2:
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
			x -= 22;
			spr_dir = 1;
			break;
			case 3:
			set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 8);
			y -= 16;
			spr_dir = 1;
			break;
			}
		}
	}else if(window == 9 && window_timer == 1){
		wall = temp_wall
		switch(head_rot){
			case 0:
			x += 106 * spr_dir
			y += 134;
			break;
			case 1:
			x += 86 * spr_dir
			y += 46;
			break;
			case 3:
			x += 86 * spr_dir
			y += 46;
			break;
			case 4:
			x += 106 * spr_dir
			y += 134;
			break;
			case 5:
			y += 216;
			break;
			case 6:
			x -= 28 * spr_dir
			y += 238;
			break;
			case 7:
			y += 216;
			break;
		}
	}else if(window == 9 && window_timer == 15){
		y -= 40;
	}else{
		set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
	}
	break;
	
	case AT_DATTACK:
	if(special_pressed && wall = 0 && window >= 2){
		set_attack(AT_NSPECIAL);
	}
	set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 6 + (anger_state * (has_rune("J")? 3: 2)));
	if(attack_down && window == 2 && window_timer == 17){
		window_timer = 0;
		window = 2;
	}else if(down_down || !attack_down || place_meeting(x + (2 * spr_dir), y, asset_get("solid_32_obj"))) && window == 2{
		if(down_down){
			stored_spark = true;
			spark_timer = 300;
		}
		if(!place_meeting(x + (2 * spr_dir), y, asset_get("solid_32_obj"))){
			sound_stop(asset_get("sfx_absa_jabloop"));
			window = 3;
			window_timer = 0;
		}else{
			state = PS_IDLE;
		}
	}
	if(window == 1 && window_timer == 1){
		sound_play(asset_get("sfx_absa_jabloop"));
	}else if(window == 3){
		sound_stop(asset_get("sfx_absa_jabloop"));
	}
	if(window == 3 && window_timer == 9){
		x += 10 * spr_dir;
	}
	break;
	
	case AT_NTHROW:
	wall = 0;
	if(window_timer == 30){
		max_djumps = 2;
		y += 44;
		spr_dir *= -1;
	}else if(window_timer >= 24){
		if(window_timer == 24){
			vsp = -7;
		}
		hsp = -5 * spr_dir;
	}else{
		draw_x = 0;
		hsp = 0;
		vsp = 0;
	}
	break;
	
	case AT_DTHROW:
	if(window_timer == 1){
		y -= 62;
	}
	wall = 0;
	if(window_timer == 15){
		vsp = 10;
	}else{
		hsp = 0;
		vsp = 0;
	}
	break;
	
	case AT_UTILT:
	if(special_pressed && wall = 0 && window >= 2){
		set_attack(AT_NSPECIAL);
	}
	set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 3 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UTILT, 4, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_DTILT:
	if(special_pressed && wall = 0 && window >= 2){
		set_attack(AT_NSPECIAL);
	}
	set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 3 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 3 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_NAIR:
		if window == 2 && window_timer == 19
        {
            sound_play(asset_get("sfx_clairen_dspecial_counter_success"),false,noone,.8);
        } 
	set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 2 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_BAIR:
	set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_DAIR:
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_FAIR:
	set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 6, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_FAIR, 8, HG_DAMAGE, 1 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_UAIR:
	set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UAIR, 4, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UAIR, 5, HG_DAMAGE, 5 + (anger_state * (has_rune("J")? 3: 2)));
	set_hitbox_value(AT_UAIR, 6, HG_DAMAGE, 4 + (anger_state * (has_rune("J")? 3: 2)));
	break;
	
	case AT_TAUNT:
	set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get(string(plate_state) + "_taunt"));
	mask_index = sprite_get("taunt_box");
	char_height = lerp(char_height, 140, 0.6);
	if(window == 2){
		if(right_down && spr_dir == 1){
			window = 3;
			window_timer = 0;
		}else if(left_down && spr_dir == 1){
			window = 4;
			window_timer = 0;
		}else if(right_down && spr_dir == -1){
			window = 4;
			window_timer = 0;
		}else if(left_down && spr_dir == -1){
			window = 3;
			window_timer = 0;
		}
	}else if(window == 3){
		if(window_timer <= 12 || (window_timer >= 24 && window_timer <= 48) || window_timer >= 57){
			hsp = 3 * spr_dir;
		}
		if(spr_dir == 1 && !right_down) || (spr_dir == -1 && !left_down){
			window = 2;
			window_timer = 0;
		}
	}else if(window == 4 && window_timer == 25){
		x -= 110 * spr_dir;
		spr_dir *= -1;
		window = 2;
		window_timer = 0;
	}else if(window == 5 && window_timer == 20){
		set_attack(AT_NSPECIAL);
		window = 2;
	}
	if(window == 2 || window == 3) && special_pressed{
		window = 5;
		window_timer = 0;
	}
	if(window == 2 || window == 3) && taunt_pressed{
		window = 6;
		window_timer = 0;
	}
	//sfx
	if(window == 3 && window_timer == 12) || (window == 3 && window_timer == 48){
		sound_play(sound_get(string(random_func_2(floor(x % 200), 6, true)) + "_step"));
	}
	if(window == 6 && window_timer == 12){
		sound_play(sound_get(string(random_func_2(floor(x % 200), 6, true)) + "_step"));
		sound_play(sound_get(string(random_func_2(floor((x % 199) + 1), 6, true)) + "_step"));
	}
	break;
	
}

//sprite changes
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get(string(plate_state) + "_dattack"));
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial"));
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_dstrong"));
set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_fstrong"));
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get(string(plate_state) + "_ustrong"));
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_fspecial"));
set_attack_value(AT_FTILT, AG_SPRITE, sprite_get(string(plate_state) + "_ftilt"));
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_fspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get(string(plate_state) + "_dspecial"));
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get(string(plate_state) + "_utilt"));
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get(string(plate_state) + "_dtilt"));
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get(string(plate_state) + "_nair"));
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get(string(plate_state) + "_bair"));
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get(string(plate_state) + "_dair"));
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get(string(plate_state) + "_fair"));
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get(string(plate_state) + "_uair"));
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_ceilingjump"));
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
set_attack_value(AT_NSPECIAL_AIR, AG_AIR_SPRITE, sprite_get(string(plate_state) + "_nspecial_air"));
set_attack_value(AT_JAB, AG_SPRITE, sprite_get(string(plate_state) + "_jab"));
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get(string(plate_state) + "_walljump"));

