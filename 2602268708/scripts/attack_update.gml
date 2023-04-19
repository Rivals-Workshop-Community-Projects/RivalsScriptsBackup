//B - Reversals
if clamp(attack, 16, 19) == attack trigger_b_reverse();

//Other stuff
switch (attack) {	
	case AT_DTILT:
	    if window = 2 && window_timer = 1 && !hitpause {
		     array_push(phone_dust_query, [x + 24 * spr_dir, y, "dash_start", spr_dir]);
	    }
		if window = 3 && window_timer = 2 && !hitpause {
		    array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
	//Make dtilt jump-cancellable on hit
		can_jump = has_hit_player;
	break;
	case AT_DSPECIAL:
		if window == 1 && window_timer == 9 && !hitpause {
		//SKIP SHENNANS WITHOUT RUNE
		    if has_rune("K") {
			articount = 0;
			    if instance_exists (obj_article1) {
				    with obj_article1 {
					    if player_id = other.id {
						    other.articount++;
						}
					}
				}
				if articount < 3 {
				    if free { vsp = -10; }
					instance_create(x,y-1,"obj_article1")
					move_cooldown[AT_DSPECIAL] = 10;
				}
			} else {
			    if free { vsp = -10; }
				instance_create(x,y-2,"obj_article1")
			}
		}
	break;
	case AT_FSPECIAL:
		//Random bob-omb
		if (window == 1 && window_timer == 1) && !has_rune("B") {
			bomb_numbering = random_func( 0, 4, false);
			attack_end();
		}
		
		if window <= 2 && special_down {
        fspeshold++;
        } else {
        fspeshold = 0;
        }
		
	break;
		
	case AT_USPECIAL:
	if window < 3 {
		super_armor = true;
	}
		switch window {
		
		
		    //sticking this rune code at the top so it doesnt break anything lmfao
			case 4:
			if has_rune("F") {
			can_wall_jump = true;
			    if (window_timer%2 = 1) && !hitpause {
	            set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW_CREATION_FRAME, window_timer+1);
	            }
			}
			break;
		
			case 1:
			if window_timer == 1 && !hitpause {
			    //putting this at the top JUST IN CASE
			    cannon_dir = 0;
				cannon_charge = 0;
				
			    if instance_exists(obj_article3){
				    //another hokey skip if no rune is active
				    if !has_rune("C") {
				        with(asset_get("obj_article3")){
						    if player_id = other {
				                disappear_time = disappear_time_max+1;
							}
				        }
					} else {
					articount2 = 0;
					cannon_oldest = noone;
					    with(asset_get("obj_article3")){
						    if player_id = other {
						        if other.articount2 = 0 { other.cannon_oldest = self; }
				                other.articount2++;
							}
				        }
						if articount2 = 3 {
						    with(cannon_oldest){
				                disappear_time = disappear_time_max+1;
				            }
						}
					}
				}
			}
			case 2:
				
				//slowdown, don't allow the player to move
				hsp *= 0.9;
				vsp *= 0.6;
				can_move = false;
				
				//don't execute the next code if you're in the first window
				if window == 1 break;
				
				if cannon_charge < 90 {
				cannon_charge++;
				}
				
				var dir, new_dir;
				dir = left_down - right_down;
				if (!joy_pad_idle){
					new_dir = clamp(cannon_dir + (dir*2), -80, 80);
					
					if dir != 0 and get_gameplay_time() mod 16 == 0 and cannon_dir != new_dir && !hitpause cannon_move_sound = sound_play(sound_get("cannon_move"))
						cannon_dir = new_dir;
				}
				if window_timer > 5 and !special_down
				{
					window++;
					window_timer = 0;
				}
				
				if window_timer = 90 && phone_cheats[CHEAT_CANON]{
				vsp = 0;
				window_timer = 89;
				}
			break;
			case 3:
				if window_timer == 5 && !hitpause
				{
				super_armor = false;
					var article = instance_create(x,y,"obj_article3");
					
					if cannon_charge > 90 {
					cannon_charge = 90;
					}
					
					//print("charge = " + string(cannon_charge));
					sound_play(sound_get("cannon_fire"));
					sound_stop(sound_get("cannon_move")); 
					
					var spd = 12+floor(cannon_charge/8.5);
					
					//print(spd);
					
					// im capping this because holy SHIT
					spd = clamp(spd, 0, 22);
					
					// maths
					hsp = lengthdir_x(spd, 90 + cannon_dir);
					vsp = lengthdir_y(spd, 90 + cannon_dir);
					move_cooldown[AT_USPECIAL] = 30;
					article.hsp = -hsp * .8;
					article.vsp = -vsp * .8;
					
					spawn_hit_fx( x, y, launchblast);
				}
			break;
		}
	break;
	case AT_DATTACK:
	    if window == 1 {
		dashcount = 0;
		    if window_timer%4 = 1 && !hitpause {
			    array_push(phone_dust_query, [x, y, "walk", spr_dir]);
			}
		}
		if window == 2 {
		    if window_timer = 3 && !hitpause {
		        dashcount++;
				array_push(phone_dust_query, [x, y, "walk", spr_dir]);
			}
			if !hitpause && ((dashcount > 4 && !has_rune("E") ) || (has_rune("E") && !attack_down)){
			window++;
			window_timer = 0;
		    }
		}
		
		if window >= 3 && has_hit {
		can_attack = true;
		}
	break;
	case AT_DAIR:
		if window == 1 vsp *= 0.9;
		can_fast_fall = false;
	break;
	case AT_UAIR:
	    if window < 5 {
	        hud_offset = floor(lerp(hud_offset, 60, .2));
		}
	break;
	case AT_UTILT:
	    if window > 1 && window < 3 {
	        hud_offset = floor(lerp(hud_offset, 56, .4));
		}
	break;
	
	case AT_DSTRONG:
	    can_fast_fall = false;
		
		switch window {
		    case 1:
			    if window_timer = 11 && !hitpause && !free {
		            array_push(phone_dust_query, [x, y, "jump", spr_dir]);
		        }
				if window_timer > 12 {
		            hud_offset = floor(lerp(hud_offset, 178, .2));
		        }
			break;
			case 2:
			    if window_timer < 4 {
				hud_offset = floor(lerp(hud_offset, 178, .2));
				}
				if window_timer == 4 && !hitpause {
		            if free { vsp = -5; }
					if has_rune("M"){
					    create_hitbox( AT_DSTRONG, 3, x + 64, get_stage_data(SD_TOP_BLASTZONE_Y) );
						create_hitbox( AT_DSTRONG, 3, x - 64, get_stage_data(SD_TOP_BLASTZONE_Y) );
						    create_hitbox( AT_DSTRONG, 3, x + 128, get_stage_data(SD_TOP_BLASTZONE_Y) - 32 );
						    create_hitbox( AT_DSTRONG, 3, x - 128, get_stage_data(SD_TOP_BLASTZONE_Y) - 32 );
						
						
					}
		        }
			break;
			case 4:
			    if window_timer >= 5 && free {
					can_move = true;
					can_dash = true;
					can_jump = true;
				}
			break;
		}
	break;
	case AT_USTRONG:
		if window > 1 {
			hud_offset = floor(lerp(hud_offset, 158, .2));
			
			if window == 2 && window_timer == 1 && !hitpause {
			    sound_play(asset_get("sfx_swipe_medium1"));
				array_push(phone_dust_query, [x+8, y, "walk", -1]);
				array_push(phone_dust_query, [x-8, y, "walk", 1]);
			}
			if window == 3 && !hitpause {
			    
				if (window_timer%2 = 1) && !hitpause {
	            set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, window_timer+1);
	            }
				
			    if window_timer == 13 && !hitpause {
			    sound_play(sound_get("sm64_shatter"));
				array_push(phone_dust_query, [x, y, "jump", spr_dir]);
				
				    //rune shennans
					if has_rune("I") {
					            silverstar = create_hitbox( AT_USTRONG, 4, x, y-70 );
						        silverstar.fx_particles = 2;
						    	silverstar.hsp = 4;
								silverstar.grav = 0.5;
							silverstar = create_hitbox( AT_USTRONG, 4, x, y-76 );
					        silverstar.fx_particles = 2;
						    silverstar.hsp = 2;
							silverstar.grav = 0.4;
					    silverstar = create_hitbox( AT_USTRONG, 4, x, y-82 );
						silverstar.fx_particles = 2;
						silverstar.grav = 0.35;
						    silverstar = create_hitbox( AT_USTRONG, 4, x, y-76 );
						    silverstar.fx_particles = 2;
							silverstar.hsp = -2;
							silverstar.grav = 0.4;
							    silverstar = create_hitbox( AT_USTRONG, 4, x, y-70 );
						        silverstar.fx_particles = 2;
							    silverstar.hsp = -4;
								silverstar.grav = 0.5;
					}
				
				}
			}
		} else {
		set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 0);
		}
	break;
	case AT_EXTRA_1:
	    if stickbthrow = true && state_timer = 1 && !hitpause {
	    spr_dir *= -1;
	    stickbthrow = false;
	    }
	break;
	
	case AT_BAIR:
	    if window = 1 {
	    set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
	    } else if window = 2 {
	    set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
	    }
	break;
	
	case AT_NAIR:
	    if window = 1 {
	    set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
	    } else if window = 2 {
	        if (window_timer%2 = 1) && !hitpause {
	        set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, window_timer+1);
	        }
	    }
	break;
	
	case AT_NSPECIAL:
	    //removes whifflag to account for grabbing objects counting as a "hit"
	    if nspecial_grabbed_player != noone {
	    has_hit = true;
	    }
	break;
	
	case AT_TAUNT_2:
	
	    if window = 1 && window_timer = 13 && !hitpause {
	        array_push(phone_dust_query, [x + 46 * spr_dir, y, "jump", spr_dir]);
	    } else if window == 2 {
		suppress_stage_music(0, 0.02);
		    if (window_timer == 1) && !hitpause {
            sound_play( lgbt_music, true, noone, 1, 1);
            }
		    if window_timer == 39 && taunt_down {
	        window = 2;
	        window_timer = 2;
			}
        } else {
		    sound_stop(lgbt_music);
		}
	
	case AT_EXTRA_2:
	    hud_offset = floor(lerp(hud_offset, 100, .2));
	case AT_TAUNT:
	case AT_NTHROW:
	    //keeps you being able to taunt during grab while still removing the infinite loop
		if nspecial_grabbed_player != noone && throw_offset = 0 {
		    move_cooldown[AT_TAUNT] = 2;
			move_cooldown[AT_TAUNT_2] = 2;
			move_cooldown[AT_EXTRA_2] = 2;
			move_cooldown[AT_NTHROW] = 2;
		}
	break;
	
	case AT_EXTRA_3:
	    if window = 1 && window_timer = 7 && !hitpause {
		    sound_play( lgbt_music, true, noone, 1, 1);
		} else if window = 2 {
	        suppress_stage_music(0, 0.02);
		}
	break;
	
	case AT_NTHROW:
	    if window = 1 && window_timer = 16 && !hitpause {
		    spawn_hit_fx(x, y, taunt_double);
		    y -= 48;
		}
	break;
	
	case AT_FSTRONG:
	    if window = 1 && window_timer = 11 && !hitpause {
		    array_push(phone_dust_query, [x + 36 * spr_dir, y, "jump", spr_dir]);
		}
	break;
	
	case AT_JAB:
	     if (window = 2 || window = 5) && (window_timer = 1 && !hitpause){
		     array_push(phone_dust_query, [x - 8 * spr_dir, y, "walk", spr_dir]);
		 }
		 if window = 8 && window_timer = 1 && !hitpause{
		     array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		 }
	break;
	
	case AT_FTILT:
	    if window = 2 && window_timer = 4 && !hitpause{
	        array_push(phone_dust_query, [x-8 * spr_dir, y, "dash_start", spr_dir]);
		}
	break;
	
	case AT_UTILT:
	    if window = 2 && window_timer = 1 && !hitpause{
	        array_push(phone_dust_query, [x+24 * spr_dir, y, "dash", -spr_dir]);
		}
	break;
	
	case 49:
	    if window == 1 && window_timer == 2 && !hitpause {
        sound_play(sound_get("final_spiral"));
        }
	break;
}

