//article1_update

// Aerial State

if (state == 0) { 
	if (cannonball_GrabbedFSpcInvis == false) {
		new_sprite = sprite_get("cannonballair");
	} else {
		new_sprite = sprite_get("cannonballhidden");
	}
	anim_type = 0;
	
	// Wall Check (no clipping into walls when spawned)
	if (state_timer == 1) {
		cannonball_HspStore = hsp;
		cannonball_VspStore = vsp;
		ignores_walls = false;
	}
	
	if (state_timer == 2) {
		if (free == false || hit_wall == true) {
			if (player_id.spr_dir == 1) {
				x -= 10;
			} else if (player_id.spr_dir == -1) {
				x += 10;
			}
			cannonball_HspStore = cannonball_HspStore * -1;
		}
	}
	
	if (state_timer == 3) {
		hsp = cannonball_HspStore;
		vsp = cannonball_VspStore;
	}
	
	// Dertinmining Bonk LD
	if ((abs(darctan2(vsp, hsp)) <= 45) || abs(darctan2(vsp, hsp)) >= 315) {
		cannoball_BonkLD = 45;
	} else if (abs(darctan2(vsp, hsp)) >= 135 && abs(darctan2(vsp, hsp)) <= 225) {
		cannoball_BonkLD = 135;
	} else if (abs(darctan2(vsp, hsp)) > 45 && abs(darctan2(vsp, hsp)) < 135) {
		cannoball_BonkLD = abs(darctan2(vsp, hsp));
	} else if abs(darctan2(vsp, hsp)) > 225 && abs(darctan2(vsp, hsp)) < 315 {
		cannoball_BonkLD = abs(darctan2(vsp, hsp)) - 180;
	}
	
	// Normal Wall & Floor Bouncing
	if (state_timer > 3) {
		if (hit_wall == true) { // Wall Stuff
			if (cannonball_BurningForm == true) {
				if (cannonball_GoThuPlatTimer > 0) {
					if (cannonball_GoThuPlatCheck == false) {
						y += 5;
						vsp = cannonball_FloorVsp;
						cannonball_GoThuPlatCheck = true;
					} else {
						state = 1;
						state_timer = 0;
						ignores_walls = true;
					}
				} else {
					state = 1;
		    		state_timer = 0;
		    		ignores_walls = true;
				}
			} else {
				if (cannonball_WallHsp > 0) {
					x -= 10;
				} else if (cannonball_WallHsp < 0) {
					x += 10;
				}
				
				sound_play(asset_get("sfx_shovel_hit_med2"));
				
				cannonball_BurnCounter -= 1;
				
				hsp = cannonball_WallHsp * -1;
			}
		} else {
			cannonball_WallHsp = hsp;
		}
		
		if (free == false) { // Floor Stuff
			
			if (cannonball_BurningForm == true) {
				if (cannonball_GoThuPlatTimer > 0) {
					if (cannonball_GoThuPlatCheck == false) {
						y += 5;
						vsp = cannonball_FloorVsp;
						cannonball_GoThuPlatCheck = true;
					} else {
						state = 1;
						state_timer = 0;
						ignores_walls = true;
					}
				} else {
					state = 1;
		    		state_timer = 0;
		    		ignores_walls = true;
				}
			} else {
				if (cannonball_FloorVsp < 9 && cannonball_FloorVsp > 6) {
					vsp = abs(cannonball_FloorVsp) * -1;
				} else if (cannonball_FloorVsp <= 6) {
					vsp = -6;
				} else {
					vsp = -9;
				}
				
				sound_play(asset_get("sfx_shovel_hit_med2"));
				
				cannonball_BurnCounter -= 1;
			}
		} else {
			cannonball_FloorVsp = vsp;
		}
	}
	
	// Gravity
	if (cannonball_GrabbedByCannUSpc == false && cannonball_GrabbedByCannFSpc == false && cannonball_GrabbedByCannDSpc == false) {
		if (cannonball_didspeedup == false) {
			vsp += 0.2;
		} else {
			vsp += 0.3;
		}
	}
	
	// Burn Counter Remaining (number of bounces / hits before the cannonball begins burning)
	if (cannonball_BurnCounter <= 0) {
		cannonball_BurningForm = true;
	}
	
	// Hitting + Exploding
	if (state_timer > 3 && cannonball_HitDelaying <= 0 && cannonball_GrabbedByCannUSpc == false && cannonball_GrabbedByCannFSpc == false && cannonball_GrabbedByCannDSpc == false) {
		
		// Explosion State
		with (oPlayer) {
			if (other.cannonball_OppHit == false) {
				
				if (player != other.player_id.player) {
					//sound_play(sound_get("gazer_hit"));
					other.cannonball_enemy_id = self.id;
					other.cannonball_enemy_idX = self.x;
					other.cannonball_enemy_idY = self.y;
					
				}
				
				if (point_distance(other.x,other.y, other.cannonball_enemy_idX, other.cannonball_enemy_idY) <= 50 && other.cannonball_enemy_id.state != PS_AIR_DODGE && other.cannonball_enemy_id.state != PS_ROLL_BACKWARD && other.cannonball_enemy_id.state != PS_ROLL_FORWARD && other.cannonball_enemy_id.state != PS_TECH_GROUND && other.cannonball_enemy_id.state != PS_TECH_FORWARD && other.cannonball_enemy_id.state != PS_TECH_BACKWARD && other.cannonball_enemy_id.state != PS_WALL_TECH && other.cannonball_enemy_id.state != PS_DEAD && other.cannonball_enemy_id.state != PS_RESPAWN && initial_invince == false && invincible == false) { // When hitting an opponent
					if (other.cannonball_BurningForm == true) {
						other.state_timer = 0;
						other.state = 1;
						other.ignores_walls = true;
					} else if (other.cannonball_NoBonkTime <= 0 && other.player_id.attack != AT_FTILT && other.cannonball_NoHitPlayer <= 0 && other.cannonball_enemy_id.state != PS_AIR_DODGE && other.cannonball_enemy_id.state != PS_ROLL_BACKWARD && other.cannonball_enemy_id.state != PS_ROLL_FORWARD && other.cannonball_enemy_id.state != PS_TECH_GROUND && other.cannonball_enemy_id.state != PS_TECH_FORWARD && other.cannonball_enemy_id.state != PS_TECH_BACKWARD && other.cannonball_enemy_id.state != PS_WALL_TECH && other.cannonball_enemy_id.state != PS_DEAD && other.cannonball_enemy_id.state != PS_RESPAWN && initial_invince == false && invincible == false) {
						other.state_timer = 0;
						other.cannonball_ShakeTime = 9;
						other.cannonball_BonkHsp = other.hsp;
						other.cannonball_BonkVsp = other.vsp;
						other.state = 21;
					}
				}
			} else {
				if (point_distance(other.x,other.y, other.player_id.x, other.player_id.y) <= 50 && other.player_id.state != PS_AIR_DODGE && other.player_id.state != PS_ROLL_BACKWARD && other.player_id.state != PS_ROLL_FORWARD && other.player_id.state != PS_TECH_GROUND && other.player_id.state != PS_TECH_FORWARD && other.player_id.state != PS_TECH_BACKWARD && other.player_id.state != PS_WALL_TECH && other.player_id.state != PS_DEAD && other.player_id.state != PS_RESPAWN && initial_invince == false && invincible == false) { // When hitting Cann (opponent controls)
					if (other.cannonball_BurningForm == true) {
						other.state_timer = 0;
						other.state = 1;
						other.ignores_walls = true;
					} else if (other.cannonball_NoBonkTime <= 0 && other.player_id.attack != AT_FTILT && other.player_id.state != PS_AIR_DODGE && other.player_id.state != PS_ROLL_BACKWARD && other.player_id.state != PS_ROLL_FORWARD && other.player_id.state != PS_TECH_GROUND && other.player_id.state != PS_TECH_FORWARD && other.player_id.state != PS_TECH_BACKWARD && other.player_id.state != PS_WALL_TECH && other.player_id.state != PS_DEAD && other.player_id.state != PS_RESPAWN && initial_invince == false && invincible == false) {
						other.state_timer = 0;
						other.cannonball_ShakeTime = 9;
						other.cannonball_BonkHsp = other.hsp;
						other.cannonball_BonkVsp = other.vsp;
						other.state = 21;
					}
				}
			}
		}
		
		// Alter State When Hit
		with (pHitBox) {
			
			if (place_meeting(x,y,other.id) && other.cannonball_HitBlockout >= 0 && other.cannonball_GrabbedByCannDSpc == false && other.cannonball_GrabbedByCannUSpc == false && other.cannonball_GrabbedByCannFSpc == false) {
				
				// Detections
				if array_find_index(other.cannonball_HitboxChecker, id) { // hitbox checker
				
				} else {
					if (type != 2 || (plasma_safe == true && damage > 1)) { // No projectiles & No repeat hits
					
						if (other.cannonball_Burned == true) { // Burning Transition
							
							
							
						} else { // No burning
							
							if (player_id == other.player_id) { // Cann
								if (player_id.attack != AT_FSPECIAL) { // Stupid Fspecial Test because janky (doesn't activate for 5th window)
									sound_play(sound_effect);
									spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
									
									other.cannonball_KB = kb_value;
									other.cannonball_LD = get_hitbox_angle(self);
									other.cannonball_HitboxATK = attack;
									other.cannonball_HitboxNum = hbox_num;
									
									other.cannonball_Agro = false;
									
									//other.hboxtype = type;
									other.cannonball_ShakeTime = 7;
									array_push(other.cannonball_HitboxChecker, id);
									
									other.cannonball_xAttacker = other.x;
									other.cannonball_yAttacker = other.y;
									other.cannonball_VspAttacker = other.vsp;
									other.cannonball_HspAttacker = other.hsp;
									
									other.cannonball_OppHit = false;
									
									other.state_timer = 0;
									other.state = 5;
								} else {
									if (player_id.window != 5) {
										sound_play(sound_effect);
										spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
										
										other.cannonball_KB = kb_value;
										other.cannonball_LD = get_hitbox_angle(self);
										other.cannonball_HitboxATK = attack;
										other.cannonball_HitboxNum = hbox_num;
										
										other.cannonball_Agro = false;
										other.cannonball_LastOppHitID = 0;
										
										//other.hboxtype = type;
										other.cannonball_ShakeTime = 7;
										array_push(other.cannonball_HitboxChecker, id);
										
										other.cannonball_xAttacker = other.x;
										other.cannonball_yAttacker = other.y;
										other.cannonball_VspAttacker = other.vsp;
										other.cannonball_HspAttacker = other.hsp;
										
										other.cannonball_OppHit = false;
										
										other.state_timer = 0;
										other.state = 5;
									}
								}
							}
							
							if (player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player)) { // Opponent
								sound_play(sound_effect);
								spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
								
								other.cannonball_KB = kb_value;
								other.cannonball_LD = get_hitbox_angle(self);
								
								other.cannonball_Agro = true;
								other.cannonball_EnemyID = player_id;
								other.cannonball_EnemyNumber = player;
								other.cannonball_LastOppHitID = player_id;
								
								//other.hboxtype = type;
								other.cannonball_ShakeTime = 7;
								array_push(other.cannonball_HitboxChecker, id);
								
								other.cannonball_xAttacker = other.x;
								other.cannonball_yAttacker = other.y;
								other.cannonball_VspAttacker = other.vsp;
								other.cannonball_HspAttacker = other.hsp;
								
								other.state_timer = 0;
								other.state = 5;
							}
							
						}
						
					}
				}
	    	}
		}
	}
	
	// Speedup Timer (increases speed after being spawned so that players can hit the cannonball at the start)
	if (cannonball_speeduptimer <= 75) {
		cannonball_speeduptimer += 1;
	} else {
		cannonball_speedup = true;
	}
	
	// Bonk timer (no bonking while above 0)
	if (cannonball_NoBonkTime > 0) {
		cannonball_NoBonkTime -= 1;
	}
	if (cannonball_NoHitPlayer > 0) {
		cannonball_NoHitPlayer -= 1;
	}
	
	// Speedup increasing
	if (cannonball_speeduptimer == true && cannonball_didspeedup == false) {
		hsp = hsp * 1.5;
		vsp = vsp * 1.5;
		cannonball_didspeedup = true;
	}
	
	// Up Special Hit Stuff
	if (cannonball_GrabbedByCannUSpc == true) {
		cannonball_BurningForm = true;
		cannonball_OppHit = false;
		if (player_id.window == 2 || (player_id.window == 3 && player_id.window_timer < 7)) {
			x = player_id.x;
			y = player_id.y;
			hsp = 0;
			vsp = 0;
			
		} else if (player_id.window == 3 && player_id.window_timer == 7) {
			
			cannonball_ShakeTime = 1;
			
			cannonball_Agro = false;
			
			cannonball_HitboxATK = 999; // For up special finished
			
			cannonball_xAttacker = x;
			cannonball_yAttacker = y;
			cannonball_VspAttacker = vsp;
			cannonball_HspAttacker = hsp;
			
			cannonball_GrabbedByCannUSpc = false;
			
			state_timer = 0;
			state = 5;
		}
	}
	
	// Forward Special Hit Stuff
	if (cannonball_GrabbedByCannFSpc == true && player_id.attack == AT_FSPECIAL) {
		cannonball_BurningForm = true;
		if ((player_id.window == 4 || player_id.window == 3) || (player_id.window == 5 && player_id.window_timer < 11)) {
			x = player_id.x + 35 * player_id.spr_dir;
			y = player_id.y - 20;
			hsp = 0;
			vsp = 0;
			
			if (player_id.window == 5 && player_id.window_timer > 8) {
				cannonball_GrabbedFSpcInvis = false;
			} else {
				cannonball_GrabbedFSpcInvis = true;
			}
		} else if (player_id.window == 5 && player_id.window_timer == 11) {
			sound_play(asset_get("sfx_ell_strong_attack_explosion"));
			
			cannonball_ShakeTime = 7;
			
			cannonball_Agro = false;
			
			cannonball_HitboxATK = 888; // For forward special finished
			
			x = player_id.x + 35 * player_id.spr_dir;
			y = player_id.y - 25;
			
			cannonball_xAttacker = x;
			cannonball_yAttacker = y;
			cannonball_VspAttacker = vsp;
			cannonball_HspAttacker = hsp;
			
			cannonball_BurningForm = true;
			
			cannonball_GrabbedByCannFSpc = false;
			
			cannonball_GrabbedFSpcInvis = false;
			
			state_timer = 0;
			state = 5;
		}
	}
	
	// Down Special Hit Stuff
	if (cannonball_GrabbedByCannDSpc == true) {
		cannonball_BurningForm = true;
		cannonball_OppHit = false;
		if (player_id.window == 2 && player_id.window_timer < 20) {
			hsp = 0;
			vsp = 0;
			x = player_id.x;
			y = player_id.y - 20;
		} else if (player_id.window == 2 && player_id.window_timer == 20) {
			
			cannonball_ShakeTime = 7;
			
			cannonball_Agro = false;
			
			cannonball_HitboxATK = 777; // For down special finished
			
			cannonball_xAttacker = x;
			cannonball_yAttacker = y;
			cannonball_VspAttacker = vsp;
			cannonball_HspAttacker = hsp;
			
			cannonball_GrabbedByCannDSpc = false;
			
			state_timer = 0;
			state = 5;
		}
	}
	
	// Go Through Plats Timer (while greater than zero cannonball goes through platforms)
	if (cannonball_GoThuPlatTimer > 0) {
		if (free == true) {
			cannonball_GoThuPlatCheck = false;
			cannonball_FloorVsp = vsp; // Since gothuplat is on this is being set from here instead of the ground checker
		}
		cannonball_GoThuPlatTimer -= 1;
	}
	
	// Reduce Hitdelay (for stuff like UTilt's multihits)
	cannonball_HitDelaying -= 1;
	
	// Position Collection Variables
	player_id.CannBoomX = x;
	player_id.CannBoomY = y;
	player_id.CannBonkLD = cannoball_BonkLD;
	
	// I forgor
	if (cannonball_HitBlockout > 0) {
		cannonball_HitBlockout -= 1;
	}
}

