//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}



var sparkle_timer = 1;

var random_x_range = 60;
var random_y_range = 60;

var random_x = random_func_2( 1, random_x_range, true ) - random_x_range/2;
var random_y = random_func_2( 2, random_y_range, true ) - random_y_range/2;

if (attack == AT_NAIR){
    if (window == 2){
        
        hud_offset = 20;
        
        //vfx stuff
        if (window_timer mod sparkle_timer == 0){
            spawn_hit_fx( x + (random_x)*spr_dir, y - 20 + (random_y), nair_sparkle );
        }
    }
    //sfx stuff
    if (window == 1){
        if (window_timer == 5){
            
            var sound_rng = random_func_2( 4, 2, true );
            
            if (sound_rng == 1){
                sound_stop(sound_get("hamoodclap"));
                sound_stop(sound_get("hamoodclap2"));
                sound_play(sound_get("hamoodclap"));
            }
            else{
                sound_stop(sound_get("hamoodclap"));
                sound_stop(sound_get("hamoodclap2"));
                sound_play(sound_get("hamoodclap2"));
            }
            
        }
    }
}


if (attack == AT_UAIR){
    if (window > 1){
        hud_offset = 45;
    }
}

var taunt_end_window_timer = 5*taunt_anim_speed - 1;

if (attack == AT_TAUNT){
    if (window == 1){
        taunt_loops = 0;
    }
    if (window == 2 && window_timer == taunt_end_window_timer){
        if (taunt_down){
            window = 4;
            window_timer = 0;
            taunt_loops++;
        }
    }
    if (window == 2){
        if (window_timer == 1){
            if (taunt_loops mod taunt_loops_audio_loop == 0 && taunt_loops > 0){
                sound_stop(sound_get("hamood_loop"));
                sound_play(sound_get("hamood_loop"));
            }
        }
    }
    if (window == 4 && window_timer == taunt_anim_speed - 1){
        window = 2;
        window_timer = 0;
    }
    if (window == 2 || window == 4){
        //suppress_stage_music( 0, 0.001 );
    }
    //start looping sound
    if (window == 1 && window_timer == taunt_anim_speed - 1){
        sound_play(sound_get("hamood_loop"));
    }
    //end looping sound
    if (window == 3 && window_timer == 1){
        sound_stop(sound_get("hamood_loop"));
    }
    if (!taunt_down && window != 3 && window >= 1 && taunt_loops >= taunt_loops_min){
        window = 3;
        window_timer = 0;
    }
}

if (attack == AT_UTILT){
    if (window > 1){
        hud_offset = 70;
    }
    if (window == 1 && window_timer == 2){
        spawn_base_dust( x - (0 * spr_dir), y, "land", spr_dir);
    }
    if (window == 3 && window_timer == 3){
        spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
		spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir*-1);
    }
}

if (attack == AT_DTILT){
    if (window == 1 && window_timer == 5){
        spawn_base_dust( x - (0 * spr_dir), y, "dash_start", spr_dir);
    }
}

if (attack == AT_DATTACK){
    if (window == 2 && window_timer < 15){
        if (grabbed != -4){
            if (grabbed.state == PS_HITSTUN){
            	//var random_x_dattack = random_func_2( 6, 20, true ) + 26;
            	//var random_y_dattack = random_func_2( 7, 12, true ) + - 6;
            	
            	grabbed.spr_dir = spr_dir*-1;
                grabbed.hitstop = 4;
                grabbed.x = lerp(grabbed.x + 32*spr_dir, x, .5);
                grabbed.y = lerp(grabbed.y + 0, y, .5);
            }
        }
    }
}

if (attack == AT_JAB){
    
    if (window == 3 && window_timer == 15){
        
        if (was_parried){
            
            was_parried = false;
            
        }
        
    }
}

if (attack == AT_FSTRONG){
	if (window == 2 && window_timer == 5){
		if (!hitpause && !hitstop){
			sound_play(asset_get("sfx_blow_heavy1"));
			spawn_base_dust( x + (54 * spr_dir), y, "dash_start", spr_dir*-1);
		}
	}
	if (window > 2 && window_timer < 10){
		hud_offset = 36;
	}
}

