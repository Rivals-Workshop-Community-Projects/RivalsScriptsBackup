//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch(attack){
    case AT_DTILT:

        /*
        if((attack_down or down_stick_down) and !was_parried and window == 3 and (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and has_hit or window_timer = floor(get_window_value(attack, window, AG_WINDOW_LENGTH)*1.5))){
            has_hit = false;
            attack_end();
            window_timer = 0;
            window = 1;
        }*/
    break;
    
    case AT_FSPECIAL:
    	var step_up_height = 40;

		if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
		    for (var i = 0; i < step_up_height; i += 2) {
		        if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
		            x = x+hsp; 
		            y = y+vsp-i;
		            hsp = 0;
		            vsp = 0;
		            break;
		        }
		    }
		}
		///coded by supersonic
    
        can_move = false;
        can_fast_fall = false;
        //set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, special_down); //Do a funny flip
        /*if(window == 1 and shield_down and window_timer > 4){
            attack_end();
            hsp = spr_dir*6;
            vsp = -7;
            window_timer = 0;
            window = 0;
            attack = AT_EXTRA_1;
        }*/
        if(window == 1){
        	vsp = clamp(vsp, -6, 2);
        	/*if(special_down and window_timer == 4 and fspecial_stall_time < 20){
        		window_timer--;
        		fspecial_stall_time++;
        	}*/
              if((up_down or up_stick_down or shield_down)){
                  fspecial_direction = 1;
              } else if (free and (down_down or down_stick_down)){
                  fspecial_direction = 2;
              }
        }

        if(has_hit and !hitpause and !special_down and !special_pressed and window == 3){
            vsp = -7;
            hsp = (right_down-left_down)*4;
            if(hsp == 0){
                vsp = -8;
            }
            y+=2;
            free = true;
            destroy_hitboxes();
            attack_end();
            window = 0;
            window_timer = 0;
            attack = AT_FSPECIAL_2;
            set_attack(AT_FSPECIAL_2);
            hurtboxID.sprite_index  = sprite_get("fspecial_hit_hurt");
        }
        if(window > 2){
            can_wall_jump = true;
        }
        
        if(window == 2){
            switch(fspecial_direction){
                case 0:
                    hsp = spr_dir*14;
                    vsp = 0;
                    break;
                case 1:
                    hsp = spr_dir*11;
                    vsp = -6;
                    break;
                case 2:
                    hsp = spr_dir*11;
                    vsp = 6;
                    break;
            }
            if(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
                create_hitbox(AT_FSPECIAL, 1+fspecial_direction*2, floor(x), floor(y));
            }
            
        } else if (window == 3 and !hitpause){
            if(window_timer == 2){
                create_hitbox(AT_FSPECIAL, 2+fspecial_direction*2, floor(x), floor(y));
            }
            
            switch(fspecial_direction){
                case 0:
                    hsp = spr_dir*19;
                    vsp = 0;
                    break;
                case 1:
                    hsp = spr_dir*17;
                    vsp = -6.67;
                    break;
                case 2:
                    hsp = spr_dir*17;
                    vsp = 6.67;
                    break;
            }
        }
        if(window > 2){
        	if(fspecial_direction == 2 and !free and !was_parried and !hitpause){
        		if(hsp > 4 or hsp < -4)
        			hsp = spr_dir*10;
        		vsp = 0;
        		//y+=2;
        		attack_end();
        		destroy_hitboxes();	
        		landing_lag_time = 4;
        		set_state(PS_LANDING_LAG);
        		
        	}
        }
        
        if(window == 4){

        	if(window_timer == 1){
        		hsp = clamp(hsp, -10, 10);
        		if(!free){
        			hsp = clamp(hsp, -5, 5);
        		} else if(fspecial_direction == 1){
        			hsp = clamp(hsp, -6.5, 6.5);
        		}
        	}
        	if(free and (hsp > 5 or hsp < -5)){
        		hsp*=.95;
        	}
        }
        
        if(window == 4 and free and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) and !was_parried){
            attack_end();
            set_state(PS_PRATFALL);
        }
        break;
    case AT_FSPECIAL_2:
        can_fast_fall = true;
        if((shield_down or shield_pressed)){
            attack_end();
            set_state(PS_AIR_DODGE);
            can_shield = true;
        }
			
			
        	can_jump = true;
            can_special = true;
            can_attack = true;
  
        break;
    case AT_EXTRA_1:
        can_wall_jump = true;
        if(window == 1 and window_timer == 1){
        	vsp-=6;
        	hsp+=spr_dir*5;
        	hsp = clamp(hsp, -6, 6);
        	vsp = clamp(vsp, -9, 9);
        }
        if(!free){
        	set_state(PS_TECH_GROUND);
        }
        break;
    case AT_USPECIAL:
        can_fast_fall = false;
        if(window > 1){
            can_wall_jump = true;
        }
        if(window == 1){
            if(window_timer == 1){
                uspecial_init_hsp = hsp;
                uspecial_init_vsp = vsp;
            }
            hsp = clamp(uspecial_init_hsp, -2.5, 2.5);
            vsp = clamp(uspecial_init_vsp, -2.5, 1);
        }
        
        if(window == 1){
            var test1 = get_stage_data( SD_Y_POS );
    		var test2 = get_stage_data( SD_BOTTOM_BLASTZONE );
    		if (y + vsp > test1+test2){
    			vsp = -4;
    		}
    		if(window_timer == 8){
    			if(!joy_pad_idle){
    				uspec_angle = round(joy_dir) / 180 * -3.14; 
    			} else {
    				uspec_angle = round(90) / 180 * -3.14; 
    			}
    		}
        }
        
        if(window == 2 and window_timer == 2){
            var distance = 138;
            var distance_2 = 104;
            hsp = (distance*cos(uspec_angle));
            vsp = (distance_2*sin(uspec_angle));
        }

        if(window == 3 ){
        	if(special_down and place_meeting(x, y, wisp)){
        		instance_destroy(wisp);
        		window = 1;
        		window_timer = 0;
        	}
        	
        	if(window_timer < 12){
        		can_attack = true;
        		if(free){
        			prat_land_time = 24;
	        		uspecial_pratfall_go_brr = true;
        		} else {
        			prat_land_time = 10;
        			uspecial_pratfall_go_brr = false;
        		}
        	} else {
        		uspecial_pratfall_go_brr = false;
        		can_attack = false;
        		prat_land_time = 10;
        	}
        	
            hsp = clamp(hsp, -8, 8);
			vsp = clamp(vsp, -8, 8);
			if(!free){
			    set_state(PS_LANDING_LAG);
			    landing_lag_time = 15;
				
			} else {
			    hsp = clamp(hsp*.95, -3, 3); 
			    vsp = clamp(vsp*.95, -3, 4);
			}
			

			
        }
        break;
        case AT_UAIR:
        	hud_offset = 60;
        	break;
        case AT_UTILT:
        	hud_offset = 40;
        	break;
        case AT_DSPECIAL:
			if(instance_exists(wisp)){
				wisp.x = lerp(wisp.x, x, .024);
    			wisp.y = lerp(wisp.y, y-32, .024);
			}
        	
        	can_move = false;
        	can_fast_fall = false;
        	if(!hitpause and window ==2){
        		if (!joy_pad_idle){
		            hsp += lengthdir_x(1, joy_dir);
		            vsp += lengthdir_y(1, joy_dir);
			         
			        var fly_dir = point_direction(0,0,hsp,vsp);
			        var fly_dist = point_distance(0,0,hsp,vsp);
			        var max_speed = 4.5;
			        if (fly_dist > max_speed){
			            hsp = lengthdir_x(max_speed, fly_dir);
			            vsp = lengthdir_y(max_speed, fly_dir);
			        }
			        vsp = clamp(vsp, -4, 7);
        		} else {
        			hsp *= .95;
        			vsp *= .95;
        		}
        	}
        	
        	if(has_hit and (window == 2 or window == 3)){
        		can_jump = true;
        	}
        	if(window == 3){
        		if(!free and !was_parried){
        			set_state(PS_LANDING_LAG);
        			landing_lag_time = 10;
        		}
        	}
        	
        	break;
        case AT_USTRONG:
        	hud_offset = 80;
        	if(window == 2 and window_timer == 1){
        		sound_play(asset_get("sfx_swipe_medium2"), 0, noone, 1, 1.1);
        	}
        	break;
		case AT_TAUNT:
			if(!taunt_down and window == 1){
	    		window = 2;
	    		window_timer = 0;
	    	}
	    	if(window_timer == 30 and taunt_down){
	    		window_timer = 0;
	    	}
	    	break;
	    case AT_NSPECIAL:
	    	trigger_wavebounce();
	        can_fast_fall = false;
    		can_move = false;
    		if(window == 1){
    			if(instance_exists(wisp)){
    				nspecial_has_wisp = true;
    				//wisp.x = lerp(wisp.x, x+spr_dir*40, .12);
        			//wisp.y = lerp(wisp.y, y-32, .12);
    				if(window_timer == 15){
    					create_hitbox(AT_NSPECIAL, 1, floor(wisp.x-wisp.spr_dir*6), floor(wisp.y-32));
    					sound_play(asset_get("sfx_mol_norm_explode"));
        				spawn_hit_fx(floor(wisp.x-spr_dir*6), floor(wisp.y-32), 261);
    					instance_destroy(wisp);
    				}
    				
    			}
    		}
    		if(window == 2 and has_hit){
    			vsp = 0;
    			hsp = 0;
    		}
    		
    		if(window == 3 and window_timer == 1 and !hitpause){
    			if(!nspecial_has_wisp){
    				create_hitbox(AT_NSPECIAL, 4, x+spr_dir*32, y-32);

    			}
    			//if(instance_exists(wisp)){
    			//	
    			//}
    			//print("Wisp")
    			//wisp = instance_create(x+spr_dir*40, y-32, "obj_article1");
        		//wisp.hsp = spr_dir*9;
    			//wisp.vsp = vsp;
    		}
    		break;
    	case AT_EXTRA_2:
    		can_move = false;
    		can_fast_fall = false;
    		if(window == 1){
    			sprite_change_offset("extra2", 64, 64, 1);
    			hsp = hsp*.95;
    			vsp = vsp*.95;
    			draw_y = -30;
    			if(!joy_pad_idle){
    				uspec_angle = round(joy_dir) / 180 * -3.14; 
    				uspec_angle_draw = joy_dir;
    			} else {
    				uspec_angle = round(90) / 180 * -3.14; 
    				uspec_angle_draw = 90;
    			}
    			if(window_timer == 16){
	    			var distance = 8;
	    			spr_dir = 1;
	    			sprite_change_offset("extra2", 64, 74, 1);
	    			draw_y = -30;
	            	hsp = (distance*cos(uspec_angle));
	            	vsp = (distance*sin(uspec_angle));
	            	spr_angle = darctan2(hsp, vsp)-90;
	            	set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, lengthdir_x(20, spr_angle));
					set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, lengthdir_y(20, spr_angle)-30);
    			}
    		} else if(window == 2 and window_timer < 27 and !hitpause){
    			var distance = 9;
    			spr_dir = 1;
    			sprite_change_offset("extra2", 64, 74, 1);
    			draw_y = -30;
            	hsp = (distance*cos(uspec_angle));
            	vsp = (distance*sin(uspec_angle));
            	spr_angle = darctan2(hsp, vsp)-90;
            	if(!free){
            		vsp = -vsp;
            		window_timer = 27;
            	}

    		} else if (!hitpause){
    			sprite_change_offset("extra2", 64, 64, 1);
    			spr_dir = (hsp > 0)?1:-1;
    			spr_angle = 0;
    			hsp = clamp(hsp*.95, -4, 4); 
			    vsp = clamp(vsp*.95, -4, 4);
    		}
    		break;
    	case AT_DATTACK:

    		break;
    	case AT_UAIR:
    		if(has_hit){
    			set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 65);
    			set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 80);
    			set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -64);
    		}
    		/*
    	case AT_FAIR:
    		if(window == 1 ){
    			if(window_timer ==5){
    				sound_play(asset_get("sfx_flareo_rod"), 0, 0, .6, .95);
    				sound_play(asset_get("sfx_ori_spirit_flame_1"), 0, 0, .5, 1);
    			} 
    		}
    		break;
    	case AT_NAIR:
    		if(window == 1 and window_timer == 2){
    			sound_play(asset_get("sfx_flareo_rod"), 0, 0, .6, 1);
    			sound_play(asset_get("sfx_ori_spirit_flame_1"), 0, 0, .3, 1);
    		}
    		break;
    	case AT_DAIR:
    		if(window == 1 and window_timer == 9){
    			sound_play(asset_get("sfx_flareo_rod"), 0, 0, .7, .9);
    			sound_play(asset_get("sfx_ori_spirit_flame_1"), 0, 0, .4, .9);
    		}
    		break;
    	case AT_UAIR:
    	    if(window == 1 and window_timer == 2){
    			
    			sound_play(asset_get("sfx_ori_spirit_flame_1"), 0, 0, .4, 1.1);
    		} else if (window == 2 and window_timer == 4){
    			sound_play(asset_get("sfx_flareo_rod"), 0, 0, .6, .95);
    			
    		}*/
    		
    		
}

if(has_hit and attack != AT_DSPECIAL and !uspecial_pratfall_go_brr and !nspecial_used){
	
	if(down_down and special_pressed or dspecial_cancel_buffered){
		if(hitpause > 0){
			dspecial_cancel_buffered = true;
		} else {
			hitpause = 0;
			attack_end();
			destroy_hitboxes();
			set_attack(AT_DSPECIAL);
		}
	}
}



if uspecial_pratfall_go_brr and (attack == AT_UAIR or attack == AT_NAIR or attack == AT_DAIR or attack == AT_FAIR or attack == AT_BAIR){
	can_attack = false;
	if(window == get_attack_value(attack, AG_NUM_WINDOWS) and window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		set_state(PS_PRATFALL);
		attack_end();
		uspecial_pratfall_go_brr = false;
	}
}

if(uspecial_pratfall_go_brr and !free){
	attack_end();
	set_state(PS_LANDING_LAG);
	landing_lag_time = 24;
	uspecial_pratfall_go_brr = false;
}

/*
if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}*/



/*
if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}*/

#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}