// Hit State

if (state == 5) {
	sound_play(asset_get("sfx_ell_uspecial_explode"));
    //player_id.move_cooldown[AT_NSPECIAL] = 70;
    
    if (cannonball_Agro == true) {
		cannonball_EnemyID.hitpause = true;
		cannonball_EnemyID.hitstop = 5;
		cannonball_EnemyID.old_hsp = cannonball_EnemyID.hsp; //set old_hsp and old_vsp to not ruin player flow
		cannonball_EnemyID.old_vsp = cannonball_EnemyID.vsp;
		cannonball_EnemyID.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
		
		can_be_grounded = true; // Fix in case Cann used Up Special
		
		cannonball_OppHit = true;
	} else {
		player_id.hitpause = true;
		player_id.hitstop = 5;
		player_id.old_hsp = player_id.hsp; //set old_hsp and old_vsp to not ruin player flow
		player_id.old_vsp = player_id.vsp;
		player_id.has_hit = true; //tick the has_hit flag like vanilla articles that can be hit
		
		if (cannonball_HitboxATK != AT_NAIR && cannonball_HitboxATK != AT_FSPECIAL && cannonball_HitboxATK != 888) {
			cannonball_BurnCounter -= 1;
		} else if (cannonball_HitboxATK == AT_NAIR && cannonball_HitboxNum == 3) {
			cannonball_BurnCounter -= 1;
		}
		
		cannonball_OppHit = false;
		
		cannonball_Burned = false;
	}
	
	state = 6;
}

