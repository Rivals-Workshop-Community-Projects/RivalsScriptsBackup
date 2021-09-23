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
    
    if (hsp > 2.25) {
        set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, hsp);
    } else if (hsp < -2.25) {
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
        var DTiltMaxSpeed = HeatLevel + 5;
        if (hsp >= 4) {
            var DTiltHspTest = hsp + (6 * spr_dir);
            if (DTiltHspTest <= DTiltMaxSpeed) {
                hsp = DTiltHspTest;
            } else {
                hsp = DTiltMaxSpeed * spr_dir;
            }
        } else {
            hsp = DTiltMaxSpeed * 0.75 * spr_dir;
        }
        
        
    }
    
    
    if (window == 2 && window_timer <= 2) {
        if (down_down == false && hsp != 0) {
            hsp = hsp / 1.66;
        }
    }
    if (window == 2 && window_timer == 6) {
        if (down_down == true) {
            window = 3;
        }
    }
    
    
    if (window == 2) {
        if (hsp <= 6.5 && hsp >= -6.5 ) {
            set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
            set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 60);
        } else if (hsp > 6.5 || hsp < -6.5) {
            set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 60);
            set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 40);
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
    
    /*if (window == 1) {
    	if (window_timer == 1) {
    		if (hsp = 0) {
				hsp = CannStrongHspStore;
			}
    	}
    }
    if (window == 2) {
        if (hsp > 0 || hsp < 0) {
            DAttackHSP = (hsp * spr_dir) + 8;
        }else {
            DAttackHSP = 8;
        }
        set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, DAttackHSP);
    }*/
    
    //if (window = 3) {
    //    hsp = 0;
    //}
    
    
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
    	//if (CannNairDidReduce == false) {
    	//	CannNairVspReduce = true;
    	//}
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
    if (window == 1 || window == 2 || window == 3) {
        if (vsp > 0.1 || vsp < -0.1) {
            vsp = vsp / 2;
        } else {
            vsp = 0;
        }
        
        if (hsp > 0.1 || hsp < -0.1) {
            hsp = hsp / 2;
        } else {
            hsp = 0;
        }
        grav = 0.2;
        can_fast_fall = false;
    }
    
    if (window == 1) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_utilt_retract"));
        }
        CannUSpcCharging = true;
        if (free == true) {
            CannUSpcUses = 0;
        }
    }
    
    if (window == 2) {
        CannUSpcCharging = true;
        if (CannUSpcChargingTimer == 20) {
            if (HeatLevel > 0 && CannUSpcChargePower < 4 && special_down == true) {
                HeatLevel -= 1;
                CannUSpcChargePower += 1;
                if (CannUSpcChargePower != 4) {
                sound_play(asset_get("mfx_xp"));
            } else {
                sound_play(asset_get("sfx_shop_buy"));
                
            }
            } else {
                window = 3;
            }
            CannUSpcChargingTimer = 0;
        }
        CannUSpcChargingTimer += 1;
    }
    
    if (window == 3) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_explosion_medium"));
        }
        CannUSpcCharging = false;
        CannUSpcX = x;
        CannUSpcY = y;
        set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9 + CannUSpcChargePower);
    }
    
    if (window == 4) {
        if (CannUSpcShootBallEndTimer == 0) {
            y = y - 40;
            //x = x + (20 * spr_dir);
            vsp = -14 - (CannUSpcChargePower* 2);
            
        }
        if (CannUSpcShootBallEndTimer == 1) {
            hsp = (4 + (CannUSpcChargePower)) * spr_dir;
        }
        if (CannUSpcShootBallEndTimer == 2) {
            set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, (vsp/hsp));
            set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8 + (1.5 * CannUSpcChargePower));
            set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 70);
            create_hitbox(AT_USPECIAL, 2, CannUSpcX - (25 * spr_dir), CannUSpcY - 30);
            
        }
        
        CannUSpcShootBallEndTimer += 1;
        if ((free == false && CannUSpcShootBallEndTimer > 10)) {
            window = 5;
            CannUSpcShootBallEndTimer = 0;
            CannUSpcChargePower = 0;
        }
        
        CannUSpcShootHitboxTimer += 1;
        
        /*if (CannUSpcShootHitboxTimer == 8) {
            if (vsp < 0) {
                set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, (vsp/hsp));
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, hsp);
                set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, vsp);
                if (CannUSpcChargePower < 3) {
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 14 + ((3 + (CannUSpcChargePower / 1.5)) * CannUSpcChargePower));
                } else {
                    set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 18 + ((4 + (CannUSpcChargePower * 4)) * CannUSpcChargePower));
                }
                create_hitbox(AT_USPECIAL, 1, x, y - 30);
                CannUSpcShootHitboxTimer = 0;
            }
        }*/
        
        /*if (vsp > 0 && CannUSpcShootHitboxTimer < 10) {
            create_hitbox(AT_USPECIAL, 3, x, y - 30);
            CannUSpcShootHitboxTimer = 100;
        }*/
        
        //can_jump = true;
        //can_attack = true;
        
        soft_armor = 200;
        
        if (vsp > 0) {
            //can_attack = true;
            //can_jump = true;
            //can_shield = true;
        }
        
        can_wall_jump = true;
        grav = 0.75;
    }
    
    if (window == 5) {
        CannUSpcShootBallEndTimer = 0;
        CannUSpcChargePower = 0;
        //can_jump = true;
        //can_attack = true;
        can_wall_jump = true;
        grav = 0.5;
        soft_armor = 0;
    }
    
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
}

