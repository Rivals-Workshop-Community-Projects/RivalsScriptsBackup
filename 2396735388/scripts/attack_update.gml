// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

var in_wind = false;
with obj_article3 {
	if player_id.url == other.url {
		if is_horizontal {
			if abs(y - (other.y-24)) < 40 && state == 1 {
				in_wind = true;
			}
		} else {
			if abs(x - other.x) < 40 && state == 1 {
				in_wind = true;
			}
		}
	}
}//*/

//print_debug(string(in_wind));

switch attack {
    case AT_EXTRA_1:
        can_move=false;
        if(up_strong_pressed||left_strong_pressed||right_strong_pressed||down_strong_pressed||down_down) && fspecial_timer<=0 {
        	can_attack = true;
        	if special_pressed {
        		can_special = true;
        	}
        }
        can_wall_jump=true;
        
        if(window==2&&fspecial_timer<=0){
            can_attack=true;
            can_special=true;
            if(shield_pressed||glide_energy<=0){
                window=3;
                window_timer=0;
                glide_energy=0;
            }
        }
        
        //glide baybeeeeee
        
        glide_speed = point_distance(0,0,hsp,vsp) + wind_accel * in_wind;
        glide_angle = point_direction(0,0,hsp,vsp);
        
        var temp_max_speed = max_glide_speed * !in_wind + boosted_max_glide_speed * in_wind;
        
        if(glide_speed>temp_max_speed){
            glide_speed = max(0,glide_speed-over_max_slowdown_rate);
        }
        
        if(fspecial_timer<=0){
            switch glide_turn_method {
                case 0:
                    if (!joy_pad_idle) {
        				var angle_change = angle_difference(glide_angle, joy_dir);
        				
        				var max_turn = sqrt(abs(glide_speed*5)) * turning_coefficient;
        				//if (glide_energy <= 0) max_turn /= 4;
        				max_turn = min(max_turn, 90);
        				
        				angle_change = clamp(angle_change, -max_turn, max_turn);
        				
        				glide_angle -= angle_change;
        			}
                break;
                default:
                    switch left_down-right_down {
                        case 0:
                        break;
                        case 1:
                            glide_angle+=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
                        break;
                        case -1:
                            glide_angle-=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
                        break;
                    }
                break;
            }
        }
        
        hsp = lengthdir_x(glide_speed,glide_angle);
        vsp = lengthdir_y(glide_speed,glide_angle) + glide_gravity * (1+(fspecial_timer>0)*0.5);
        
        if(sign(hsp)!=0){
            spr_dir=sign(hsp);
        }
        
        var supposed_spr_angle = 0;
        switch spr_dir {
            case 1:
                supposed_spr_angle=glide_angle;
            break;
            default:
                supposed_spr_angle=180+glide_angle;
            break;
        }
        
        switch window {
            case 1:
                if(window_timer<=10){
                    if(supposed_spr_angle>180){
                        supposed_spr_angle-=360;
                    }
                    spr_angle=ease_circInOut( 0, round(supposed_spr_angle), window_timer, 10 );
                } else {
                    spr_angle=supposed_spr_angle;
                }
            break;
            case 2:
                spr_angle=supposed_spr_angle;
            break;
            default:
                if(supposed_spr_angle>180){
                    supposed_spr_angle-=360;
                }
                spr_angle=ease_circInOut( round(supposed_spr_angle), 0, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH) )
            break;
        }
        
        if(window==3&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)){
            spr_angle=0;
        }
        
        glide_energy -= !in_wind;
        glided = true;
        
        fspecial_timer -= fspecial_timer>0;
        
    break;
    
    case AT_NAIR:
        /*
        can_upstrong=true;
        can_wall_jump=true;
        
        if(window==2){
            can_attack=true;
            can_special=true;
            if(shield_pressed||glide_energy<=0){
                window=3;
                window_timer=0;
                glide_energy=0;
            }
        }//*/
        
        can_move=false;
        
        if window == 1 {
            attack_end();
        }
        //glide baybeeeeee
        
        if(!hitpause){
            glide_speed = point_distance(0,0,hsp,vsp) + wind_accel * in_wind;
            glide_angle = point_direction(0,0,hsp,vsp);
            
            var temp_max_speed = max_glide_speed * !in_wind + boosted_max_glide_speed * in_wind;
            
            if(glide_speed>temp_max_speed){
                glide_speed = max(0,glide_speed-over_max_slowdown_rate);
            }
            
            switch glide_turn_method {
                case 0:
                    if (!joy_pad_idle) {
        				var angle_change = angle_difference(glide_angle, joy_dir);
        				
        				var max_turn = sqrt(abs(glide_speed*5)) * turning_coefficient;
        				//if (glide_energy <= 0) max_turn /= 4;
        				max_turn = min(max_turn, 90);
        				
        				angle_change = clamp(angle_change, -max_turn, max_turn);
        				
        				glide_angle -= angle_change;
        			}
                break;
                default:
                    switch left_down-right_down {
                        case 0:
                        break;
                        case 1:
                            glide_angle+=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
                        break;
                        case -1:
                            glide_angle-=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
                        break;
                    }
                break;
            }
            
            hsp = lengthdir_x(glide_speed,glide_angle);
            vsp = lengthdir_y(glide_speed,glide_angle) + glide_gravity;
            
            if(sign(hsp)!=0){
                spr_dir=sign(hsp);
            }
            
            var supposed_spr_angle = 0;
            switch spr_dir {
                case 1:
                    supposed_spr_angle=glide_angle;
                break;
                default:
                    supposed_spr_angle=180+glide_angle;
                break;
            }
            
            /*switch window {
                case 1:
                    if(window_timer<=10){
                        if(supposed_spr_angle>180){
                            supposed_spr_angle-=360;
                        }
                        spr_angle=ease_circInOut( 0, round(supposed_spr_angle), window_timer, 10 );
                    } else {
                        spr_angle=supposed_spr_angle;
                    }
                break;
                case 2:
                    spr_angle=supposed_spr_angle;
                break;
                default:
                    if(supposed_spr_angle>180){
                        supposed_spr_angle-=360;
                    }
                    spr_angle=ease_circInOut( round(supposed_spr_angle), 0, window_timer, get_window_value(attack,window,AG_WINDOW_LENGTH) )
                break;
            }//*/
            
            spr_angle=supposed_spr_angle;
            
            /*if(window==3&&window_timer==get_window_value(attack,window,AG_WINDOW_LENGTH)){
                spr_angle=0;
            }//*/
            
            glide_energy -= !in_wind;
            glided = true;
        } else {
            if down_pressed {
                do_a_fast_fall=true;
            }
        }
        
        if window < 3 {
            for(var i=1; i<=6; i++){
                reset_hitbox_value(AT_NAIR, i, HG_HITBOX_X);
                
                set_hitbox_value(AT_NAIR, i, HG_HITBOX_Y, lengthdir_y(get_hitbox_value(AT_NAIR, i, HG_HITBOX_X),glide_angle+90-90*spr_dir)*spr_dir-18);
                set_hitbox_value(AT_NAIR, i, HG_HITBOX_X, lengthdir_x(get_hitbox_value(AT_NAIR, i, HG_HITBOX_X),glide_angle+90-90*spr_dir));
            }
        } else {
            if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
                if(glide_energy>0){
                    starting_spr_angle=spr_angle;
                    set_attack(AT_EXTRA_1);
                    hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
                    spr_angle=starting_spr_angle;
                    window=2;
                    window_timer=0;
                } else {
                    spr_angle=0;
                }
            }
        }
        
    break;
    
    case AT_FSPECIAL_AIR:
    case AT_FSPECIAL:
    	if window == 1 && window_timer == 1 {
    		with obj_article2 {
    			if player_id == other {
    				if state == 1 {
    					is_horizontal = !is_horizontal;
    					is_up = (spr_dir * other.spr_dir - 1) / -2;
    					rotation_direction = other.spr_dir;
    					state = 7;
    				}
    			}
    		}
    	}//*/
    	move_cooldown[AT_FSPECIAL]=99999;
    
        if window == 2 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
            var temp_glide_angle = point_direction(0,0,hsp,vsp);
            
            var supposed_spr_angle = 0;
            switch spr_dir {
                case 1:
                    supposed_spr_angle=temp_glide_angle;
                break;
                default:
                    supposed_spr_angle=180+temp_glide_angle;
                break;
            }
            
            starting_spr_angle=supposed_spr_angle;
            set_attack(AT_EXTRA_1);
            hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
            spr_angle=starting_spr_angle;
            window=2;
            window_timer=0;
            
            fspecial_timer = 20;
        }
        
        if window == 3 {
            window_timer = 0;
            
            if (abs(hsp) < 1 && !hitpause) {
                window_timer=100;
                sound_stop(fspecial_slide_noise);
            }
            
            if state_timer > 4 && ((special_pressed || attack_pressed || up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed)&&!hitpause){
                window = 4;
                window_timer = 100;
                set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
                set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
                sound_play(asset_get("sfx_swipe_weak1"));
                hsp += (((right_down*spr_dir)==-1) - ((left_down*spr_dir)==1))*5;
                sound_stop(fspecial_slide_noise);
            }
        }
    
    break;
    
    case AT_JAB:
        if window == 7 {
            set_attack_value(AT_JAB, AG_OFF_LEDGE, 1);
            set_attack_value(AT_JAB, AG_CATEGORY, 2);
            can_move = false;
        }
        if window == 8 {
            can_move = false;
            if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
                var temp_glide_angle = point_direction(0,0,hsp,vsp);
                
                var supposed_spr_angle = 0;
                switch spr_dir {
                    case 1:
                        supposed_spr_angle=temp_glide_angle;
                    break;
                    default:
                        supposed_spr_angle=180+temp_glide_angle;
                    break;
                }
                
                starting_spr_angle=supposed_spr_angle;
                attack_end();
                set_attack(AT_EXTRA_1);
                hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
                spr_angle=starting_spr_angle;
                window=2;
                window_timer=0;
                
                fspecial_timer = 8 * !has_hit ;
            }
        }
    break;
    
    case AT_NSPECIAL:
        /*if window == 1 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
            var new_ring = instance_create(x, y-32, "obj_article1");
            new_ring.haccel= -.2 * spr_dir;
            new_ring.hsp = 7 * spr_dir;
            new_ring.spr_dir = spr_dir;
        }//*/
    	if (window == 1 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)) || window > 1 {
    		move_cooldown[AT_NSPECIAL] = 300;
    	}
    break;
    
    case AT_FSTRONG:
    case AT_USTRONG:
    case AT_DSTRONG:
    	if window == 1 {
    		can_move=false;
	        
	        //glide baybeeeeee
	        
	        glide_speed = point_distance(0,0,hsp,vsp) + wind_accel * in_wind;
	        glide_angle = point_direction(0,0,hsp,vsp);
	        
	        var temp_max_speed = max_glide_speed * !in_wind + boosted_max_glide_speed * in_wind;
	        
	        if(glide_speed>temp_max_speed){
	            glide_speed = max(0,glide_speed-over_max_slowdown_rate);
	        }
	        
	        if(fspecial_timer<=0){
	            switch glide_turn_method {
	                case 0:
	                    if (!joy_pad_idle) {
	        				var angle_change = angle_difference(glide_angle, joy_dir);
	        				
	        				var max_turn = sqrt(abs(glide_speed*5)) * turning_coefficient;
	        				//if (glide_energy <= 0) max_turn /= 4;
	        				max_turn = min(max_turn, 90);
	        				
	        				angle_change = clamp(angle_change, -max_turn, max_turn);
	        				
	        				glide_angle -= angle_change;
	        			}
	                break;
	                default:
	                    switch left_down-right_down {
	                        case 0:
	                        break;
	                        case 1:
	                            glide_angle+=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
	                        break;
	                        case -1:
	                            glide_angle-=sqrt(abs(glide_speed*4)+5)*turning_coefficient;
	                        break;
	                    }
	                break;
	            }
	        }
	        
	        hsp = lengthdir_x(glide_speed,glide_angle);
	        vsp = lengthdir_y(glide_speed,glide_angle) + glide_gravity * (1+(fspecial_timer>0)*0.5);
	        
	        /*if(sign(hsp)!=0){
	            spr_dir=sign(hsp);
	        }//*/
	        
	        var supposed_spr_angle = 0;
	        switch spr_dir {
	            case 1:
	                supposed_spr_angle=glide_angle;
	            break;
	            default:
	                supposed_spr_angle=180+glide_angle;
	            break;
	        }
	        
	        spr_angle_temp=supposed_spr_angle;
	        
	        //glide_energy -= !in_wind;
	        //glided = true;
	        
	        fspecial_timer -= fspecial_timer>0;
	        
	        /*if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && strong_emp {
	        	attack += 13;
	        	hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
	        }//*/
    	}
    	if(window == 2 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){//window == 2 && window_timer == 1){
    		switch attack {
    			case AT_FSTRONG:
    				spawn_hit_fx(x, y, fstrong_ring);
    			break;
    			case AT_DSTRONG:
    				spawn_hit_fx(x, y, dstrong_ring);
    			break;
    			default:
    				spawn_hit_fx(x, y, ustrong_ring);
    			break;
    		}
    		grabbed_by_zeph_ring = false;
    		grabbed_by_zeph_ring_id = noone;
    	}
    	if window == 3 {
    		var closest_ring = noone;
	        var closest_ring_distance = 1000000000;
	        var zeph_id = id;
			with pHitBox {
				if "effect" in self {
	    			if point_distance(x, y, other.x, other.y-24) < 80 && effect == 228 {
				        
				        with obj_article2 {
				            if player_id.url == other.player_id.url {
				                var current_ring_distance = point_distance(x,y,other.x,other.y);
				                
				                if  current_ring_distance < closest_ring_distance && state == 1 && point_distance(x, y, zeph_id.x, zeph_id.y-24) < 80 {
				                    closest_ring_distance = current_ring_distance;
				                    closest_ring = id;
				                }
				            }
				        }
	    			}
				}
    		}
    		if instance_exists(closest_ring) {
	        	grabbed_by_zeph_ring = true;
	        	grabbed_by_zeph_ring_id = closest_ring;
	        	hitstop = 0;
	        	hitstop_full = 0;
	        	closest_ring.state = 5;
	        	closest_ring.state_timer = 0;
	        }
    		if grabbed_by_zeph_ring {
    			attack_end();
    			destroy_hitboxes();
    			var attack_to_be = 0;
    			if grabbed_by_zeph_ring_id.is_horizontal {
    				attack_to_be = AT_FSTRONG_2;
    				spr_dir = grabbed_by_zeph_ring_id.spr_dir;
    			} else {
    				if grabbed_by_zeph_ring_id.is_up {
    					attack_to_be = AT_USTRONG_2;
    				} else {
    					attack_to_be = AT_DSTRONG_2;
    				}
    			}
    			set_attack(attack_to_be);
    			window = 2;
    			window_timer = 0;
    			hurtboxID.sprite_index = get_attack_value(attack_to_be, AG_HURTBOX_SPRITE);
    			hsp = 0;
    			vsp = 0;
    		}
    	}
    	if(window == 4 && (attack == AT_USTRONG )){//|| attack == AT_DSTRONG)){
    		vsp /= 1.2;
    	}
    	can_fast_fall=false;
    break;
    
    case AT_FSTRONG_2:
    case AT_DSTRONG_2:
    case AT_USTRONG_2:
    	if(window == 2 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH)){//window == 2 && window_timer == 1){
    		switch attack {
    			case AT_FSTRONG_2:
    				spawn_hit_fx(x, y, fstrong_ring);
    			break;
    			case AT_DSTRONG_2:
    				spawn_hit_fx(x, y, dstrong_ring);
    			break;
    			default:
    				spawn_hit_fx(x, y, ustrong_ring);
    			break;
    		}
    		sound_stop(strong_emp_noise);
    		grabbed_by_zeph_ring = false;
    		grabbed_by_zeph_ring_id = noone;
    	}
    	if window == 3 {
    		var closest_ring = noone;
	        var closest_ring_distance = 1000000000;
	        var zeph_id = id;
			with pHitBox {
				if "effect" in self {
	    			if point_distance(x, y, other.x, other.y-24) < 80 && effect == 228 {
				        
				        with obj_article2 {
				            if player_id.url == other.player_id.url {
				                var current_ring_distance = point_distance(x,y,other.x,other.y);
				                
				                if  current_ring_distance < closest_ring_distance && state == 1 && point_distance(x, y, zeph_id.x, zeph_id.y-24) < 80 {
				                    closest_ring_distance = current_ring_distance;
				                    closest_ring = id;
				                }
				            }
				        }
	    			}
				}
    		}
    		if instance_exists(closest_ring) {
	        	grabbed_by_zeph_ring = true;
	        	grabbed_by_zeph_ring_id = closest_ring;
	        	hitstop = 0;
	        	hitstop_full = 0;
	        	closest_ring.state = 5;
	        	closest_ring.state_timer = 0;
	        }
    		if grabbed_by_zeph_ring {
    			attack_end();
    			destroy_hitboxes();
    			var attack_to_be = 0;
    			if grabbed_by_zeph_ring_id.is_horizontal {
    				attack_to_be = AT_FSTRONG_2;
    			} else {
    				if grabbed_by_zeph_ring_id.is_up {
    					attack_to_be = AT_USTRONG_2;
    				} else {
    					attack_to_be = AT_DSTRONG_2;
    				}
    			}
    			spr_dir = grabbed_by_zeph_ring_id.spr_dir;
    			set_attack(attack_to_be);
    			window = 2;
    			window_timer = 0;
    			hurtboxID.sprite_index = get_attack_value(attack_to_be, AG_HURTBOX_SPRITE);
    			hsp = 0;
    			vsp = 0;
    		}
    		switch attack {
    			case AT_FSTRONG_2:
    				grab_offset_x = 32;
    				grab_offset_y = 6;
    			break;
    			case AT_DSTRONG_2:
    				grab_offset_x = 0;
    				grab_offset_y = 40;
    			break;
    			case AT_USTRONG_2:
    				grab_offset_x = 0;
    				grab_offset_y = -40;
    			break;
    		}
    		if window_timer < 6 {
	    		with oPlayer {
	    			if id != other {
			            if grabbed_by_zeph && grabbed_by_zeph_id == other {
			                state = PS_HITSTUN * free + PS_HITSTUN_LAND * !free;
			                state_timer = 0;
			                hitstun = 16;
			                hitstun_full = 16;
			                can_tech = false;
			                can_wall_tech = false;
			                vsp = 0;
			                hsp = 0;
			                x = other.x + other.grab_offset_x * other.spr_dir;
			                y = other.y + other.grab_offset_y;
			            }
	    			}
		        }
    		}
    	}
    	if(window == 4 && (attack == AT_USTRONG_2 )){//|| attack == AT_DSTRONG)){
    		vsp /= 1.2;
    	}
    	can_fast_fall=false;
    break;
    
    case AT_USPECIAL:
    	can_move = false;
    	if window == 2 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && !hitpause {
    		target_hsp *= spr_dir;
    		hsp = target_hsp;
    		vsp = target_vsp;
    		var new_fx = spawn_hit_fx(x, y, uspecial_explosion);
    		new_fx.spr_dir = spr_dir;
    		move_cooldown[AT_USPECIAL]=99999;
    		
    		var supposed_spr_angle = 0;
    		var anothertemp = point_direction( 0, 0, hsp, vsp );
	        switch spr_dir {
	            case 1:
	                supposed_spr_angle = anothertemp;
	            break;
	            default:
	                supposed_spr_angle = 180 + anothertemp;
	            break;
	        }
	        
	        spr_angle_temp = supposed_spr_angle;
    	}
    	if window == 3 && !hitpause {
    		if(window_timer == 1){
    			set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
    		}
    		var speed_scale = 1.3;
    		
    		if window_timer < 12 {
    			target_hsp -= .8 * spr_dir;
    			target_vsp += 1.18;
    		} else if window_timer < 16 {
    			target_hsp -= 1.1 * spr_dir;
    			target_vsp = ease_linear(round(target_vsp), 0, window_timer-12, 4);
    		} else if window_timer < 23 {
    			target_hsp += 1.1 * spr_dir;
    			target_vsp += 1.18;
    		} else if window_timer < 30 {
    			target_hsp += 1.1 * spr_dir;
    			target_vsp -= 1.1;
    		} else {
    			target_hsp = max_glide_speed * spr_dir / speed_scale * 0.75;
    			target_vsp = ease_linear(round(vsp), 0, window_timer-30, 5);
    		}
    		hsp = target_hsp*speed_scale;
    		vsp = max(target_vsp*speed_scale, -15);
    		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && !was_parried {
    			attack_end();
    			set_attack(AT_EXTRA_1);
	            hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
	            window=1;
	            window_timer=10;
    		}
    		
    		var supposed_spr_angle = 0;
    		var anothertemp = point_direction( 0, 0, hsp, vsp );
	        switch spr_dir {
	            case 1:
	                supposed_spr_angle = anothertemp;
	            break;
	            default:
	                supposed_spr_angle = 180 + anothertemp;
	            break;
	        }
	        
	        spr_angle_temp = supposed_spr_angle;
    	}
    break;
    
    case AT_USPECIAL_GROUND:
    	can_move = false;
    	if window == 2 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) && !hitpause {
    		target_hsp *= spr_dir;
    		hsp = target_hsp;
    		vsp = target_vsp;
    		var new_fx = spawn_hit_fx(x, y, uspecial_g_explosion);
    		new_fx.spr_dir = spr_dir;
    		move_cooldown[AT_USPECIAL]=99999;
    		attack_end();
    		attack = AT_USPECIAL;
    		hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    		
    		var supposed_spr_angle = 0;
    		var anothertemp = point_direction( 0, 0, hsp, vsp );
	        switch spr_dir {
	            case 1:
	                supposed_spr_angle = anothertemp;
	            break;
	            default:
	                supposed_spr_angle = 180 + anothertemp;
	            break;
	        }
	        
	        spr_angle_temp = supposed_spr_angle;
    	}
    break;
    
    case AT_DSPECIAL:
    	if window == 1 && window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
    		var newfx = spawn_hit_fx(x, y, dspecial_leave);
    		newfx.spr_dir = spr_dir;
    		char_height = 100000;
    	}
    	if window == 2 {
    		set_window_value(AT_DSPECIAL, 2, AG_WINDOW_GOTO, 6 - 3 * special_down);
    		set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6 - special_down);
    		if !joy_pad_idle {
    			hsp = lengthdir_x(9, joy_dir);
    			vsp = lengthdir_y(9, joy_dir);
    		}
    		fall_through = true;
    		if window_timer == get_window_value(attack,window,AG_WINDOW_LENGTH) {
    			char_height = 52;
    			hsp = clamp(hsp, -7, 7);
    			vsp = clamp(vsp, -5, 20);
				var closest_ring = noone;
		        var closest_ring_distance = 1000000000;
		        var zeph_id = id;
    			with pHitBox {
    				if "effect" in self {
		    			if point_distance(x, y, other.x, other.y-24) < 80 && effect == 228 {
					        
					        with obj_article2 {
					            if player_id.url == other.player_id.url {
					                var current_ring_distance = point_distance(x,y,other.x,other.y);
					                
					                if  current_ring_distance < closest_ring_distance && state == 1 && point_distance(x, y, zeph_id.x, zeph_id.y-24) < 80 {
					                    closest_ring_distance = current_ring_distance;
					                    closest_ring = id;
					                }
					            }
					        }
		    			}
    				}
	    		}
	    		if instance_exists(closest_ring) {
		        	grabbed_by_zeph_ring = true;
		        	grabbed_by_zeph_ring_id = closest_ring;
		        	hitstop = 0;
		        	hitstop_full = 0;
		        	closest_ring.state = 5;
		        	closest_ring.state_timer = 0;
		        }
	    		if grabbed_by_zeph_ring {
	    			attack_end();
	    			destroy_hitboxes();
	    			var attack_to_be = 0;
	    			if grabbed_by_zeph_ring_id.is_horizontal {
	    				attack_to_be = AT_FSTRONG_2;
	    				spr_dir = grabbed_by_zeph_ring_id.spr_dir;
	    			} else {
	    				if grabbed_by_zeph_ring_id.is_up {
	    					attack_to_be = AT_USTRONG_2;
	    				} else {
	    					attack_to_be = AT_DSTRONG_2;
	    				}
	    			}
	    			set_attack(attack_to_be);
	    			window = 2;
	    			window_timer = 0;
	    			hurtboxID.sprite_index = get_attack_value(attack_to_be, AG_HURTBOX_SPRITE);
	    			hsp = 0;
	    			vsp = 0;
	    		}
    		}
    	}
    	can_move = window == 6;
    break;
    
    case AT_TAUNT:
    	if window == 2 && state_timer > 60 && (attack_pressed || shield_pressed || taunt_pressed || jump_pressed || 
    	up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed){
    		window = 5;
    		window_timer = -1;
    	} else if window < 3 && special_pressed && secret {
    		taunt_buffered = true;
    		taunt_infinite = practice;
    		taunt_infinite_fake = true;
    	}
    	if window == 2 && taunt_buffered {
    		window = 3;
    		window_timer = -1;
    		set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
    	}
    	if window == 3 {
    		if practice {
    			if taunt_infinite = false {
    				window = 4;
    				window_timer = -1;
    			}
    		} else {
    			if attack_pressed || shield_pressed || special_pressed || taunt_pressed || jump_pressed || 
    			up_strong_pressed || right_strong_pressed || left_strong_pressed || down_strong_pressed {
    				window = 4;
    				window_timer = -1;
    			}
    		}
    	}
    break;
    
    default:
        
    break;
}