// Go Brrr

if (state == 6) { // Hitpause
	x = cannonball_xAttacker;
	y = cannonball_yAttacker;
	cannonball_ShakeTime -= 1;
	
	if (cannonball_ShakeTime < 1 || (cannonball_HitboxNum == 2 && cannonball_HitboxATK == AT_DSPECIAL) || (cannonball_HitboxNum == 7 && cannonball_HitboxATK == AT_USPECIAL) || cannonball_HitboxATK == AT_FSPECIAL) {
		x = cannonball_xAttacker;
		y = cannonball_yAttacker;
		
		state = 7;
	}
    
}

// Launch

if (state == 7) { // Knockback of the cannon ball after getting hit
    
    //Determine velocity and angle stuff
    pushSpeed = cannonball_KB * 1;
    
    switch (cannonball_HitboxATK) {
    	case AT_JAB:
    	hsp = 5.14 * player_id.spr_dir;
    	vsp = -6.12;
    	
    	break;
    	
    	case AT_UTILT:
    	hsp = 1 * player_id.spr_dir;
    	vsp = -12;
    	cannonball_HitDelaying = 10;
    	
    	break;
    	
    	case AT_DATTACK:
    	hsp = 9 * player_id.spr_dir;
    	vsp = -8.5;
    	
    	break;
    	
    	case AT_FAIR:
    	hsp = lengthdir_x(pushSpeed, cannonball_LD) * 2;
    	vsp = lengthdir_y(pushSpeed, cannonball_LD) * 0.5;
    	
    	break;
    	
    	case AT_UAIR:
    	hsp = -3.8 * player_id.spr_dir;
    	vsp = -8.2;
    	
    	break;
    	
    	case AT_DAIR:
    	hsp = 0.6 * player_id.spr_dir;
    	vsp = 8;
    	cannonball_HitDelaying = 10;
    	
    	break;
    	
    	case AT_BAIR:
    	hsp = -11.8 * player_id.spr_dir;
    	vsp = -2.1;
    	cannonball_HitDelaying = 10;
    	cannonball_BurningForm = true;
    	
    	break;
    	
    	case AT_FSTRONG:
    	hsp = 12.8 * player_id.spr_dir;
    	vsp = -2.3;
    	cannonball_HitDelaying = 10;
    	cannonball_BurningForm = true;
    	
    	break;
    	
    	case AT_USTRONG:
    	if (cannonball_HitboxNum == 4) {
    		x = player_id.x + 10;
    		y = player_id.y - 50;
    		hsp = player_id.hsp;
    		vsp = -4;
    	} else {
    		hsp = 1.9 * player_id.spr_dir;
	    	vsp = -10.8;
	    	cannonball_HitDelaying = 10;
	    	cannonball_BurningForm = true;
    	}
    	
    	break;
    	
    	case AT_DSTRONG:
    	if (cannonball_HitboxNum == 1 || cannonball_HitboxNum == 3) {
    		hsp = 5.5 * player_id.spr_dir;
	    	vsp = -9.5;
	    	cannonball_HitDelaying = 10;
	    	cannonball_BurningForm = true;
    	} else {
    		hsp = -5.5 * player_id.spr_dir;
	    	vsp = -9.5;
	    	cannonball_HitDelaying = 10;
	    	cannonball_BurningForm = true;
    	}
    	
    	break;
    	
    	case AT_USPECIAL:
    	cannonball_HitDelaying = 999; // A large number
    	cannonball_GrabbedByCannUSpc = true;
    	cannonball_GoThuPlatTimer = 999; // A large number
    	break;
    	
    	case AT_FSPECIAL:
    	cannonball_HitDelaying = 999; // A large number
    	cannonball_GrabbedByCannFSpc = true;
    	cannonball_GoThuPlatTimer = 999; // A large number
    	player_id.window = 4;
    	cannonball_GrabbedFSpcInvis = true;
    	player_id.CannBallFSpcLand = true;
    	
    	break;
    	
    	case AT_DSPECIAL:
    	if (cannonball_HitboxNum == 2) {
    		hsp = 0;
    		vsp = 0;
	    	cannonball_HitDelaying = 999; // A large number
	    	cannonball_GrabbedByCannDSpc = true;
	    	cannonball_GoThuPlatTimer = 999; // A large number
    	}
    	
    	break;
    	
    	case 999: // Up Special Last Hit
    	hsp = player_id.hsp * 1.5;
    	vsp = 7;
    	cannonball_HitDelaying = 100;
    	cannonball_BurningForm = true;
    	cannonball_GoThuPlatTimer = 60;
    	can_be_grounded = false;
    	
    	break;
    	
    	case 888: // Side Special Last Hit
    	hsp = 10.8 * player_id.spr_dir;
	    vsp = -1.9;
    	cannonball_HitDelaying = 10;
    	cannonball_GoThuPlatTimer = 0;
    	
    	break;
    	
    	case 777: // Down Special Last Hit
    	hsp = -10 * dcos(cannonball_LastOppHitLD);
	    vsp = -10 * dsin(cannonball_LastOppHitLD);
    	cannonball_HitDelaying = 10;
    	cannonball_GoThuPlatTimer = 30;
    	
    	break;
    	
    	default:
    	hsp = lengthdir_x(pushSpeed, cannonball_LD);
    	vsp = lengthdir_y(pushSpeed, cannonball_LD);
    	
    	break;
    }
    
	cannonball_HitboxATK = 500; // Change so it won't do anything unless set again
	cannonball_HitBlockout = 10;
	
    state_timer = 3;
	state = 0;
	
	
}