if (attack == AT_NSPECIAL) {
    if (window == 1 || window == 2 || window == 3) {
        CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
    }
    
    if (window == 1) {
        if (window_timer == 4) {
            sound_play(asset_get("sfx_ell_utilt_retract"));
        }
    }
    
    if (window == 2) {
        
        if (CannNSpcChargeTimer >= 15 && CannNSpcCharge <= 2 && HeatLevel >= 1) {
            HeatLevel -= 1;
            CannNSpcCharge += 1; 
            if (CannNSpcCharge != 3) {
                sound_play(asset_get("mfx_xp"));
            } else {
                sound_play(asset_get("sfx_shop_buy"));
                
            }
            CannNSpcChargeTimer = 0;
        }
        CannNSpcChargeTimer += 1;
        
        if (special_down == false) {
            window = 3;
        }
        
        can_jump = true;
        can_shield = true;
        can_wall_jump = true;
        grav = 0.25;
    }

    if (window == 3) {
        //hsp = hsp / 2;
        //vsp = vsp / 2;
        grav = 0.25;
    }
    
    if (window == 4) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_explosion_medium"));
            CannCannonBallActive = true;
            instance_create(x+45*spr_dir, y-20, "obj_article1");
            //if ((spr_dir == 1 && right_down) || (spr_dir == -1 && left_down)) {
            //    hsp = (-3.5 - CannNSpcCharge) * spr_dir;
            //}
            //if (free == true) {
                //vsp = (-2 - (CannNSpcCharge * 2))
            //}
            CannNSpcCharge = 0;
            CannNSpcChargeTimer = 0;
        }
    }
    
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
    
}

