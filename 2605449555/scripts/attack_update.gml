// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB) {
	was_parried = false;
	if (window == 1) {
    	if (window_timer == 1) {
    		if (hsp = 0) {
				hsp = CannStrongHspStore;
			}
    	}
    }
	
    if (hsp > 0) {
        if (spr_dir == 1) {
            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
        } else if (spr_dir == -1) {
            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 150);
        }
    } else if (hsp < 0) {
        if (spr_dir == 1) {
            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 150);
        } else if (spr_dir == -1) {
            set_hitbox_value(AT_JAB, 1, HG_ANGLE, 30);
        }
    } else {
        set_hitbox_value(AT_JAB, 1, HG_ANGLE, 45);
    }
    
    if (hsp > 4) {
        set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, hsp);
    } else if (hsp < -4) {
        set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, hsp * -1);
    } else {
        set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
    }
    
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}
if (attack == AT_DTILT) {
    if (window == 1 && window_timer == 1) {
    	if (hsp < 8 || hsp > -8) {
        	hsp = 8 * spr_dir;
    	}
    }
    
    if (window >= 2) {
        move_cooldown[AT_DTILT] = 10;
    }
    
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

if (attack == AT_UTILT) {
    if (window = 3 && window_timer == 1) {
        hsp = hsp * -1;
        //x += 10 * spr_dir;
    }
    
    
    if (window == 4) {
        CannUTiltFlip = true;
        CannUTiltDir = spr_dir;
        move_cooldown[AT_JAB] = 3;
        move_cooldown[AT_FTILT] = 3;
        move_cooldown[AT_UTILT] = 3;
        move_cooldown[AT_DTILT] = 3;
        move_cooldown[AT_DATTACK] = 3;
        move_cooldown[AT_NSPECIAL] = 3;
        move_cooldown[AT_FSPECIAL] = 3;
        move_cooldown[AT_USPECIAL] = 3;
        move_cooldown[AT_DSPECIAL] = 3;
        move_cooldown[AT_FSTRONG] = 3;
        move_cooldown[AT_DSTRONG] = 3;
        move_cooldown[AT_USTRONG] = 3;
    }
    
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

if (attack == AT_DATTACK) {

    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

if (attack == AT_NAIR) {
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
    
    if (window == 1) {
    	move_cooldown[AT_NAIR] = 30;
    }
    
    if (has_hit_player == true) {
    	grav = 0.35;
    	if (vsp < -1) {
    		vsp = -1;
    	}
    	can_fast_fall = false;
    }
}

if (attack == AT_FAIR) {
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

if (attack == AT_BAIR) {
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
    if (window == 2) {
    	if (window_timer == 8 && hitpause == false) {
    		hsp = 5 * spr_dir;
    		//vsp = -3;
    		move_cooldown[AT_BAIR] = 20;
    	}
    }
    
    if (window == 3 && window_timer >= 6) {
    	can_attack = true;
    	can_special = true;
    	can_jump = true;
    }
    
    grav = 0.5;
}

if (attack == AT_UAIR) {
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

if (attack == AT_DAIR) {
    // Heat Increaser
    if (has_hit_player == true && RaiseHeat == false && HeatLevel < 10) {
        HeatLevel += 1;
        RaiseHeat = true;
    }
}

// Specials

if (attack == AT_USPECIAL) {
	switch (window) {
		case 1:
		if (window_timer == 1) {
			vsp = vsp / 3;
			hsp = hsp / 3;
		}
		grav = 0.2;
		break;
		
		case 2:
		can_move = true;
		if (hitpause <= 0) {
			vsp = -9;
		}
		
		if (hsp > 3) {
			hsp = 3;
		} else if (hsp < -3) {
			hsp = -3;
		}
		
		if (window_timer == 0 || window_timer == 5 || window_timer == 10 || window_timer == 15) {
			create_hitbox(AT_USPECIAL, 7, x, y);
		}
		break;
		
		case 3:
		if (hsp > 3) {
			hsp = 3;
		} else if (hsp < -3) {
			hsp = -3;
		}
		
		if (window_timer > 5) {
			can_walljump = true;
		}
		
		case 4:
		
		can_walljump = true;
		
		break;
		
		break;
		
		default:
		
		break;
	}
	
	can_fast_fall = false;
}

if (attack == AT_NSPECIAL) {
    if (window == 1 || window == 2 || window == 3) {
        CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
        
        //if (hsp > 1) {
        //	hsp = 1;
        //} else if (hsp < -1) {
        //	hsp = -1;
        //}
        
        if (vsp > 1) {
        	vsp = 1;
        }
    }
    
    if (window == 1) {
        if (window_timer == 4) {
            sound_play(asset_get("sfx_ell_utilt_retract"));
        }
        
        //CannNSpecialVsp = -1.03;
		//CannNSpecialHsp = 2.82;
		CannNSpecialVelocity = 3;
        CannNSpecialSpdTimer = 0;
        CannDotTime = 0;
        
        CannDot1XPos = 0;
        CannDot1YPos = 0;
        CannDot2XPos = 0;
        CannDot2YPos = 0;
        CannDot3XPos = 0;
        CannDot3YPos = 0;
        CannDot4XPos = 0;
        CannDot4YPos = 0;
        CannDot5XPos = 0;
        CannDot5YPos = 0;
    }
    
    if (window == 2) {
        
        /*if (CannNSpcCharge < 3) {
        	if (CannNSpcChargeTimer >= 20 && CannNSpcCharge <= 2) {
	            CannNSpcCharge += 1; 
	            if (CannNSpcCharge != 3) {
	                sound_play(asset_get("mfx_xp"));
	            } else {
	                sound_play(asset_get("sfx_shop_buy"));
	                
	            }
	            CannNSpcChargeTimer = 0;
	        }
        }
        
        CannNSpcChargeTimer += 1;
		
		if (special_down == false) {
		    window = 3;
		}
		
		// Charging
		
		if (CannNSpecialSpdTimer <= 60) {
			if (CannStoredNSpecialAmt == 0) {
				CannNSpecialVelocity = ease_linear( 30, 90, CannNSpecialSpdTimer, 60 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 1) {
				CannNSpecialVelocity = ease_linear( 50, 90, CannNSpecialSpdTimer, 40 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 2) {
				CannNSpecialVelocity = ease_linear( 70, 90, CannNSpecialSpdTimer, 20 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 3) {
				CannNSpecialVelocity = 7;
			}
			
			CannNSpecialHsp = CannNSpecialVelocity * dcos(55) * spr_dir;
			
			CannNSpecialVsp = CannNSpecialVelocity * dsin(55) * -1; // Note Flipped Coordinates
			
			CannNSpecialSpdTimer += 1;
		}*/
        
        if (free == true) {
	        if (hsp > 2) {
	        	hsp = 2;
	        } else if (hsp < -2) {
	        	hsp = -2;
	        }
        }
        
        CannNSpecialHsp = 1.5 * spr_dir;
			
		CannNSpecialVsp = -2.6; // Note Flipped Coordinates
        
        CannBallParry = false;
        
        //can_jump = true;
        //can_shield = true;
        //can_wall_jump = true;
        grav = 0.25;
    }

	if (window == 2 || window == 3) {
		// Dot 1
		CannDot1XPos = (x + 47 * spr_dir) + CannNSpecialHsp * 9;
		CannDot1YPos = (y - 19) + CannNSpecialVsp * 12 + 0.5 * 0.3 * (81);
		
		// Dot 2
		CannDot2XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (18);
		CannDot2YPos = (y - 19) + CannNSpecialVsp * (24) + 0.5 * 0.3 * (324);
		
		// Dot 3
		CannDot3XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (27);
		CannDot3YPos = (y - 19) + CannNSpecialVsp * (36) + 0.5 * 0.3 * (729);
		
		// Dot 4
		CannDot4XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (36);
		CannDot4YPos = (y - 19) + CannNSpecialVsp * (48) + 0.5 * 0.3 * (1296);
		
		// Dot 5
		CannDot5XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (45);
		CannDot5YPos = (y - 19) + CannNSpecialVsp * (60) + 0.5 * 0.3 * (2025);
		
		CannBallDie = false;
	}

    if (window == 3 || window == 4) {
        grav = 0.2;
    }
    
    if (window == 5) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_explosion_medium"));
            CannCannonBallActive = true;
            instance_create(x+42*spr_dir, y-42, "obj_article1");
            CannNSpcCharge = 0;
            CannNSpcChargeTimer = 0;
            
            CannNSpecialVsp = -1.03;
			CannNSpecialHsp = 2.82;
			CannNSpecialVelocity = 3;
        	CannNSpecialSpdTimer = 0;
        	CannDotTime = 0;
        	
        	CannStoredNSpecialAmt = 0;
        	
        	
        } else {
        	can_jump = true;
        	can_shield = true;
        	can_attack = true;
        	can_special = true;
        }
    }
    
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
    
}

// Teleport

if (attack == AT_FTILT) {
	if (window == 1) {
		if (window_timer == 1) {
			CannTpX = x;
			CannTpY = y;
			
			CannBallGetValues = true;
		}
		
		vsp = 0;
		hsp = 0;
	}
	
	if (window == 2) {
		if (window_timer == 1) {
			create_hitbox(AT_USPECIAL, 1, CannTpX, CannTpY);
			
			
			
			x = CannBallTpX + 22 * spr_dir;
			y = CannBallTpY;
			hsp = CannBallTpHsp;
			vsp = CannBallTpVsp;
			
			CannTpUsed = true;
			
			CannBallDelete = true;
			CannBallGetValues = false;
		} else {
			CannBallDelete = false;
		}
		
		if (window_timer == 2) {
			create_hitbox(AT_USPECIAL, 8, x - 20 * spr_dir, y - 30);
		}
		
		grav = 0.2;
	}
	
	if (window == 3) {
		can_jump = true;
		can_shield = true;
		can_attack = true; 
		can_special = true;
	}
}

if (attack == AT_FSPECIAL) {
	
	if (window == 1) {
		if (free == false) {
        	CannBallFSpcLand = true;
        } else {
        	CannBallFSpcLand = false;
        }
        
        CannFSpecialLanded = false;
        
        with (oPlayer) {
    		if (id != other.id) {
		        CannOppFSpecialHit = false;
    		}
    	}
        
        hsp = hsp / 3;
	}
	
    if (window == 1 || window == 2) {
        vsp = 0;
        grav = 0.4;
        CannFSpcUsed = true;
        
    }
    
    if (window == 2) {
        
        if (window_timer == 3) {
        	sound_play(asset_get("sfx_ell_utilt_cannon"));
        }
        
        if (CannFSpcDashTimer == 1) {
            //hsp = 12 * spr_dir;
            CannFSpcDashLength = 35;
        }
        
        if (free == true) {
        	hsp = 11 * spr_dir;
        } else {
        	hsp = 8.5 * spr_dir;
        }
        
        if (CannFSpecialLanded == true) {
        	window_timer = CannFSpcDashLength;
        	CannFSpecialLanded = false;
        } else {
        	CannFSpcDashLength = window_timer;
        }
        
        // Ledge Snapping
        if (place_meeting(x + hsp, y, asset_get("par_block")) && free) {
		    for (var i = 1; i < 20; i++){
		        if (!place_meeting(x + hsp, y- i ,asset_get("par_block"))) {
		            reset_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE);
		            reset_window_value(AT_FSPECIAL, 13, AG_WINDOW_TYPE);
		            y -= i;
		            CannBallFSpcLand = true;
		            CannFSpecialLanded = true;
		            break;
		        }
		    }
		}
        
        if (has_hit_player == true) {
            window = 4;
            window_timer = 0;
            CannFSpcDashTimer = 0;
        }
        
        //if (CannFSpcDashTimer == 1) {
        //    create_hitbox(AT_FSPECIAL, 1, x, y);
        //}
        
        if (window_timer == 24) {
            window = 6;
            window_timer = 0;
            hsp = hsp / 3;
            CannFSpcDashTimer = 0;
        }
        CannFSpcDashTimer += 1;
    }
    
    if (window == 3) {
        hsp = hsp / 2;
        vsp = vsp / 2;
        grav = 0.2;
        
    }
    
    if (window == 4) {
        hsp = 0;
        vsp = 0;
        
    }
    
    if (window == 4 || (window == 5 && window_timer < 10)) {
    	with (oPlayer) {
    		if (CannOppFSpecialHit == true && id != other.id) {
		    	vsp = 0;
				hsp = 0;
				x = other.x + 30 * other.spr_dir;
				y = other.y - 20;
		        hitpause = 1;
		        hitpause_timer = 1;
		        visible = false;
		        invincible = true;
		        other.CannBallFSpcLand = true;
    		}
    		
    	}
        attack_invince = true;
        
    }
    
    if (window == 5) {
        hsp = 0;
        vsp = 0;
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_fist_fire"));
            
        }
        
        CannFSpcChargeShotTimer = 0;
        
        if (window_timer == 10) {
        	with (oPlayer) {
        		if (CannOppFSpecialHit == true && id != other.id) {
		            visible = true;
		            invincible = false;
		            CannOppFSpecialHit = false;
        		}
        	}
            attack_invince = false;
            CannGrabbedId = 0;
        }
        
        if (window_timer == 17) {
            CannFSpcCharge = 0;
            window = 6;
        }
    }
    
    if (window == 6) {
        
        move_cooldown[AT_FSPECIAL] = 30;
    }
    
    if (window_timer == 15 && CannBallFSpcLand == false && free == true) {
    	set_state(PS_PRATFALL);
    	hsp = hsp / 4;
    	vsp = vsp / 4;
    }
    
    can_move = false;
    can_fast_fall = false;
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
}

if (attack == AT_DSPECIAL) {
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol

    if (window == 1) {
    	
    	damage_scaling = 0.5;
    	
    	if (window_timer > 5 && window_timer < 19) {
	        super_armor = true;
	        CannCounterActive = true;
	        
	        if (free == true) {
	            hsp = 0;
	        }
	        vsp = 0;
		    
		    if (CannCounterAttack == true) {
				sound_play(asset_get("sfx_buzzsaw_hit"));
				if (CannDSpcDmg <= 30) {
					set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5 + CannDSpcDmg);
				} else {
					set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 35);
				}
				
				super_armor = false;
				attack_invince = true;
				CannCounterActive = false;
		        
		        if (CannDSpcMeleeHit == true) {
		            if (point_distance( x, y, CannCounteredEnemyId.x, CannCounteredEnemyId.y ) >= 60) {
		    			hsp = hsp / 3;
		    		}
		    		CannDSpcMeleeHit = false;
		        }
		        
		        window_timer = 0;
    			window = 2;
		    }
		    
    	} else if (window_timer >= 19) {
    		window_timer = 0;
    		window = 3;
		    CannCounterActive = false;
	        super_armor = false;
    	} else {
    		CannCounterActive = false;
    		CannCounterAttack = false;
    	}
	    
    }
    
    if (window > 1) {
    	damage_scaling = 1;
    }
	
	if (window == 2) {
		
	
	    
	}
	
	if (window == 3) {
	    if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_utilt_retract"));
        }
        
        CannCounterActive = false;
        
        CannCounteredEnemyId = 0;
        
        invincible = 0;
        super_armor = false;
        move_cooldown[AT_DSPECIAL] = 20;
	}
	
	grav = 0.2;
	can_fast_fall = false;
}