// Landing Explosion State

if (state == 1) { 
	new_sprite = sprite_get("cannonballexplode");
	anim_type = 0;
	
	vsp = 0;
	hsp = 0;
	
	if (state_timer == 0) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 80);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	    
	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
	}
	
	if (state_timer == 4) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 100);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 100);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	    
	    sound_play(asset_get("sfx_forsburn_reappear_hit"));
	}
	
	if (state_timer == 10) {
		with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 140);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 140);
	    }
	    create_hitbox(AT_NSPECIAL, 1, x, y - 15);
	    with (player_id) {
    		set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, other.cannoball_BonkLD);
	    }
	}
	
	if (state_timer == 15) {

	    create_hitbox(AT_NSPECIAL, 2, x, y - 15);
	    
	    sound_play(asset_get("sfx_forsburn_combust"));
	}
	
	if (state_timer >= 25) {
		player_id.CannBallDie = false;
	    player_id.CannCannonBallActive = false;
	    instance_destroy();
	}
}

// Bonk'd State (hit a player but isn't burning)

if (state == 21) {
	
	if (state_timer = 0) {
		// Creating the Bonk-box
		with (player_id) {
			set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, other.cannoball_BonkLD);
		}
		
		create_hitbox(AT_NSPECIAL, 3, x, y - 30);
	}
	
	if (cannonball_ShakeTime <= 0) {
		vsp = cannonball_BonkVsp * -1;
		hsp = cannonball_BonkHsp * -1;
		
		cannonball_NoBonkTime = 15;
		
		if (cannonball_BurnCounter > 1) {
			cannonball_BurnCounter -= 1;
		}
		
		state = 0;
		state_timer = 0;
	} else {
		hsp = 0;
		vsp = 0;
	}
	
	cannonball_NoHitPlayer = 30;
	
	cannonball_ShakeTime -= 1;
}