if (attack == AT_FSPECIAL) {
    if (window == 1 || window == 2) {
        vsp = 0;
        grav = 0.4;
        CannFSpcUsed = true;
    }
    
    if (window == 1) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_utilt_cannon"));
        }
    }
    
    if (window == 2) {
        
        if (CannFSpcDashTimer == 1) {
            hsp = (7 + (HeatLevel / 3)) * spr_dir;
            CannFSpcDashLength = 35 - (HeatLevel / 2);
        }
        
        
        if (has_hit_player == true) {
            window = 4;
            window_timer = 0;
            CannFSpcDashTimer = 0;
        }
        
        if (CannFSpcDashTimer == 1) {
            create_hitbox(AT_FSPECIAL, 1, x, y);
        }
        
        if (CannFSpcDashTimer >= 20) {
            window = 6;
            CannFSpcDashTimer = 0;
        }
        CannFSpcDashTimer += 1;
        
        if (CannFSpcDashTimer >= 10) {
            //can_jump = true;
            //can_shield = true;
            can_wall_jump = true;
        }
    }
    
    if (window == 3) {
        hsp = hsp / 2;
        vsp = vsp / 2;
        grav = 0.2;
    }
    
    if (window == 4) {
        hsp = 0;
        vsp = 0;
        
        if (HeatLevel > 0) {
            if (CannFSpcChargeShotTimer >= 15 && HeatLevel > 0) {
                if (HeatLevel > 0 && CannFSpcCharge < 3) {
                    HeatLevel -= 1;
                    CannFSpcCharge += 1;
                    if (CannFSpcCharge != 3) {
                        sound_play(asset_get("mfx_xp"));
                    } else {
                        sound_play(asset_get("sfx_shop_buy"));
                    }
                } else {
                    window = 5;
                    CannFSpcChargeShotTimer = 0;
                }
                CannFSpcChargeShotTimer = 0;
            }
            CannFSpcChargeShotTimer += 1;
        } else {
            window = 5;
        }
        
        
        if (special_down == false) {
            window = 5;
        }
        
    }
    
    if (window == 5) {
        hsp = 0;
        vsp = 0;
        if (window_timer == 1) {
            sound_play(asset_get("sfx_ell_utilt_loop"));
            
        }
        
        CannFSpcChargeShotTimer = 0;
        
        if (window_timer < 12) {
            if (CannFSpcCharge == 0) {
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
                set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
                set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
            } 
            if (CannFSpcCharge == 1) {
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
                set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9.5);
                set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
            } 
            if (CannFSpcCharge == 2) {
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
                set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 11);
                set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
            } 
            if (CannFSpcCharge == 3) {
                set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 40);
                set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 12.5);
                set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.7);
            } 
            CannGrabbedId.vsp = 0;
            CannGrabbedId.hsp = 0;
            CannGrabbedId.x = x + 30 * spr_dir;
            CannGrabbedId.y = y - 20;
        }
        if (window_timer == 11) {
            CannGrabbedId.visible = true;
            with (oPlayer) {
    			//if (id != other.id) continue; //ignore the player that called this 'with' statement
    			if (id != other.id) {
    				if (CannOppInvis == true) {
    					visible = true;
    					CannOppInvis = false;
    				}
    			}
            }
            hit_player_obj.invincible = false;
            create_hitbox(AT_FSPECIAL, 2, x - 40 * spr_dir, y - 30);
        }
        
        if (window_timer == 17) {
            CannFSpcCharge = 0;
            window = 6;
        }
    }
    
    if (window == 6) {
        if (window_timer == 1) {
            sound_play(asset_get("sfx_mobile_gear_wall"));
            hsp = hsp / 2;
            CannGrabbedId = 0;
        }
        
        move_cooldown[AT_FSPECIAL] = 30;
    }
    
    can_move = false;
    can_fast_fall = false;
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
}

