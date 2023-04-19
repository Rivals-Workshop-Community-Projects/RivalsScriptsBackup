//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

switch(attack) {
	case AT_NSPECIAL: //Different Weapons
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sfx_cupShoot[current_shot, cup_Shootcur]);
		cup_Shootcur++;
		if (cup_Shootcur > 2) { cup_Shootcur = 0; }
		set_attack_value(AT_NSPECIAL, AG_SPRITE, (nspec_dir ? sprite_get("nspecial_up") : sprite_get("nspecial")));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, (nspec_dir ? sprite_get("nspecial_up_air") : sprite_get("nspecial_air")));
	
		if (window == 1 && window_timer == 1) {
			nspecial_proj_spawned = false;
		}
	
		cupShootMove();
		cupShootJump();
		cupWeaponDelay();
	
		if (up_down) {
			clear_button_buffer(PC_UP_HARD_PRESSED);
			clear_button_buffer(PC_UP_STICK_PRESSED);
			nspec_dir = 1;
		}
		
		if (window == 3 && window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH) && special_down) {
			window = 1;
			window_timer = 0;
		}
		
		if (window == 2 && window_timer == 1 && !nspecial_proj_spawned) {
			switch(current_shot) {
				case 1: // Peashooter (Default)
					cupShootProj(1);
					nspecial_proj_spawned = true;
				break;
				
				case 2: // Spread
					cupShootProj(2);
					cupShootProj(3);
					cupShootProj(4);
					nspecial_spread = false;
					nspecial_proj_spawned = true;
				break;
				
				case 3: // Chaser
					chase_id = noone;
					range = 10000;
					with (asset_get("oPlayer")) {
						if (player != other.player) && (state != PS_DEAD) && (get_player_team(player) != get_player_team(other.player)) {
							var distance = point_distance(x,y,other.x, other.y);
								if (distance < other.range) {
									other.chase_id = id;
									other.range = distance;
							}
						}
					}
					cupShootProj(7);
					nspecial_proj_spawned = true;				
				break;
				
				case 4: // Lobber
					cupShootProj(6);
					nspecial_proj_spawned = true;
				break;
				
				case 6: // Roundabout
					cupShootProj(5);
					nspecial_proj_spawned = true;
				break;
			}
		} 
	
	    if (window == 2 && window_timer == 2 && current_shot == 2 && !nspecial_spread) {
	    	create_hitbox(AT_NSPECIAL, 8, x, y);
	    	nspecial_spread = true;
	    }
	break;
	case AT_EXTRA_1: // Charge Shot
		set_attack_value(AT_EXTRA_1, AG_SPRITE, (nspec_dir ? sprite_get("nspecial_up") : sprite_get("nspecial")));
		set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, (nspec_dir ? sprite_get("nspecial_up_air") : sprite_get("nspecial_air")));
		
		if (window == 1 && window_timer == 1) {
			nspecial_proj_spawned = false;
		}
		
		if (window == 1) { cupShootMove(); }
		cupShootJump();
		
		if (abs(hsp) > 6) {
			hsp = 6*spr_dir;
		}
		if (!shot_can_cancel) {
			shot_cancel_timer++;
		}
		if (shot_cancel_timer >= 30) {
			shot_can_cancel = true;
		}
	    can_fast_fall = false;
	    switch(window) {
	    	case 1:
	    		if window_timer == 1 { nspecial_proj_spawned = false; }
				if (chargeshot_cancelled && chargeshot_charge >= chargeshot_time) {
					window = 2;
					window_timer = 0;
				} else { chargeshot_cancelled = false; }
				
				if (chargeshot_charge_reset == false) {
					sound_play(sound_get("charge_start"));
					chargeshot_charge_reset = true;
				}
				if (chargeshot_charge == chargeshot_time) {
					sound_play(sound_get("charge_ready"));
				}
				chargeshot_charge++;
				if (special_down) and (window_timer > 2) {
					window = 1;
					window_timer = 0;
				}
				if ((attack_pressed || shield_pressed) && shot_can_cancel) {
					window = 3;
					window_timer = 15;
					shot_cancel_timer = 0;
					shot_can_cancel = false;
					chargeshot_cancelled = true;
				}
	    	break;
	    	case 2:
	    		if (window_timer == 1 && !nspecial_proj_spawned) {
					if (chargeshot_charge >= chargeshot_time) {
						sound_play(sound_get("charge_large"));
						cupShootProj(10);
					} else {
						sound_play(sound_get("charge_small"));
						cupShootProj(9);
					}
					chargeshot_charge = 0;
					chargeshot_charge_reset = false;
					shot_cancel_timer = 0;
					shot_can_cancel = false;
					chargeshot_cancelled = false;
					nspecial_proj_spawned = true;
	    		}
	    	break;
	    }
	break;
	case AT_EXTRA_3: //Super Art
		can_move = false;
		vsp = 0;
		hsp = 0;
		if (window == 5 && window_timer == 29) {
			invincible_super = true;
		}
	break;
	case AT_FSPECIAL: //EX Shots
		if (has_rune("N")) {
			super_armor = true;	
		}
		can_move = false;
	    vsp = 0;
	    switch(window) {
	    	case 1:
				if (current_shot == 3) {
					orbit_hit = 8;
				}
				ex_spawned = false;
				hsp = hsp*10/12;
	    	break;
			case 2:
				switch(window_timer) {
					case 1: 
						card_count = clamp(card_count-(20*ex_cost_multiplier), 0, 100);
					break;
					case 4:
						if (current_shot == 5) {
							spawn_hit_fx(x+ 40*spr_dir, y- 30,radical_barrage);
						}
						if (current_shot == 3 && !ex_spawned) {
							var orbit = instance_create(x, y, "obj_article1");
							orbit.sprite_index = orbit_sprite;
							orbit_hit = 0;
							ex_spawned = true;
						}
					break;
					case 5:    	
						if (!ex_spawned) {
							switch(current_shot) {
								case 1: // Mega Blast
									create_hitbox(AT_FSPECIAL, 1, x+34*spr_dir, y-32);
								break;
								case 2: // Eight Way
									create_hitbox(AT_FSPECIAL, 2, x, y-32);
									create_hitbox(AT_FSPECIAL, 3, x, y-32);
									create_hitbox(AT_FSPECIAL, 4, x, y-32);
									create_hitbox(AT_FSPECIAL, 5, x, y-32);
									create_hitbox(AT_FSPECIAL, 6, x, y-32);
									create_hitbox(AT_FSPECIAL, 7, x, y-32);
									create_hitbox(AT_FSPECIAL, 8, x, y-32);
									create_hitbox(AT_FSPECIAL, 9, x, y-32);
								break;
								case 3: // Chaos Orbit
									/*
									var orbit = instance_create(x, y, "obj_article1");
									orbit.sprite_index = orbit_sprite;
									orbit_hit = 0;
									*/
								break;
								case 4: // Kablooey
									create_hitbox(AT_FSPECIAL, 12, x+34*spr_dir, y-32);
								break;
								case 5: // Radical Barrage
									create_hitbox(AT_FSPECIAL, 10, x+ 56*spr_dir, y-34);
									create_hitbox(AT_FSPECIAL, 15, x+ 56*spr_dir, y-34);
								break;
								case 6: // Jumbo Rebound
									create_hitbox(AT_FSPECIAL, 13, x+34*spr_dir, y-32);
								break;
							}
		    				ex_spawned = true;
						}
					break;
	    		}
	    	break;
	    	case 3:
	    		if window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH) && current_shot == 4 {
			    	move_cooldown[AT_FSPECIAL] = 30;
			    	move_cooldown[AT_NSPECIAL] = 30;
	    		}
	    	break;
	    }
	    if (window == 2 && window_timer >= 6 && current_shot == 1) {
	            hsp = -2*spr_dir;
	    }
	break;
	case AT_DATTACK: //Dash
	    vsp = 0;
	    can_fast_fall = false;
	    
	
		if (window == 1 && window_timer < 4) { //DACUS
		    can_ustrong = true;
		}
		
	    if (has_hit && has_rune("A")) {
	    	can_jump = true;
	    }
	    
	    if (window == 3) {
	        hsp = hsp*7/8;
	        can_move = true;
	    }
	break;
	case AT_DTILT:
		clear_button_buffer(PC_ATTACK_PRESSED);
	break;
	case AT_FAIR:
		if (window != 1 && window != 5) {
			if (!has_rune("D") && !hitpause) {
				hsp /= 1.075;	
			} else if (has_rune("D") && !hitpause) {
				hsp -= 0.4*spr_dir;	
			}
			vsp /= 1.05;
		}
	break;
	case AT_BAIR:
		if (window == 1) {
			hsp = hsp*11/12;
			if (window_timer < (get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH) / 2)) {
				can_move = false;
			}
		}
		if (window == 2) {
			if (window_timer == 1) {
				vsp = 0;
			}
		}
	break;
	case AT_UAIR:
		if (window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) && has_rune("C")) {
			vsp = -7;
		}
	break;
	case AT_DAIR:
		can_move = false;
		if (window == 1) {
			hsp = hsp*10/12;
		}
		
		fall_through = down_down;
	break;
	case AT_DSTRONG:
		if (window == 2 && window_timer == 4) {
			spawn_hit_fx(x-(60*spr_dir), y, 193);
		}
	break;
	case AT_USPECIAL:
		can_fast_fall = false;
		if (window == 1) {
			uspecial_left = false;
			uspecial_right = false;
		}
		if (!free) {
			vsp += -6;
		}
		if (window == 2) {
			if (window_timer == 1) {
				uspecial_used = true;
			}
			//uspecial_used = !has_hit_player;
			hsp = 0;
			if (window_timer < 6) {
				if (left_down && !right_down) {
					uspecial_left = true;
				} else if (right_down && !left_down) {
					uspecial_right = true;
				} else {
					uspecial_left = false;
					uspecial_right = false;
				}
				vsp = 0;
			}
			if (window_timer == 3) {
				spawn_hit_fx(x, y, 301);
			}
		}
		if (window == 3) {
			if (uspecial_left && !uspecial_right) {
				hsp = -6;
				//vsp = -16;
			} else if (uspecial_right && !uspecial_left) {
				hsp = 6;
				//vsp = -16;
			}
		}
		if (window == 4) {
			vsp += 0.5;
			
			if ((window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH)) && !has_hit_player) {
				set_state(PS_PRATFALL);
			}
		}
	break;
	case AT_DSPECIAL: //Shot Selection
		if (window == 1) {
			clear_button_buffer(PC_SPECIAL_PRESSED);
		}
		if (!shot_can_cancel) {
			shot_cancel_timer++;
		}
		if (shot_cancel_timer >= 30) {
			shot_can_cancel = true;
		}
	    if (window == 3){
	        can_jump = true;
	        shot_menu = -1;
	        shot_cursor = -1;
	        menu_open = false;
	    }
	    can_fast_fall = false;
	    can_move = false;
	    if (window == 2) {
	        if (window_timer == 1 && menu_open == false) {
	            sound_play(sound_get("cup_menu_open"));
	            menu_open = true;
	        }
			switch(get_player_color(player)) {
				case 10:
					shot_menu = sprite_get("shot_select_ea");
					shot_cursor = sprite_get("select_cursor_ea");
				break;
				case 7:
					shot_menu = sprite_get("shot_select_bendy");
					shot_cursor = sprite_get("select_cursor_bendy");
				break;
				default:
					shot_menu = sprite_get("shot_select");
					shot_cursor = sprite_get("select_cursor");
				break;
			}
	        if (left_pressed) {
	            sound_play(sound_get("cup_menu_move"));
	            current_shot += -1;
	            if (current_shot <= 0) {
	                current_shot = 6;
	            }
	        }
	        if (right_pressed) {
	            sound_play(sound_get("cup_menu_move"));
	            current_shot += 1;
	            if (current_shot >= 7) {
	                current_shot = 1;
	            }
	        }
	        if (down_pressed && current_shot < 4) {
	            sound_play(sound_get("cup_menu_move"));
	            current_shot += 3;
	        }
	        if (up_pressed && current_shot >= 4) {
	            sound_play(sound_get("cup_menu_move"));
	            current_shot += -3;
	        }
	        
	        //Quick Select/"Quick Buy" but for Cuphead
	        if (taunt_pressed) {
				current_shot = 1;
				menuClose();
	        }
	        if (up_stick_pressed) {
				current_shot = 2;
				menuClose();
	        }
	        if (right_stick_pressed) {
	        	current_shot = 3;
	        	menuClose();
	        }
	        if (left_stick_pressed) {
	        	current_shot = 4;
	        	menuClose();
	        }
	        if (down_stick_pressed) {
	        	current_shot = 5;
	        	menuClose();
	        }
	        if (shield_pressed) {
	        	current_shot = 6;
				menuClose();
	        }
	        
	        //now onto manual selection
	        if ((special_pressed || attack_pressed) && shot_can_cancel) {
				menuClose();
	        }
	    }
	break;
	case AT_TAUNT:
		if (window == 4 && window_timer == get_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH) && taunt_down) {
			window = 3;
			window_timer = 0;
		}
	break;
	case AT_TAUNT_2: //Dash (Air Version)
		if (has_rune("H")) {
			invincible = true;
		}
	    vsp = 0;
	    can_fast_fall = false;
	    
	    if (window != 1) {
	    	can_wall_jump = true;
	    }
	    
	    if (window == 1 && window_timer == 1) {
	    	spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
	    }
	    if (window == 3) {
		    if (window_timer == 10 && has_rune("H")) {
		    	spawn_hit_fx(x, y-(char_height/2), smoke_bomb);
		    }
	        hsp = hsp*8/9;
	        can_move = true;
	    }
	    air_dashed = true;
	break;
}
#define cupShootProj(hb_index)