if (state != 1) {
	if (player_id.CannBallDie == true) {
		player_id.CannBallDie = false;
		player_id.CannCannonBallActive = false;
		instance_destroy();
	}
}

if (state == 0 || state == 1 || state == 21) {
	// Get Positions For Tp
	
	if (player_id.CannBallGetValues == true) {
		player_id.CannBallTpX = x;
		player_id.CannBallTpY = y;
		if (state != 21) {
			player_id.CannBallTpHsp = cannonball_BonkHsp;
			player_id.CannBallTpVsp = cannonball_BonkVsp;
		}
		
	}
	
	if (player_id.CannBallDelete == true) {
		player_id.CannBallDelete = false;
		
		if (cannonball_BurningForm == true) {
			if (state == 0) {
				state = 1;
				state_timer = 0;
				player_id.CannNSpecialCooldownTimer = 180;
				ignores_walls = true;
			}
		} else {
			player_id.CannCannonBallActive = false;
			player_id.CannNSpecialCooldownTimer = 150;
			instance_destroy();
		}
		
	}
}

// Make sure DSpecial lands on cannonball
//if (player_id.attack == AT_DSPECIAL && player_id.CannCounterAttack == true) {
//	if (point_distance(x,y, player_id.x, player_id.y - 15) < 60) {
//		x = player_id.x;
//		y = player_id.y - 15;
//	}
//}