if (attack == AT_USTRONG) {
	
	if (window == 4) {
		
		if (window_timer > 8) {
			CannGrabbedId.hsp = hsp;
		}
		
	}
	
	if (CannGrabbedId != 0) {
		if (CannUStrongEasingTimer < 20) {
			CannGrabbedId.x = ease_cubeOut( CannUStrongStartX, x - (10 * spr_dir), CannUStrongEasingTimer, 20 );
			CannGrabbedId.y = ease_cubeOut( CannUStrongStartY, y - 55, CannUStrongEasingTimer, 20 );
			CannUStrongEasingTimer += 1;
		} else {
			CannGrabbedId.x = x - (10 * spr_dir);
			CannGrabbedId.y = y - 55;
		}
		CannGrabbedId.hsp = 0;
		CannGrabbedId.vsp = 0;
	}
	
	if (window == 6) {
		
		if (window_timer == 7) {
			CannGrabbedId = 0;
			CannUStrongEasingTimer = 0;
		}
	}
}

if (attack == AT_TAUNT) {
	if (window == 2) {
		if (hsp > 0.5 || hsp < -0.5) {
			if (spr_dir = 1) {
				if (window_timer == 1) {
					if (hsp > 0) {
						ConfettiRedHsp = hsp + 4;
						ConfettiGreenHsp = hsp + 2;
						ConfettiBlueHsp = hsp + 3.75;
						ConfettiYellowHsp = hsp + 4;
					} else {
						ConfettiRedHsp = 4;
						ConfettiGreenHsp = 2;
						ConfettiBlueHsp = 3.75;
						ConfettiYellowHsp = 4;
					}
				}
				set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, ConfettiRedHsp);
				set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, ConfettiGreenHsp);
				set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, ConfettiBlueHsp);
				set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_HSPEED, ConfettiYellowHsp);
			} else {
				if (window_timer == 1) {
					if (hsp < 0) {
						ConfettiRedHsp = (-1 * hsp) + 4;
						ConfettiGreenHsp = (-1 * hsp) + 2;
						ConfettiBlueHsp = (-1 * hsp) + 3.75;
						ConfettiYellowHsp = (-1 * hsp) + 4;
					} else {
						ConfettiRedHsp = 4;
						ConfettiGreenHsp = 2;
						ConfettiBlueHsp = 3.75;
						ConfettiYellowHsp = 4;
					}
				}
				set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, ConfettiRedHsp);
				set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, ConfettiGreenHsp);
				set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, ConfettiBlueHsp);
				set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_HSPEED, ConfettiYellowHsp);
			}
		} else {
			ConfettiRedHsp = 4;
			ConfettiGreenHsp = 2;
			ConfettiBlueHsp = 3.75;
			ConfettiYellowHsp = 4;
			set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, ConfettiRedHsp);
			set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, ConfettiGreenHsp);
			set_hitbox_value(AT_TAUNT, 3, HG_PROJECTILE_HSPEED, ConfettiBlueHsp);
			set_hitbox_value(AT_TAUNT, 4, HG_PROJECTILE_HSPEED, ConfettiYellowHsp);
		}
	}
}


