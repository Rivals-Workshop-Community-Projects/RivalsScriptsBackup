// attack_update

//Better B - Reversals
if (attack == AT_DAIR || attack == AT_USPECIAL || attack == AT_USPECIAL_2){
	if (window == 1 && window_timer <=5){
		if (spr_dir == 1 && left_down){
			spr_dir = -1
		} else if (spr_dir == -1 && right_down){
			spr_dir = 1
		}
	}
}
/*
if (attack == AT_FSTRONG_2){
	if (window == 1 && window_timer <= 3){
		if (spr_dir == 1 && left_down){
			spr_dir = -1
		} else if (spr_dir == -1 && right_down){
			spr_dir = 1
		}
	}
}
*/

//Cancel into Dspecial
if (attack == AT_FTILT || attack == AT_JAB || attack == AT_DTILT || attack == AT_NAIR || attack == AT_FSTRONG
|| attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_UTILT || attack == AT_FAIR || attack == AT_BAIR
|| attack == AT_BAIR || attack == AT_UAIR || attack == AT_DATTACK){
	if (down_down && special_pressed && has_hit) {
		if (move_cooldown[AT_DSPECIAL] == 0 || move_cooldown[AT_DSPECIAL_2] == 0){
			destroy_hitboxes();
			attack_end();
			if (!red_mode){
				attack = AT_DSPECIAL;
			}
			else{
				attack = AT_DSPECIAL_2;
			}
			CorrectHurtboxes();
			window = 1;
			window_timer = 0;
		}
	}
}

//Moves ------------------------------------------------------------------------