var ustrong_vsp = -9;

if (attack == AT_USTRONG){
	if (window == 1 && window_timer == 1){
		should_cancel = false;
		enter_ustrong_command_grab = false;
		reset_attack_value(AT_USTRONG, AG_NUM_WINDOWS);
		reset_attack_value(AT_USTRONG, AG_CATEGORY);
	}
	if (window == 2 && window_timer == 4){
		set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
		if (!hitpause && !hitstop){
			spawn_base_dust( x + (0 * spr_dir), y, "jump", spr_dir);
		}
	}
	if (window == 3 && window_timer == 1 && !hitpause && !hitstop){
		vsp = ustrong_vsp;
		hsp = 2*spr_dir;
	}
	if (window > 2){
		can_move = false;
	}
	if (enter_ustrong_command_grab == true){
		enter_ustrong_command_grab = false;
		destroy_hitboxes();
		window = 5;
		window_timer = 0;
		set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 8);
	}
	if (window == 5 || window == 6){
		hsp = 0;
		vsp = 0;
        grabbed.hitstop = 4;
        grabbed.x = lerp(grabbed.x + 32*spr_dir, x, .5);
        grabbed.y = lerp(grabbed.y + 4, y, .5);
	}
	if (window == 5){
		if (can_cancel && !should_cancel){
			//set alarm lifetime/speed so it doesnt disappear
			with (alarm_obj){
				state_timer = 0;
				hsp = 0;
				vsp = 0;
			}
			sound_play(sound_get("alert"));
			should_cancel = true;
		}
	}
	if (window == 6){
		if (window_timer == 5){
			if (!hitpause && !hitstop){
				spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
			}
		}
		
		//alarm cancel
		if (should_cancel){
					window = 9;
					window_timer = 0;
					set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 12);
					djumps = 0;
					sound_play(sound_get("doink"));
					with (alarm_obj){
						sound_play(sound_get("beep"));
						state = 2;
						state_timer = 0;
					}
					ustrong_galaxy = false;
		}
	}
}

//specials

if (attack == AT_DSPECIAL){
	if (window == 2){
		if (window_timer == 1){
			if (!hitpause && !hitstop){
				instance_create(x + (spr_dir*36), 0,"obj_article1");
			}
		}
	}
}

if (attack == AT_NSPECIAL){
	if (window == 1 && window_timer == 1){
		if (!hitpause && !hitstop){
			sound_play(sound_get("ham"));
		}
	}
	if (window == 1 && window_timer == 23){
		if (!hitpause && !hitstop){
			sound_play(sound_get("ood"));
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
		}
	}
}