// Burning Form FX Stuff

if (cannonball_BurningForm == true && cannoball_BurnStartFX == false) {
	if (cannoball_BurnStartFXSound == false) {
		sound_play(asset_get("sfx_forsburn_combust"));
		cannoball_BurnStartFXSound = true;
	}
	
	if (cannoball_BurnStartFXFrame < 7) {
		if (cannoball_BurnStartFXtimer = 2) {
			cannoball_BurnStartFXFrame += 1;
			cannoball_BurnStartFXtimer = 0;
		}
		cannoball_BurnStartFXtimer += 1;
	} else {
		cannoball_BurnStartFXtimer = 0;
		cannoball_BurnStartFX = true;
	}
}

//Clairen plasma field will destroy the article

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    player_id.CannCannonBallActive = false;
	instance_destroy();
}

// Change the cannonball's state on parry

if (state != 1 && player_id.CannBallParry == true) {
	cannonball_OppHit = true;
	player_id.CannBallParry = false;
}
if (state != 1 && player_id.CannBallSelfParry == true) {
	cannonball_OppHit = false;
	player_id.CannBallSelfParry = false;
}

// Let player know if opponent hit cannonball

player_id.CannBallOppHit = cannonball_OppHit;

// Get the position of the opponent who last hit the cannonball
if (cannonball_LastOppHitID != 0) {
	cannonball_LastOppHitX = cannonball_LastOppHitID.x;
	cannonball_LastOppHitY = cannonball_LastOppHitID.y;
	cannonball_LastOppHitLD = round( darctan2((y + (cannonball_LastOppHitID.char_height * 0.75)) - cannonball_LastOppHitY, x - cannonball_LastOppHitX) );
}

player_id.CannBallOppLastHitX = cannonball_LastOppHitX;

player_id.CannBallOppLastHitY = cannonball_LastOppHitY;

player_id.CannBallOppLastHitLD = cannonball_LastOppHitLD;

// Destroys If Off Screen Somehow

if (y > room_height|| x > room_width || x < 0) {
	player_id.CannCannonBallActive = false;
	instance_destroy();
}

state_timer++;

// Amnimating

if (anim_timer == 5 && anim_type == 0) { // Normal
	image_index++;
	anim_timer = 0;
}

if (sprite_index != new_sprite) {
    sprite_index = new_sprite;
    
    image_index = 0;

}

player_id.CannBallState = state;

anim_timer++;