/*

Removed USPECIAL
if (attack == AT_USPECIAL) {
    if (window == 1 || window == 2 || window == 3) {
        CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
        
        if (hsp > 3.5) {
        	hsp = 3.5;
        } else if (hsp < -3.5) {
        	hsp = -3.5;
        }
        
        if (vsp > 1) {
        	vsp = 1;
        }
    }
    
    if (window == 1) {
        if (window_timer == 4) {
            sound_play(asset_get("sfx_ell_utilt_retract"));
        }
        
        //CannNSpecialVsp = -2.82;
		//CannNSpecialHsp = 1.03;
		CannNSpecialVelocity = 3;
        CannNSpecialSpdTimer = 0;
        CannDotTime = 0;
        
        CannDot1XPos = 0;
        CannDot1YPos = 0;
        CannDot2XPos = 0;
        CannDot2YPos = 0;
        CannDot3XPos = 0;
        CannDot3YPos = 0;
        CannDot4XPos = 0;
        CannDot4YPos = 0;
        CannDot5XPos = 0;
        CannDot5YPos = 0;
    }
    
    if (window == 2) {
        
        if (CannNSpcCharge < 3) {
        	if (CannNSpcChargeTimer >= 20 && CannNSpcCharge <= 2) {
	            CannNSpcCharge += 1; 
	            if (CannNSpcCharge != 3) {
	                sound_play(asset_get("mfx_xp"));
	            } else {
	                sound_play(asset_get("sfx_shop_buy"));
	                
	            }
	            CannNSpcChargeTimer = 0;
	        }
        }
        
        CannNSpcChargeTimer += 1;
		
		if (special_down == false) {
		    window = 3;
		}
		
		// Charging
		
		if (CannNSpecialSpdTimer <= 60) {
			if (CannStoredNSpecialAmt == 0) {
				CannNSpecialVelocity = ease_linear( 30, 90, CannNSpecialSpdTimer, 60 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 1) {
				CannNSpecialVelocity = ease_linear( 50, 90, CannNSpecialSpdTimer, 40 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 2) {
				CannNSpecialVelocity = ease_linear( 70, 90, CannNSpecialSpdTimer, 20 ) * 0.1;
			} else if (CannStoredNSpecialAmt == 3) {
				CannNSpecialVelocity = 7;
			}
			//CannNSpecialVelocity = ease_linear( 3, 7, CannNSpecialSpdTimer, 60 );
			
			CannNSpecialHsp = CannNSpecialVelocity * dcos(70) * spr_dir;
			
			CannNSpecialVsp = CannNSpecialVelocity * dsin(70) * -1; // Note Flipped Coordinates
			
			CannNSpecialSpdTimer += 1;
		}
        
        can_jump = true;
        can_shield = true;
        can_wall_jump = true;
        grav = 0.25;
    }

	if (window == 2 || window == 3) {
		// Dot 1
		CannDot1XPos = (x + 47 * spr_dir) + CannNSpecialHsp * 12;
		CannDot1YPos = (y - 19) + CannNSpecialVsp * 12 + 0.5 * 0.3 * (144);
		
		// Dot 2
		CannDot2XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (24);
		CannDot2YPos = (y - 19) + CannNSpecialVsp * (24) + 0.5 * 0.3 * (576);
		
		// Dot 3
		CannDot3XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (36);
		CannDot3YPos = (y - 19) + CannNSpecialVsp * (36) + 0.5 * 0.3 * (1296);
		
		// Dot 4
		CannDot4XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (48);
		CannDot4YPos = (y - 19) + CannNSpecialVsp * (48) + 0.5 * 0.3 * (2304);
		
		// Dot 5
		CannDot5XPos = (x + 47 * spr_dir) + CannNSpecialHsp * (60);
		CannDot5YPos = (y - 19) + CannNSpecialVsp * (60) + 0.5 * 0.3 * (3600);
		
	}

    if (window == 3 || window == 4) {
        grav = 0.05;
    }
    
    if (window == 5) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_explosion_medium"));
            CannCannonBallActive = true;
            instance_create(x+15*spr_dir, y-50, "obj_article1");
            CannNSpcCharge = 0;
            CannNSpcChargeTimer = 0;
            
            CannNSpecialVsp = -1.03;
			CannNSpecialHsp = 2.82;
			CannNSpecialVelocity = 3;
			CannNSpecialSpdTimer = 0;
			CannDotTime = 0;
			
			CannStoredNSpecialAmt = 0;
        }
        
        if (window_timer > 1) {
        	if (special_down == true) {
        		attack = AT_FTILT;
        		window = 1;
        		window_timer = 1;
        	}
        }
        
		grav = 0.05;
    }
    
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
    
}