if (attack == AT_DSPECIAL) {
    CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol

    if (window == 1) {
        super_armor = true;
        CannCounterActive = true;
        
        if (window_timer == 1) {
            sound_play(asset_get("sfx_gus_propeller_dagger_wall"));
        }
        
        if (free == true) {
            hsp = 0;
        }
        vsp = 0;
	    
	    if (CannCounterAttack == true) {
	        if (CannCounterStunHit == false) {
	            sound_play(asset_get("sfx_buzzsaw_hit"));
	            //create_hitbox(AT_DSPECIAL, 2, x, y);
	            window = 2;
	            CannCounterStunHit = true;
	        }
	        
	        if (CannDSpcMeleeHit == true) {
	            if (point_distance( x, y, CannCounteredEnemyId.x, CannCounteredEnemyId.y ) >= 60) {
	    			hsp = hsp / 2;
	    		}
	        }
	    }
	    
    }
    
    if (window == 2) {
    	
        if (CannCounterAttack == false) {
	        window = 4;
	        super_armor = false;
        } else {
	        if (CannDSpcKB <= 7) {
	            set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5 + CannDSpcKB);
	        } else {
	            set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);
	        }
	        if (CannDSpcDmg <= 30) {
	            set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 5 + CannDSpcDmg);
	        } else {
	            set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 35);
	        }
	        invincible = 2;
	        super_armor = false;
	    }
	}
	
	if (window == 3) {
		
		invincible = 2;
		
	    if (window_timer == 1) {
	    	if (CannDSpcMeleeHit == true) {
	    		if (point_distance( x, y, CannCounteredEnemyId.x, CannCounteredEnemyId.y ) >= 60) {
	    			hsp = hsp / 2;
	    		}
	        	
	            if (HeatLevel + 3 <= 10) {
	            	HeatLevel += 3;
	            } else {
	            	HeatLevel = 10;
	            }
	            CannDSpcMeleeHit = false;
	        } else {
	        	CannCounterHeatGain = round(CannDSpcDmg / 3) + 1;
	        	if (CannCounterHeatGain + HeatLevel <= 10) {
	        		HeatLevel += CannCounterHeatGain;
	        	} else {
	        		HeatLevel = 10;
	        	}
	        }
	    	
	    	
	    	
	    	CannCounterActive = false;
	    	
            sound_play(asset_get("sfx_ell_explosion_medium"));
        }
	    CannCounterAttack = false;
	}
	
	if (window == 4) {
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

if (attack == AT_FSTRONG) {
	if (window == 1) {
		if (window_timer == 1) {
			if (HeatLevel > 0) {
				HeatLevel -= 1;
			}
			sound_play(asset_get("mfx_xp"));
			if (hsp = 0) {
				hsp = CannStrongHspStore;
			}
		}
		if (window_timer == 6) {
			sound_play(asset_get("sfx_ell_utilt_retract"));
		}
	}
	if (window == 2) {
		
		
		if (CannStrongTimer >= 20) {
			if (HeatLevel > 0 && CannStrongPower <= 1) {
				HeatLevel -= 1;
            	CannStrongPower += 1;
            	if (CannStrongPower != 2) {
            	    sound_play(asset_get("mfx_xp"));
            	} else {
            	    sound_play(asset_get("sfx_shop_buy"));
            	}
            	CannStrongTimer = 0;
			} else {
				sound_play(asset_get("sfx_ell_explosion_medium"));
				window = 3;
				window_timer = 0;
				CannStrongTimer = 0;
			}
		}
		
		if (CannAttackDown == false) {
			sound_play(asset_get("sfx_ell_explosion_medium"));
            window = 3;
        }
		
		CannStrongTimer += 1;
	}
	
	if (window == 3) {
		if (window_timer == 1) {
			if (CannStrongPower == 0) { // 
				set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 12);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 12);
				set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 12);
			}
			if (CannStrongPower == 1) {
				set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 19);
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 14);
				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 19);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 14);
				set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 19);
				set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 14);
			}
			if (CannStrongPower == 2) {
				set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 26);
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 16);
				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 26);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 16);
				set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 26);
				set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 16);
			}
		}
		
		if (window_timer == 8) {
			//create_hitbox(AT_FSTRONG, 1, x, y);
		}
		if (window_timer == 12) {
			//create_hitbox(AT_FSTRONG, 2, x, y);
		}
		if (window_timer == 12) {
			create_hitbox(AT_FSTRONG, 3, x, y);
		}
	}
	
	CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
}