switch(attack){
    case (AT_FTILT):
		if (!red_mode){
			if (window == 1 && window_timer == 6){
				spawn_base_dust(x+60*spr_dir,y+2,"dash_start", 0 - spr_dir)
			}
		
		//Purple
		} else if (red_mode = 2) {
			if (window == 2 && window_timer = 6){
				vsp = -10;
				state = PS_ATTACK_AIR;
				attack = AT_FAIR;
			}
		} else {
			if (window == 1 && window_timer == 10){
				spawn_base_dust(x+60*spr_dir,y+2,"dash_start", 0 - spr_dir)
			}
		}
    	break;
    case AT_DATTACK:
        //ik none of this is optimal i cba
        //Stops your movement if you hold down or the opposite direction you're moving
        if (spr_dir == 1 && hsp >= 1){
            if (down_down || left_down){
                hsp -= .5
            }
        } else if (spr_dir == -1 && hsp <= -1) {
            if (down_down || right_down){
                hsp += .5
            }
        }
        //Spawns dust and plays sounds
        if (window == 1 && window_timer == 3){
        	//Blue
            if (!red_mode){
                sound_play(sound_get("bswish_light1"))
            }
            //Purple
            else if (red_mode == 2){
                sound_play(sound_get("bswish_light1"));
                sound_play(sound_get("rswish_light1"));
            }
            //Red
            else {
                sound_play(sound_get("rswish_light1"))
            }
            spawn_base_dust(x+20*spr_dir, y, "land", 1*spr_dir)
        }
        //Makes it so you can jump cancel
        if (has_hit_player){
            dattack_jump = true;
        }
        if (window == 6){
        	dattack_jump = false;
        }
        if (dattack_jump = true){
            can_jump = true;
            if (jump_pressed){
            	dattack_jump_vfx = true;
            	max_jump_hsp = 7;
            	air_max_speed = 8;
            	hsp = + 6*spr_dir;
            }
        }
        //Spawns Afterimage
        if (window == 2 && window_timer == 1 && !hitstop && !hitpause){
        	//Blue
            if (!red_mode){
                spawn_hit_fx(x,y,fx_bdattack)
            }
            //Purple
            else if (red_mode == 2){
                spawn_hit_fx(x,y,fx_pdattack)
            }
            //Red
            else {
                spawn_hit_fx(x,y,fx_rdattack)
            }
        }
        //Spawns dust and plays sounds
        if (window == 3 && window_timer == 1){
        	
			//Purple
			if (red_mode == 2){
				hsp += 2*spr_dir;
			}
			
        	//Blue
            if (!red_mode){
                sound_play(sound_get("bswish_light1"))
            }
            //Purple
            else if (red_mode == 2){
                sound_play(sound_get("bswish_light1"), 0, 0, .8, 1);
                sound_play(sound_get("rswish_light1"), 0, 0, .8, 1);
            }
            //Red
            else {
                sound_play(sound_get("rswish_light1"))
            }
            spawn_base_dust(x+20*spr_dir, y, "land", 1*spr_dir)
        }
        //Spawns Afterimage
        if (window == 4 && window_timer == 1 && !hitstop && !hitpause){
        	//Blue
            if (!red_mode){
                spawn_hit_fx(x,y,fx_bdattack)
            }
            //Purple
            else if (red_mode == 2){
                spawn_hit_fx(x,y,fx_pdattack)
            }
            //Red
            else {
                spawn_hit_fx(x,y,fx_rdattack)
            }
        }
        //Spawns dust and plays sounds
        if (window == 5 && window_timer == 1){
        	
			//Purple
			if (red_mode == 2){
				if (attack_down){
					attack_end();
					hsp += 2*spr_dir;
					window = 2
					window_timer = 0
				}
			}
			
        	//Blue
            if (!red_mode){
                sound_play(sound_get("bswish_med1"))
            }
            //Purple
            else if (red_mode == 2){
                sound_play(sound_get("bswish_med1"), 0, 0, .8, 1);
                sound_play(sound_get("rswish_med1"), 0, 0, .8, 1);
            }
            //Red
            else {
                sound_play(sound_get("rswish_med1"))
            }
            spawn_base_dust(x+40*spr_dir, y, "dash_start", -1*spr_dir)
        }
        //Spawns Afterimage
        if (window == 6 && window_timer == 1 && !hitstop && !hitpause){
        	//Blue
            if (!red_mode){
                spawn_hit_fx(x,y,fx_bdattack2)
            }
            //Purple
            else if (red_mode == 2){
                spawn_hit_fx(x,y,fx_pdattack2)
            }
            //Red
            else {
                spawn_hit_fx(x,y,fx_rdattack2)
            }
        }
        break;
    case AT_DSPECIAL:
    	trigger_wavebounce();
        red_mode = true
        red_num = 1;
        
        special_dash = true;
        move_cooldown[AT_FSPECIAL] = 0;
        move_cooldown[AT_FSPECIAL_2] = 0;
        move_cooldown[AT_USPECIAL] = 0;
        move_cooldown[AT_USPECIAL_2] = 0;
        
        if (window == 1 && window_timer == 1){
        	red_flash = 1.2;
            move_cooldown[AT_DSPECIAL] = stance_cd;
            move_cooldown[AT_DSPECIAL_2] = stance_cd;
        } if (no_cd == true){
            move_cooldown[AT_DSPECIAL] = 0;
            move_cooldown[AT_DSPECIAL_2] = 0;
        } if (window == 1 && window_timer == 2 && no_cd == 0){
            recharged = 0;
            recoverytimer = 0;
            recoverytick = 0;
        }
		if (!hitpause){
			with (kunai){ //article1
				if (player_id == other.id && state == 1
				|| player_id == other.id && state == 7
				|| player_id == other.id && state == 8){
				hsp = 0
				vsp = 0
				state = 3;
				state_timer = 0;
        		}
    		}
		}
        
        break;
    case AT_DSPECIAL_2:
    	//trigger_wavebounce();
		
        special_dash = true;
        move_cooldown[AT_FSPECIAL] = 0;
        move_cooldown[AT_FSPECIAL_2] = 0;
        move_cooldown[AT_USPECIAL] = 0;
        move_cooldown[AT_USPECIAL_2] = 0;
        
        if (window == 1 && window_timer == 1){
        	red_flash = 1.2;
            move_cooldown[AT_DSPECIAL] = stance_cd;
            move_cooldown[AT_DSPECIAL_2] = stance_cd;
        } if (no_cd == true){
            move_cooldown[AT_DSPECIAL] = 0;
            move_cooldown[AT_DSPECIAL_2] = 0;
        } if (window == 1 && window_timer == 2 && no_cd == 0){
            recharged = 0;
            recoverytimer = 0;
            recoverytick = 0;
        }
        red_mode = false
        red_num = 2;
        
        move_cooldown[AT_FSPECIAL] = 0;
        special_dash = true;
        
		if (!hitpause){
			with (kunai){ //article1
				if (player_id == other.id && state == 1
				|| player_id == other.id && state == 7
				|| player_id == other.id && state == 8){
				hsp = 0
				vsp = 0
				state = 3;
				state_timer = 0;
        		}
    		}
		}
        
        break;
    case AT_NAIR:
        if (window == 1 && window_timer == 1){
            if (!red_mode){
                sound_play(sound_get("bswish_light1"))
            } else {
                sound_play(sound_get("rswish_med1"))
            }
        }
        if (window == 2 && window_timer == 1){
            if (!red_mode){
                if (!hitpause && !hitstop){
                        attack_end();
                        var nair1 = create_hitbox(AT_NAIR, 1, x, y);
                        var nair2 = create_hitbox(AT_NAIR, 2, x, y);
                        nair1.fx_particles = 1;
                        nair2.fx_particles = 1;
                sound_play(sound_get("bswish_light1"))
                }
            } else {
                if (!hitpause && !hitstop){
                        attack_end();
                        var nair1 = create_hitbox(AT_NAIR, 3, x, y);
                        var nair2 = create_hitbox(AT_NAIR, 4, x, y);
                        nair1.fx_particles = 2;
                        nair2.fx_particles = 2;
                }
            }
        }
        if (window == 2 && window_timer == 5 && !hitpause && !hitstop){
            if (!red_mode){
                sound_play(sound_get("bswish_light1"))
                attack_end();
                    var nair1 = create_hitbox(AT_NAIR, 1, x, y);
                    var nair2 = create_hitbox(AT_NAIR, 2, x, y);
                    nair1.fx_particles = 1;
                    nair2.fx_particles = 1;
            }
        }
        if (window == 2 && window_timer == 9){
            if (!red_mode){
            }
        }
        if (window == 2 && window_timer == 10 && !hitpause && !hitstop){
            if (!red_mode){
                    var nair1 = create_hitbox(AT_NAIR, 3, x, y);
                    var nair2 = create_hitbox(AT_NAIR, 4, x, y);
                    nair1.fx_particles = 1;
                    nair2.fx_particles = 1;
            }
        }
        
        //Land Attack
        if (!red_mode){
			if (window == 2 && !free){
				destroy_hitboxes();
				window_timer = 0;
				window = 4;
				create_hitbox(AT_NAIR, 5, x, y);
			} else if (window != 4 && !free){
				destroy_hitboxes();
				window = 4;
				window_timer = 8;
			}
        } else {
        	if (window != 4 && !free && !hitstop && !hitpause){
				destroy_hitboxes();
				window = 4;
				window_timer = 8;
			}
        }
        
        break;
		case(AT_FSPECIAL):
		case(AT_FSPECIAL_2):
			
			can_fast_fall = false;
			can_move = false;
			
			//Makes the dash effect display over the player
			with (hit_fx_obj)
				if (hit_fx == other.fx_dash){
					depth = -10;
				}
			
			switch(window){
				
				//Window 1
				case(1):
					
					//Decides whether to go up down or neither
					if (up_down){
						dash_dir = 1;
					} else if (down_down){
						dash_dir = 2;
					} else {
						dash_dir = 0;
					}
					
					if (window_timer == 1){
						
						//SFX
						if (!hitstop && !hitpause){
							if (!red_mode) {
								sound_play(sound_get("bdash1"))
							} else {
								sound_play(sound_get("rdash1"))
							}
						}
						
					}//-Timer 1
					
					if (window_timer == 11){
						
						//Goes to Charged Mode if special held and kunai exists
						if (special_down && instance_exists(kunai) //article1
						|| special_down && kunai_proj != 0){
							if (instance_exists(kunai)){
								window_timer = 0
								window = 5
							}
						}
						
						//VFX and SFX for uncharged
						else if (!hitstop && !hitpause){
							if (red_mode){
								spawn_hit_fx( x+8, y-10, fx_dash );
								sound_play(sound_get("rdash2"))
								sound_stop(sound_get("rdash1"))
							} else {
								spawn_hit_fx( x+8, y-10, fx_dash );
								sound_play(sound_get("bdash2"))
								sound_stop(sound_get("rdash1"))
							}
						}
						
					}//-Timer 11
					
					break;//-Window 1
				//Window 2 && 3
				case(2):
				case(3):
					
					//If you held up or down in the last window, it'll change your speed accordingly
					if (dash_dir == 1){
						if (!red_mode){
							dash_angle += 2.7
							set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
							set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -3);
						} else {
							dash_angle += .7
							set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
							set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, -1);
						}
					} else if (dash_dir == 2){
						if (!red_mode){
							dash_angle -= 2.7
							set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
							set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 3);
						} else {
							dash_angle -= .7
							set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
							set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED, 1);
						}
					} else {
						if (dash_dir == 0){
							if (up_down){
								dash_dir = 1;
							} else if (down_down){
								dash_dir = 2;
							}
						}
						reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE);
						reset_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED);
						reset_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE);
						reset_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_VSPEED);
					}
					//-Up down stuff
					
					//Makes you bounce off wall
					var _block = asset_get("par_block");
					if (place_meeting(x + 1, y, _block) ||
					place_meeting(x - 1, y, _block) ||
					bounce == true)
					{
						
						can_fast_fall = true;	
						
						special_jump = true;
						set_state( PS_IDLE_AIR );
						
						old_hsp = -5 * spr_dir;
						old_vsp = -11;
						hsp = -5 * spr_dir;
						vsp = -11;
						
						bounce = false;
						
						dash_angle = 0;
						
						//Cooldowns
						move_cooldown[AT_FSPECIAL] = 15;
						move_cooldown[AT_FSPECIAL_2] = 15;
						move_cooldown[AT_USPECIAL] = 15;
						move_cooldown[AT_USPECIAL_2] = 15;
						if (special_dash == false){
							move_cooldown[AT_FSPECIAL] = 90;
							move_cooldown[AT_FSPECIAL_2] = 90;
							move_cooldown[AT_USPECIAL] = 90;
							move_cooldown[AT_USPECIAL_2] = 90;
						} special_dash = false; //-Cooldowns
						
						if (!red_mode){
							sound_play( sound_get( "land" ) );
							spawn_hit_fx( x+8, y-10, fx_bhit );
						} else {
							sound_play( sound_get( "land" ) );
							spawn_hit_fx( x+8, y-10, fx_rhit );
						}
						
						sound_stop(sound_get("bdash1"))
						sound_stop(sound_get("rdash1"))
						shake_camera( 3, 4 )
					}
					
					if(window_timer % 4 == 1){
							if (!red_mode) {
								var h = spawn_hit_fx(x + lengthdir_x(-24, dash_angle) * spr_dir, y + lengthdir_y(-24, dash_angle) - 36, fx_slash);
							} else {
								var h = spawn_hit_fx(x + lengthdir_x(-24, dash_angle) * spr_dir, y + lengthdir_y(-24, dash_angle) - 36, fx_rslash);
							}
							h.draw_angle = dash_angle * spr_dir;
					}	
				
					break;//-Window 2 && 3
					
				//Window 4
				case(4):
					dash_angle = 0;
					break;//-Window 4
					
				//Window 5
				case(5):
					
					//Figures out where to go
					dash_angle = point_direction(x, y, kunai_x_dest, kunai_y_dest);
					
					//Decides sprite direction based on where the kunai is
					if (dash_angle <= 300 && dash_angle >= 100) {
						spr_dir = -1
					} else if (dash_angle <= 100) {
						spr_dir = 1
					} else {
						spr_dir = 1
					}
					
					//If kunai doesnt exist, go into pratfall
					if (!instance_exists(kunai)){ //article1
						if (player_id != other.id){
							state = PS_PRATFALL;
							state_timer = 0;
						}
					}//-Pratfall
					
						//Timer 1
						if (window_timer == 1){
						
						//Switches kunai to the charging state
						if (!hitpause){
							with (kunai){ //article1
								if (player_id == other.id && state != 7){
								state = 5;
								state_timer = 0;
								}
							}
						}//-Kunai Charge
							
					}//-Timer 1
					
					//Timer 20
					if (window_timer == 20){
						
						//Spawn dash VFX (Fix this)
						/*
						var h = spawn_hit_fx(x + lengthdir_x(1, dash_angle),y + lengthdir_y(1, dash_angle) - 14, fx_dash );
						h.draw_angle = spr_angle;
						*/
						
						//Sfx
						if (!red_mode){
							sound_play(sound_get("bdash2"))
						} else {
							sound_play(sound_get("rdash2"))			
						}
						sound_stop(sound_get("bdash1"))
						sound_stop(sound_get("bdash1"))
						
						window = 6
						window_timer = 0
						
					}//Timer 30
					
					break;//-Window 5
				//Window 6
				case(6):
					
					fall_through = true;
					dash_angle = point_direction(x, y, kunai_x_dest, kunai_y_dest);
					spawnPixels(2,2,2);
					
					hsp = 25*dcos(point_direction(x,y,kunai_x_dest,kunai_y_dest + 10));
					vsp = -25*dsin(point_direction(x,y,kunai_x_dest,kunai_y_dest ));
					
					//Creates the Hitboxes
					if (window_timer = 1) {
						if (!red_mode){
							var fspec = create_hitbox(AT_FSPECIAL, 2, x,y);
								fspec.fx_particles = 1;
						} else {
							var fspec = create_hitbox(AT_FSPECIAL_2, 2, x,y);
								fspec.fx_particles = 2;
						}
					}
					
					//If kunai doesnt exist, go into pratfall
					if (!instance_exists(kunai)){ //article1
						sound_stop(sound_get("bdash1"))
						sound_stop(sound_get("bdash1"))
						if (player_id != other.id){
							state = PS_PRATFALL;
							state_timer = 0;
						}
					}//-Pratfall 
					
					//Switches kunai to the charging state
					with (kunai){ //article1
						if (player_id == other.id && state != 7){
						state = 5;
						state_timer = 0;
						}
					}//-Kunai Charge
					
					//Bounce off kunai / wall
					var _block = asset_get("par_block");
					if (spr_dir == 1 && place_meeting(x+10,y-20,kunai) //article1
					|| spr_dir == -1 && place_meeting(x,y-20,kunai) //article1
					|| place_meeting(x + 1, y, _block) 
					|| place_meeting(x - 1, y, _block)
					|| place_meeting(x , y + 1, _block) 
					|| place_meeting(x , y - 1, _block)
					|| place_meeting(x,y, kunai_proj) && kunai_proj != 0){
						
						set_state( PS_IDLE_AIR );
						dash_angle = 0;
						can_fast_fall = true;
						
						//Changes kunai state to zap
						with (kunai){ //article1
							if (player_id == other.id && state == 5
							|| player_id == other.id && state == 7
							|| player_id == other.id && state == 8){
							hsp = 0
							vsp = 0
							state = 6;
							state_timer = 0;
							}
						}//-Kunai state change
						
						//Choses which direction you bounce off the kunai
						//If bouncing off wall
						if (place_meeting(x + 1, y, _block) 
						|| place_meeting(x - 1, y, _block)
						|| place_meeting(x , y + 1, _block) 
						|| place_meeting(x , y - 1, _block)){
							hsp = -4 *spr_dir;
							vsp = -8;
							special_jump = true;
						} else {
							//If the kunai is not in the wall
							if (kunai.wall = 0){
								//Speed Boost
								max_jump_hsp = 5.5;
								air_max_speed = 6;
								//Holding Right
								if (right_down){
									hsp = 6;
									vsp = -8;
									//If facing left
									if (spr_dir == -1){
										special_jump = true;
									}
								} 
								//Holding left
								else if (left_down) {
									hsp = -6;
									vsp = -8;
									//If facing right
									if (spr_dir == 1){
										special_jump = true;
									}
								} 
								//Holding Nothing
								else {
									hsp = -4 *spr_dir;
									vsp = -8;
									special_jump = true;
								}
							//Kunai is in wall
							} else {
								hsp = -4 *spr_dir;
								vsp = -8;
								special_jump = true;
							}//-Bounce Direction
						}
						
						//Cooldowns
						move_cooldown[AT_FSPECIAL] = 15;
						move_cooldown[AT_FSPECIAL_2] = 15;
						move_cooldown[AT_USPECIAL] = 15;
						move_cooldown[AT_USPECIAL_2] = 15;
						if (special_dash == false){
							move_cooldown[AT_FSPECIAL] = 90;
							move_cooldown[AT_FSPECIAL_2] = 90;
							move_cooldown[AT_USPECIAL] = 90;
							move_cooldown[AT_USPECIAL_2] = 90;
						} special_dash = false; //-Cooldowns
						
						//Sfx and Vfx
						if (!red_mode){
							sound_play( sound_get( "land" ) );
							spawn_hit_fx( x+8, y-10, fx_bhit );
						} else {
							sound_play( sound_get( "land" ) );
							spawn_hit_fx( x+8, y-10, fx_rhit );
						}
						sound_stop(sound_get("bdash1"))
						sound_stop(sound_get("rdash1"))
						shake_camera( 3, 4 )
						
					}//-Bounce off Kunai / Wall
					
					break;//-Window 6
			}//-Window switch case
			
			//Stops dash sfx
			if (window != 1 && window != 5){
				sound_stop(sound_get("bdash1"))
				sound_stop(sound_get("rdash1"))
			}
			
			break;
		case(AT_USPECIAL):
		case(AT_USPECIAL_2):
        	var _block = asset_get("par_block");
			if (window == 2 || window == 3){
				if (place_meeting(x + 1, y, _block) ||
				place_meeting(x - 1, y, _block) ||
				place_meeting(x, y - 1, _block) ||
				bounce == true)
				{
					set_state( PS_IDLE_AIR );
					//If bouncing off a ceiling
					if (place_meeting(x, y - 1, _block)){
						old_hsp = 5 * spr_dir;
						old_vsp = -11;
						hsp = 5 * spr_dir;
						vsp = -11;
					} 
					//If bouncing off a wall
					else {
						special_jump = true;
						old_hsp = -5 * spr_dir;
						old_vsp = -11;
						hsp = -5 * spr_dir;
						vsp = -11;
					}
					dash_angle = 0;
					can_fast_fall = true;
					bounce = false;
					
					//Cooldowns
					move_cooldown[AT_FSPECIAL] = 15;
					move_cooldown[AT_FSPECIAL_2] = 15;
					move_cooldown[AT_USPECIAL] = 15;
					move_cooldown[AT_USPECIAL_2] = 15;
					if (special_dash == false){
						move_cooldown[AT_FSPECIAL] = dash_cd;
						move_cooldown[AT_FSPECIAL_2] = dash_cd;
						move_cooldown[AT_USPECIAL] = dash_cd;
						move_cooldown[AT_USPECIAL_2] = dash_cd;
					} special_dash = false; //-Cooldowns
					
					if (!red_mode){
						sound_play( sound_get( "land" ) );
						spawn_hit_fx( x+8, y-10, fx_bhit );
					} else {
						sound_play( sound_get( "land" ) );
						spawn_hit_fx( x+8, y-10, fx_rhit );
					}
						sound_stop(sound_get("bdash1"))
						sound_stop(sound_get("rdash1"))
						shake_camera( 3, 4 )
	            }
				if(window_timer % 4 == 1){
						if (!red_mode) {
							var h = spawn_hit_fx(x - 10 * spr_dir, y - 24, fx_slash);
						} else {
							var h = spawn_hit_fx(x - 10 * spr_dir, y - 24, fx_rslash);
						}
						h.draw_angle = 45 * spr_dir;
				}
			}
            break;
    	case(AT_DTILT):
    	
			with (hit_fx_obj)
				if (hit_fx == other.fx_bdtilt || hit_fx == other.fx_rdtilt ){
					depth = -10;
				}
				
			move_cooldown[AT_NSPECIAL] = 0;
			
			if (window == 1 && window_timer == 4){
				if (position_meeting(x+29*spr_dir,y+1,_block)){
					dtilt_offledge = true;
				} else {
					dtilt_offledge = false;
				}
			}
			
			//Normal Dtilt
			if (dtilt_offledge){
				if (window == 1 && window_timer == 5){
					//Swish Sound Effect
					if (!red_mode){
						sound_play(sound_get("bswish_med1"));
					}
					if (red_mode){
						sound_play(sound_get("rswish_med1"));
					}
					//Resets frame data
					reset_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START);
					reset_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START);
					
					reset_hitbox_value(AT_DTILT, 1, HG_WINDOW);
					
					reset_hitbox_value(AT_DTILT, 2, HG_HITBOX_X);
					reset_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y);
					reset_hitbox_value(AT_DTILT, 2, HG_WIDTH);
					reset_hitbox_value(AT_DTILT, 2, HG_HEIGHT);
					reset_hitbox_value(AT_DTILT, 2, HG_SHAPE);
					reset_hitbox_value(AT_DTILT, 2, HG_DAMAGE);
					reset_hitbox_value(AT_DTILT, 2, HG_ANGLE);
					reset_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK); 
					reset_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING); 
					reset_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE);
					reset_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING);
				}
				
				//Spawn Kunai
				if (window == 2 && window_timer == 1 && !hitpause){

					kunai = instance_create(x+28*spr_dir, y, "obj_article1");
					kunai_proj = 0;
					kunai.player = player;
					kunai.spr_dir = 1;
					kunai.state = false;
					if (!red_mode){
						kunai.stance = 0;
						spawn_hit_fx(x+32*spr_dir,y,fx_bdtilt);
					} else {
						kunai.stance = 1;
						spawn_hit_fx(x+32*spr_dir,y,fx_rdtilt);
					}
					kunai_target = (asset_get("obj_article1"));
					kunai_x_dest = kunai.x
					kunai_y_dest = kunai.y
					shake_camera(3,2)
						
					spawn_base_dust(x+30*spr_dir, y+2, "land", 0 - spr_dir);
				}
				
			}
			//Off Ledge
			else {
				if (window == 1 && window_timer == 5){
					//Swish Sound Effect
					if (!red_mode){
						sound_play(sound_get("dair"));
					}
					if (red_mode){
						sound_play(sound_get("rdair"));
					}
					//Changes frame data
					if (!red_mode){
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
					} else {
						set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 10);
					}
					set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
					
					set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 99);
					
					set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 14*2);
					set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -6*2);
					set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 12*2);
					set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 36*2);
					set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 0);
					
					if (!red_mode){
						set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 8);
						set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 80);
						set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 7); 
						set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5); 
						set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 7);
						set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .4);
					} else {
						set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 10);
						set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 270);
						set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 5); 
						set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .4); 
						set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 12);
						set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .9);
					}
				}
			}
			break;
		case(AT_NSPECIAL):
			trigger_wavebounce();
			with (hit_fx_obj)
				if (hit_fx == other.fx_bnspec || hit_fx == other.fx_rnspec ){
					depth = -10;
				}
			move_cooldown[AT_NSPECIAL] = 100;
			//Window
			switch(window){
				//Window 2
				case(2):
					if (window_timer == 1){
						if (!red_mode){
							spawn_hit_fx( x+(25*spr_dir), y-48, fx_bnspec )
						} else {
							spawn_hit_fx( x+(25*spr_dir), y-48, fx_rnspec )
						}
						//kunai_proj = create_hitbox(AT_NSPECIAL, 1,x+25*spr_dir,y-42)
						kunai = instance_create(x+35*spr_dir, y-45, "obj_article1");
						kunai_proj = 0;
						kunai.player = player;
						kunai.spr_dir = 1;
						kunai.state = 7;
						if (!red_mode){
							kunai.stance = 0;
						} else {
							kunai.stance = 1;
						}
						kunai.vsp = -2.5
						kunai.hsp = 2 *spr_dir
						//kunai.gravity = 0.1
						kunai_target = (asset_get("obj_article1"));
						kunai_x_dest = kunai.x
						kunai_y_dest = kunai.y
					}
				break;//End Window 2
			}//End window switch case
			break;
		case(AT_DAIR):
			can_fast_fall = false;
			can_wall_jump = true;
			can_move = false;
			if (window == 2 && !hitpause || window == 3 && !hitpause ){
				if(window_timer % 3 == 1){
					if (hsp != 0){
						if (!red_mode) {
							var h = spawn_hit_fx(x + lengthdir_x(-24, dair_angle) * spr_dir, y + lengthdir_y(-24, dair_angle) - 36, fx_slash);
						} else {
							var h = spawn_hit_fx(x + lengthdir_x(-24, dair_angle) * spr_dir, y + lengthdir_y(-24, dair_angle) - 36, fx_rslash);
						}
						h.draw_angle = dair_angle * spr_dir;
					} else { //if like going down a wall or something
					/*
						if (!red_mode) {
							var h = spawn_hit_fx(x + lengthdir_x(+10, dair_angle) * spr_dir, y + lengthdir_y(-24, dair_angle) - 36, fx_slash);
						} else {
							var h = spawn_hit_fx(x + lengthdir_x(+10, dair_angle) * spr_dir, y + lengthdir_y(-24, dair_angle) - 36, fx_rslash);
						}
						h.draw_angle = 270 * spr_dir;
					*/
					}
				}
			}
			if (window == 2 && !free || window == 3 && !free){
				window = 4
				window_timer = 0
			}
			if (window == 4 && window_timer == 1){
				spawn_base_dust(x+44*spr_dir, y, "dash_start", 0 - spr_dir);
			}
			break;
		case(AT_UTILT):
			can_fast_fall = false;
			can_wall_jump = true;
			if (window == 1 && window_timer == 6){
				spawn_base_dust(x-10*spr_dir, y+2, "jump", 0 + spr_dir);
			}
			if (window == 2 && !hitpause){
				if(window_timer % 2 == 1){
					if (hsp != 0){
						if (!red_mode) {
							var h = spawn_hit_fx(x + lengthdir_x(+4, utilt_angle) * spr_dir, y + lengthdir_y(-8, dair_angle) - 36, fx_slash);
						} else {
							var h = spawn_hit_fx(x + lengthdir_x(+4, utilt_angle) * spr_dir, y + lengthdir_y(-8, dair_angle) - 36, fx_rslash);
						}
						h.draw_angle = utilt_angle * spr_dir;
					} else { //if like going down a wall or something
						if (!red_mode) {
							var h = spawn_hit_fx(x + lengthdir_x(+4, utilt_angle) * spr_dir, y + lengthdir_y(-8, dair_angle) - 36, fx_slash);
						} else {
							var h = spawn_hit_fx(x + lengthdir_x(+4, utilt_angle) * spr_dir, y + lengthdir_y(-8, dair_angle) - 36, fx_rslash);
						}
						h.draw_angle = 90 * spr_dir;
					}
				}
			}
			if (window == 2 && !free || window == 3 && !free){
				window = 4
				window_timer = 0
			}
			if (window == 4 && window_timer == 1){
				spawn_base_dust(x+44*spr_dir, y, "dash_start", 0 - spr_dir);
			}
			break;
		case(AT_FSTRONG_2):
			//reset 'grabbed_player' variables on the first frame when performing a grab.
			if (window == 1 && window_timer == 1) { 
				grabbed_player_obj = noone; 
				grabbed_player_relative_x = 0;
				grabbed_player_relative_y = 0;
				new_spr_dir = 0;
			}
			if (window == 2 && window_timer == 2){
				sound_stop(sound_get("RFStrong4"))
			}
		break;
		case(AT_FTHROW):
			if (instance_exists(grabbed_player_obj)) {
				
				//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
				if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
				else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			
				else {
					//keep the grabbed player in hitstop until the grab is complete.
					grabbed_player_obj.hitstop = 2;
					grabbed_player_obj.hitpause = true;
					
					//if this is the first frame of a window, store the grabbed player's relative position.
					if (window_timer <= 1) {
						grabbed_player_relative_x = grabbed_player_obj.x - x;
						grabbed_player_relative_y = grabbed_player_obj.y - y;
					}
					 
					//on the first window, pull the opponent into the grab.
					if (window == 1) { 
						
						//Rotate
						if (left_down && spr_dir){
							new_spr_dir = -1;
						} else if (right_down && spr_dir == -1){
							new_spr_dir = 1;
						} else {
							new_spr_dir = spr_dir;
						}
						
						
						if (window_timer == 1){
							//sound_play(sound_get("RFstrong1"))
						} 
						
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = 30 * spr_dir;
						var pull_to_y = -10;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
						if (window_timer == 9){
							spr_dir = new_spr_dir;
						}
					if (window == 2) {
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = -40 * spr_dir;
						var pull_to_y = -20;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					if (window == 3) {
						with(hit_fx_obj){
							if (hit_fx == other.fx_slam){
								depth = -10;
							}
						}
						if (window_timer == 1){
							sound_stop(sound_get("RFstrong1"))
							sound_play(sound_get("RFstrong2"))
							sound_play(sound_get("blow"))
							spawn_hit_fx(x-40*spr_dir,y+2, fx_slam)
							spawn_hit_fx(x-30*spr_dir,y+2, fx_cracks)
						}
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = -40 * spr_dir;
						var pull_to_y = +10;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					if (window == 4) { 
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = +20 * spr_dir;
						var pull_to_y = +10;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					if (window == 5) {
						if (window_timer == 1){
							sound_stop(sound_get("RFstrong2"))
							sound_play(sound_get("RFstrong3"))
						}
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = +30 * spr_dir;
						var pull_to_y = -20;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					//the above block can be copied for as many windows as necessary.
					//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
				}
			}
			break;
		case(AT_UAIR):
			trigger_b_reverse();
			
			//reset 'grabbed_player' variables on the first frame when performing a grab.
		    if (window == 1 && window_timer == 1) { 
		    	grabbed_player_obj = noone; 
		    	grabbed_player_relative_x = 0;
		    	grabbed_player_relative_y = 0;
		    	
		    	//Purple
		        if (red_mode == 2){
		            set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 10);//10
		            set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 9);
		            set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .8);
		        } else {
		            reset_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH);
		            reset_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK);
		            reset_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING);
		        }
		        
		    }
		    break;
		case(AT_EXTRA_1):
			if (instance_exists(grabbed_player_obj)){
				//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
				if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
				else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
				else {
					//keep the grabbed player in hitstop until the grab is complete.
					grabbed_player_obj.hitstop = 2;
					grabbed_player_obj.hitpause = true;
					
					//if this is the first frame of a window, store the grabbed player's relative position.
					if (window_timer <= 1) {
						grabbed_player_relative_x = grabbed_player_obj.x - x;
						grabbed_player_relative_y = grabbed_player_obj.y - y;
					}
					 
					//on the first window, pull the opponent into the grab.
						if (window == 1) {
							attack_end();
							//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
							var pull_to_x = 20 * spr_dir;
							var pull_to_y = -30;
							
							//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
							var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
							grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
							grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
						}
						if (window == 2) {
							//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
							var pull_to_x = -30 * spr_dir;
							var pull_to_y = +10;
							
							//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
							var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
							grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
							grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
						}
						//the above block can be copied for as many windows as necessary.
					//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
				}
			}
			//Purple
			if (red_mode == 2){
				if (window == 3 && window_timer == 1){
					vsp = -2
				}
				if (window == 3 && window_timer == 9){
					if (spr_dir == 1) {
						spr_dir = -1
					}
					else if (spr_dir == -1) {
						spr_dir = 1
					}
					sound_play(sound_get("bswish_light1"));
					sound_play(sound_get("rswish_light1"))
					x = old_grabbed_player_obj.x;
					y = old_grabbed_player_obj.y;
					set_attack(AT_EXTRA_2);
					grabbed_player_obj = old_grabbed_player_obj;
					grabbed_player_obj = old_grabbed_player_obj;
				}
			}
			break;
		case(AT_EXTRA_2):
			can_fast_fall = false;
			if (instance_exists(grabbed_player_obj)) {
				
				//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
				if (window == 4) { grabbed_player_obj = noone; }
				else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
			
				else {
					//keep the grabbed player in hitstop until the grab is complete.
					grabbed_player_obj.hitstop = 2;
					grabbed_player_obj.hitpause = true;
					
					//if this is the first frame of a window, store the grabbed player's relative position.
					if (window_timer <= 1) {
						grabbed_player_relative_x = grabbed_player_obj.x - x;
						grabbed_player_relative_y = grabbed_player_obj.y - y;
					}
					 
					//on the first window, pull the opponent into the grab.
					if (window == 1) {
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = 40 * spr_dir;
						var pull_to_y = -40;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
					}
					if (window == 2) {
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						if (window_timer <= 8) {
							var pull_to_x = -30 * spr_dir;
							var pull_to_y = -30;
						} else {
							var pull_to_x = 0 * spr_dir;
							var pull_to_y = -20;
						}
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
						grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
						
						
					}
					if (window == 3) {
						
						if(window_timer % 2 == 1){
							var h = spawn_hit_fx(x+10*spr_dir,y-50,fx_rslash);
							if (spr_dir && hsp) {
								h.draw_angle = 285*spr_dir;
							} else if (spr_dir && hsp <= 0) {
								h.draw_angle = 255*spr_dir;
							} else if (spr_dir && hsp == 0){
								h.draw_angle = 90*spr_dir;
							}
							else if (!spr_dir && hsp <= 0) {
								h.draw_angle = 285*spr_dir;
							} else if (!spr_dir && hsp >= 0) {
								h.draw_angle = 255*spr_dir;
							} else if (spr_dir && hsp == 0){
								h.draw_angle = 180*spr_dir;
							}
						}
						
						max_fall = 16;
						
						//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
						var pull_to_x = 0 * spr_dir;
						var pull_to_y = 40;
						
						//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
						var window_length = window_timer;
						grabbed_player_obj.x = x //+ ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
						grabbed_player_obj.y = y + 20 //+ ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
						
						if (!free){
							spawn_hit_fx(x,y,fx_slam);
							sound_play(sound_get("blow"))
							window = 4;
							window_timer = 0;
						}
					} 
					if (window == 3 && window_timer == ruair_timer_max) {
						sound_play(asset_get("sfx_burnend"));
						ruair_glow = true;
						
						grabbed_player_obj.old_vsp = -6;
						grabbed_player_obj.old_hsp = -4*spr_dir;
						
						var air_cd = 15;
						move_cooldown[AT_UAIR] = air_cd;
						move_cooldown[AT_BAIR] = air_cd;
						move_cooldown[AT_FAIR] = air_cd;
						move_cooldown[AT_NAIR] = air_cd;
						move_cooldown[AT_DAIR] = air_cd;
						move_cooldown[AT_USPECIAL_2] = air_cd;
						move_cooldown[AT_DSPECIAL_2] = air_cd;
						move_cooldown[AT_FSPECIAL_2] = air_cd;
						move_cooldown[AT_NSPECIAL_2] = air_cd;
						state = PS_IDLE_AIR;
						hitpause = true;
						hitstun = 10;
						old_vsp = -6;
						old_hsp = -2*spr_dir;
					}
					else {
						//max_fall = max_fall_default;
					}
					//the above block can be copied for as many windows as necessary.
					//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
				}
			}
			break;
	case (AT_DSTRONG):
	case (AT_DSTRONG_2):
    	if (window == 2 && window_timer == 4 && !hitstop && !hitpause){
    		sound_play(sound_get("blow"))
    	} if (window == 3 && window_timer == 1 && !hitstop && !hitpause){
    		if (!red_mode){
    			spawn_hit_fx(x,y,fx_bslam2)
    		} else {
				spawn_hit_fx(x,y,fx_slam2)
    		}
    	}
    	break;
	case (AT_USTRONG):
		can_move = false;
		
		//Window 2
		if (window == 2){
			strong_charge = 0;
		}
		
		//Window 3
		if (window == 3){
			
			if (strong_charge >= 60){
				strong_charge = 60;
			} else {
				strong_charge++;	
			}
			
			vsp = ease_quartOut( -4, 0, strong_charge, 60);
			
		} else {
			strong_charge = 0;
		}
		
		//Window 4
		if (window == 4 && window_timer == 1){
			sound_play(sound_get("ustrong2"))
		}
		
		//Window 5
		if (window == 5){
			if (!free){
			window = 6;
			window_timer = 0;
			}
			if(window_timer % 4 == 1){
					if (!red_mode) {
						//var h = spawn_hit_fx(x + 4 * spr_dir, y - 24, fx_slash);
					} else {
						//var h = spawn_hit_fx(x + 4 * spr_dir, y - 24, fx_rslash);
					}
					//h.draw_angle = 270 * spr_dir;
			}
		}
		
		//Decide Direction
		if (window <= 5) {
			//Facing Right
			if spr_dir == 1 {
				//Holding Right
				if (right_down){
					//Goes right
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 100);
				//Holding Left
				} else if (left_down){
					//Goes Left
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, -100);
				} else {
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 100);
				}
			} 
			//Facing Left
			else if spr_dir == -1 {
				//Holding Left
				if (left_down){
					//Goes right
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 100);
				//Holding Left
				} else if (right_down){
					//Goes Left
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, -100);
				} else {
					set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 100);
				}
			}
		}
		
		//Window 6
		if (window == 6 && window_timer == 4){
			draw_indicator = false;
			visible = false;
		} else {
			draw_indicator = true;
			visible = true;
		}
		
		//Window 8
		if (window == 8){
			if(window_timer % 4 == 1){
					if (!red_mode) {
						var h = spawn_hit_fx(x - 10 * spr_dir, y - 24, fx_slash);
					} else {
						var h = spawn_hit_fx(x - 10 * spr_dir, y - 24, fx_rslash);
					}
					h.draw_angle = 90 * spr_dir;
			}
		}
		break;
	case(AT_FSTRONG):
			if (window == 2 && window_timer == 5){
				spawn_base_dust(x+40*spr_dir,y+2,"dash_start", 0 - spr_dir)
			}
			break;
	case(AT_JAB):
		was_parried = false;
		
		//Purple
		if (red_mode == 2 && jab_combo = 1){
			if (window = 3 && window_timer = 1){
				set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 3);
				set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
			}
			destroy_hitboxes();
			if (window = 4 && !hitpause){
				jab_combo = 1;
				attack = AT_FTILT;
				window = 1;
				window_timer = 5; 
			}
		}
		break;
}//Attack Switch case

//Other ------------------------------------------------------------------------

//reset sprite angle
if (attack != AT_FSPECIAL || attack != AT_FSPECIAL_2){
	spr_angle = 0;
}

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

#define spawnPixels(count, xsp, ysp)

for (var i = 0; i < count; i++){
    var hfx_x = x + random_func(0 + i, 60, true) - 30;
    var hfx_y = y + random_func(1 + i, 60, true) - 30 - 36;
    
    if (!red_mode){
    	var hfx = spawn_hit_fx(hfx_x, hfx_y, fx_bdash_pixel1);
    } else {
    	var hfx = spawn_hit_fx(hfx_x, hfx_y, fx_rdash_pixel1);
    }
    hfx.hsp = xsp;
    hfx.vsp = ysp;
    hfx.draw_angle = spr_angle;
    hfx.depth = depth - 1;
}

return hfx;

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
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}