var _x = (28*spr_dir)*!nspec_dir
var _y = 32+(28*nspec_dir);

var bullet = create_hitbox(AT_NSPECIAL, hb_index, x+_x, y-_y);

var base_hsp = get_hitbox_value(AT_NSPECIAL, hb_index, HG_PROJECTILE_HSPEED)
var base_vsp = get_hitbox_value(AT_NSPECIAL, hb_index, HG_PROJECTILE_VSPEED)
var spread_deviate = 25;

var fire_angle = 90+((-90*spr_dir)*!nspec_dir)

switch(hb_index) {
	default:
		bullet.hsp = base_hsp*dcos(fire_angle);
		bullet.vsp = -base_hsp*dsin(fire_angle);
	break;
	case 3: //spread
		bullet.hsp = base_hsp*dcos(fire_angle-spread_deviate);
		bullet.vsp = -base_hsp*dsin(fire_angle-spread_deviate);
	break;
	case 4: //spread again
		bullet.hsp = base_hsp*dcos(fire_angle+spread_deviate);
		bullet.vsp = -base_hsp*dsin(fire_angle+spread_deviate);
	break;
	case 6: //lobber
		bullet.hsp = base_hsp*dcos(fire_angle);
		bullet.vsp = -base_hsp*dsin(fire_angle);
		bullet.vsp += base_vsp;
	break;
}