if (attack == AT_FSPECIAL){
	if (window == 1){
		if (window_timer == 1){
			should_cancel = false;
			enter_fspecial_command_grab = false;
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
		}
		if (window_timer == 13){
			if (!hitpause && !hitstop){
				//spawn initial vfx
				spawn_hit_fx( x + 5*spr_dir, y - 20, 144 );
			}
		}
	}
	if (window == 2){
		
		//set speed
		if (window_timer == 1){
			if (!hitpause && !hitstop){
				hsp = fspec_hsp*spr_dir;
				vsp = fspec_vsp;
			}
		}
		
		can_move = false;
	}
	if (window == 3 || window == 2){
		
		can_wall_jump = true;
		can_fast_fall = false;
		
		//end early if grounded
		if (!free && window != 2){
			if (!hitpause && !hitstop){
				destroy_hitboxes();
				window = 4;
				window_timer = 0;
			}
		}
		
		//enter grab on hit
		if (enter_fspecial_command_grab){
			destroy_hitboxes();
			set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 10);
			window = 5;
			window_timer = 0;
			enter_fspecial_command_grab = false;
		}
		
	}
	if (window == 4){
		
		can_move = true;
		can_fast_fall = true;
		
		//bounce
		if (window_timer == 1){
			if (!hitpause && !hitstop){
				vsp = -6;
				hsp /= 2;
				spawn_hit_fx( x + 5*spr_dir, y - 20, 301 );
				sound_play(sound_get("tool_break"));
			}
		}
		
	}
	
	
	
	//grab stuff
	if (window == 5 || window == 6 || window == 7 || window == 8){
        grabbed.hitstop = 4;
        if (hsp < -grab_hsp_move){
        	hsp = -grab_hsp_move;
        }
        else if (hsp > grab_hsp_move){
        	hsp = grab_hsp_move
        }
        if (x < 50){
        	x = 50;
        }
        else if (x > room_width - 50){
        	x = room_width - 50;
        }
	}
	
	//grab particles
	if (window > 4 && window < 7){
        if (window_timer mod sparkle_timer == 0){
            spawn_hit_fx( x + (random_x)*spr_dir, y - 20 + (random_y), nair_sparkle );
        }
	}
	
	//grab speed
	if (window == 5){
		if (window_timer == 1){
			spawn_base_dust( x + (0 * spr_dir), y, "djump", spr_dir);
			vsp = -fspec_jump;
			hsp = 0;
		}
		if (window_timer > 0){
			if (vsp >= 0){
				window = 6;
				window_timer = 0;
			}
		}
		vsp++;
	}
	if (window == 6){
		if (window_timer == 1){
			vsp = fspec_jump;
		}
		//land
		if (!free || y > room_height - 50){
			window = 7;
			window_timer = 0;
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir*-1);
			sound_play(asset_get("sfx_blow_heavy1"));
		}
	}
	
	if (window > 6 && free){
		vsp = 0;
		djumps = 0;
	}
	
	if (window == 8){
		if (window_timer == 1){
			if (can_cancel && !should_cancel){
				//set alarm lifetime/speed so it doesnt disappear
				with (alarm_obj){
					state_timer = 0;
					hsp = 0;
					vsp = 0;
				}
				sound_play(sound_get("alert"));
				should_cancel = true;
			}
		}
	if (window == 8)
		if (window_timer == 3){
			if (should_cancel){
				window = 11;
				window_timer = 0;
				sound_play(sound_get("doink"));
				create_hitbox(AT_FSPECIAL, 4, x, y);
				
				if (alarm_obj != -4){
					with (alarm_obj){
						sound_play(sound_get("beep"));
						state = 2;
						state_timer = 0;
					}
				}
			}
		}
	}
	
	if (window == 10 || window == 12){
		can_wall_jump = true;
	}
	
}


//check if a pillow is out
var pillow_out = false;

with(asset_get("obj_article2")){
    if (player_id == other.id){
        pillow_out = true;
    }
}


uspec_window_1_length = get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH);
uspec_window_2_length = get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH);
uspec_window_4_length = get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH);
uspec_window_6_length = get_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH);