if (attack == AT_USTRONG) {
	if (window == 1) {
		if (window_timer == 1) {
			if (HeatLevel > 0) {
				HeatLevel -= 1;
			}
			sound_play(asset_get("mfx_xp"));
			if (hsp = 0) {
				hsp = CannStrongHspStore;
			}
		}
		if (window_timer == 6) {
			sound_play(asset_get("sfx_ell_utilt_retract"));
		}
	}
	if (window == 2) {
		
		
		if (CannStrongTimer >= 20) {
			if (HeatLevel > 0 && CannStrongPower <= 1) {
				HeatLevel -= 1;
            	CannStrongPower += 1;
            	if (CannStrongPower != 2) {
            	    sound_play(asset_get("mfx_xp"));
            	} else {
            	    sound_play(asset_get("sfx_shop_buy"));
            	}
            	CannStrongTimer = 0;
			} else {
				window = 3;
				window_timer = 0;
				CannStrongTimer = 0;
			}
		}
		
		if (CannAttackDown == false) {
            window = 3;
        }
		
		CannStrongTimer += 1;
	}
	
	if (window == 4) {
		if (window_timer == 1) {
			//sound_play(asset_get("sfx_ell_explosion_medium"));
			if (CannStrongPower == 0) {
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 10);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 12);
			}
			if (CannStrongPower == 1) {
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 16);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 14);
				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 16);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 14);
				set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 16);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 14);
			}
			if (CannStrongPower == 2) {
				set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 22);
				set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 16);
				set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 22);
				set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 16);
				set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 22);
				set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 16);
			}
			
			if (hsp > 4 || hsp < -4) {
				set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 55);
			} else {
				set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 70);
			}
		}
		
		if (window_timer == 2) {
			create_hitbox(AT_USTRONG, 4, x, y);
		}
		
		if (window_timer > 8) {
			CannGrabbedId.hsp = hsp;
		}
		
		
	}
	
	if (window == 6) {
		if (window_timer < 8) {
			if (CannGrabbedId != 0) {
				CannGrabbedId.x = x + (30 * spr_dir);
				CannGrabbedId.y = y - 50;
				CannGrabbedId.hsp = hsp;
			}
		}
		
		if (window_timer == 10) {
			CannGrabbedId = 0;
		}
		if (window_timer == 12) {
			create_hitbox(AT_USTRONG, 3, x, y);
		}
	}
	
	CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
}

if (attack == AT_DSTRONG) {
	if (window == 1) {
		if (window_timer == 1) {
			if (HeatLevel > 0) {
				HeatLevel -= 1;
			}
			sound_play(asset_get("mfx_xp"));
			if (hsp = 0) {
				hsp = CannStrongHspStore;
			}
		}
		if (window_timer == 6) {
			sound_play(asset_get("sfx_ell_utilt_retract"));
		}
	}
	if (window == 2) {
		
		
		if (CannStrongTimer >= 20) {
			if (HeatLevel > 0 && CannStrongPower <= 1) {
				HeatLevel -= 1;
            	CannStrongPower += 1;
            	if (CannStrongPower != 2) {
            	    sound_play(asset_get("mfx_xp"));
            	} else {
            	    sound_play(asset_get("sfx_shop_buy"));
            	}
            	CannStrongTimer = 0;
			} else {
				window = 3;
				window_timer = 0;
				CannStrongTimer = 0;
			}
		}
		
		if (CannAttackDown == false) {
            window = 3;
        }
		
		CannStrongTimer += 1;
	}
	
	if (window == 3) {
		if (window_timer == 1) {
			//sound_play(asset_get("sfx_ell_explosion_medium"));
			if (CannStrongPower == 0) {
				set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 11);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 10);
				set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 11);
				set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 10);
			}
			if (CannStrongPower == 1) {
				set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 17);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 11.5);
				set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 17);
				set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 11.5);
			}
			if (CannStrongPower == 2) {
				set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 24);
				set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 13);
				set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 24);
				set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 13);
			}
		}
		
		if (window_timer == 8) {
			create_hitbox(AT_DSTRONG, 1, x, y);
		}
		if (window_timer == 16) {
			create_hitbox(AT_DSTRONG, 2, x, y);
		}
		if (window_timer == 28) {
			create_hitbox(AT_DSTRONG, 1, x, y);
		}
	}
	
	CannUSpcCharging = true; // So you can't explode yourself during these windows, but I'm too lazy to change it from Up special lol
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