#define cupShootMove()

if !nspec_dir {
	if (!free && special_down && (left_down || right_down) && !(left_down && right_down)) {
		var suffer_chaser = (current_shot == 3 && !has_rune("E"));
		if (abs(hsp) < 4.5-suffer_chaser) {
			//hsp += (0.8+(0.1*suffer_chaser))*spr_dir;
			hsp = clamp(hsp+(0.8+(0.1*suffer_chaser))*spr_dir, -4.5+suffer_chaser, 4.5-suffer_chaser)
			
		}
	}
}

if (left_down) {
	nspec_dir = 0;
	spr_dir = -1;
}
if (right_down) {
	nspec_dir = 0;
	spr_dir = 1;
}
if (up_down) {
	clear_button_buffer(PC_UP_HARD_PRESSED);
	clear_button_buffer(PC_UP_STICK_PRESSED);
	nspec_dir = 1;
}

#define cupShootJump()

fall_through = down_down;
if (down_pressed && !free) {
	y += 8;
	
}
if (jump_pressed) {
	if (!free) {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -10;
		//spawn_base_dust(x, y, "jump");
		sound_play(asset_get("sfx_jumpground"));
	} else if free && has_rune("G") && !n_double_jumped {
		clear_button_buffer(PC_JUMP_PRESSED);
		vsp = -9;
		//spawn_base_dust(x, y, "doublejump");
		sound_play(asset_get("sfx_jumpground"));
		n_double_jumped = true;
	}
}

#define cupWeaponDelay()

var atk = AT_NSPECIAL;
var win = 3;

switch(current_shot) {
	case 1: //peashooter
	default:
		set_window_value(atk, win, AG_WINDOW_LENGTH, 4);
	break;
	case 2: //spread
		set_window_value(atk, win, AG_WINDOW_LENGTH, 5);
	break;
	case 3: //chaser
		set_window_value(atk, win, AG_WINDOW_LENGTH, 15);
	break;
	case 4: //lobber
		set_window_value(atk, win, AG_WINDOW_LENGTH, 32);
	break;
	case 6: //roundabout
		set_window_value(atk, win, AG_WINDOW_LENGTH, 30);
	break;
}

#define menuClose()

sound_play(sound_get("cup_menu_equip"));
window = 3;
window_timer = 0;
menu_open = false;
shot_cancel_timer = 0;
shot_can_cancel = false;