if (attack == AT_USPECIAL){
	if (window == 1){
		
		reset_attack_value(AT_USPECIAL, AG_NUM_WINDOWS);
		should_cancel = false;
		
		if (window_timer == 1){
			if (pillow_out){
				with(asset_get("obj_article2")){
				    if (player_id == other.id){
				        state = 2;
				        state_timer = 0;
				    }
				}
			}
		}
		
		//stuff
		if (window_timer == uspec_window_1_length - 1){
			if (!hitpause && !hitstop){
				sound_play(asset_get("sfx_swipe_weak1"));
			}
		}
		else{ //move forwards if holding forwards
			hsp = 0;
			vsp = 0;
			if (right_down){
				uspec_hsp = uspec_hsp_right;
			}
			else if (left_down){
				uspec_hsp = -uspec_hsp_right;
			}
			else{
				uspec_hsp = 0;
			}
		}
		
	}
	
	if (window == 2){
		if (!hitpause && !hitstop){
			if (window_timer == 1){
				//throw pillow code goes here!!!
				var pillow = instance_create(x + (spr_dir*10), y - 10, "obj_article2");
			}
			if (window_timer == uspec_window_2_length - 1){
				hsp = uspec_hsp;
				vsp = uspec_vsp;
			}
			else if (window_timer < uspec_window_2_length - 2){
				hsp = 0;
				vsp = 0;
			}
		}
	}
	
	//only spawn falling hitbox if nobody is grabbed
	if (window == 5 && window_timer == 1 && grabbed == -4){
		if (!hitpause && !hitstop){
			create_hitbox(AT_USPECIAL, 5, x, y);
		}
	}
	
	//land
	if (window == 6 && window_timer < uspec_window_6_length - 1){
		if (!free || (y > room_height - 50 && grabbed != -4)){
			destroy_hitboxes();
			if (grabbed != -4 && !(y > room_height - 50)){
				create_hitbox(AT_USPECIAL, 3, x, y);
			}
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir*-1);
			sound_play(asset_get("sfx_blow_heavy1"));
			window = 7;
			window_timer = 0;
		}
	}
	
	if (window == 4 && window_timer < uspec_window_4_length - 1){
		if (!free || (y > room_height - 50 && grabbed != -4)){
			destroy_hitboxes();
			if (grabbed != -4 && !(y > room_height - 50)){
				create_hitbox(AT_USPECIAL, 3, x, y);
			}
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (0 * spr_dir), y, "dash_start", spr_dir*-1);
			sound_play(asset_get("sfx_blow_heavy1"));
			window = 7;
			window_timer = 0;
		}
	}
	
	if (window == 4 && window_timer > 30){
		can_move = true;
	}
	
	//prevent going into the side blastzone when in grab
	if (window == 5 || window == 6){
		if (grabbed != -4){
			if (x < 50){
	        	x = 50;
	        }
	        else if (x > room_width - 50){
	        	x = room_width - 50;
	        }
		}
	}
	
	//hitbox 2
	if (window == 8){
		if (window_timer == 1){
			if (!hitpause && !hitstop){
				if (grabbed != -4 && !(y > room_height - 50)){
					create_hitbox(AT_USPECIAL, 2, x, y);
				}
			}
		}
	}
	
	if (window > 7){
		if (window < 10){
			if (free && y > room_height - 50){
				vsp = 0;
			}
		}
	}
	
	if (window < 5 && !(window == 4 && window_timer > 30)){
		can_move = false;
		can_fast_fall = false;
	}
	
	if (window > 5){
		can_wall_jump = true;
	}
	
	//grab code
	if (grabbed != -4){
		if (window > 1 && window < 8){
			grabbed.hitstop = 4;
			if (window < 6){
				grabbed.x = lerp(grabbed.x + 0*spr_dir, x, .5);
	    		grabbed.y = lerp(grabbed.y - 25, y, .5);
			}
			else{
				grabbed.x = lerp(grabbed.x + 0*spr_dir, x, .5);
	    		grabbed.y = lerp(grabbed.y + 25, y, .5);
			}
		}
	}
	
	if (window == 3 || window == 4){
		can_wall_jump = true;
	}
	
	//alarm cancel stuff
	if (window == 7 && grabbed != -4){
		//set cancel
		if (window_timer == 1){
			if (can_cancel && !should_cancel){
				//set alarm lifetime/speed so it doesnt disappear
				with (alarm_obj){
					state_timer = 0;
					hsp = 0;
					vsp = 0;
				}
				sound_play(sound_get("alert"));
				should_cancel = true;
			}
		}
		//do cancel if set
		if (window_timer == 3){
			if (should_cancel && !hitstop && !hitpause){
				
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 12);
				
				sound_play(sound_get("doink"));
				
				should_cancel = false;
				window = 10;
				window_timer = 0;
				
				if (!hitpause && !hitstop){
					create_hitbox(AT_USPECIAL, 4, x, y);
				}
				
				if (alarm_obj != -4){
					with (alarm_obj){
						sound_play(sound_get("beep"));
						state = 2;
						state_timer = 0;
					}
				}
			}
		}
	}
}




//--------------------------------------------

//Supersonic's Base Cast Dust Function
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
