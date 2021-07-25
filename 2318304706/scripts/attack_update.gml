//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_JAB) {
	if (window == 4) {
		timedHitAvailable = true;
		clear_button_buffer(PC_ATTACK_PRESSED);
	} else if ((window != 6) && attack_pressed){timedHitAvailable = false;}
	if (window == 5) {
		set_hitbox_value(AT_JAB, 5, HG_WINDOW, 6);
		set_hitbox_value(AT_JAB, 6, HG_WINDOW, 60);
		if (window_timer == 1 && !hitpause) {spawn_hit_fx(x + 44 * spr_dir, y - 36, muzzleJab)};
	}
	if (window == 6) {
		if (window_timer == 1 && !hitpause) {spawn_hit_fx(x + 40 * spr_dir, y - 36, muzzleJab)};
		if (window_timer == 5 && !hitpause) {spawn_hit_fx(x + 40 * spr_dir, y - 36, muzzleJab)};
		if (window_timer == 9 && !hitpause) {spawn_hit_fx(x + 40 * spr_dir, y - 36, muzzleJab)};
		
		if (window_timer < 8 && (timedHitAvailable == true || isAI == true)) {
			shouldShowIndicator = 1;
			if (attack_pressed && (get_hitbox_value(AT_JAB, 6, HG_WINDOW) == 60|| isAI == true)) {
				sound_play(sound_get("smrpg_character_extrapower"));
				set_hitbox_value(AT_JAB, 5, HG_WINDOW, 60);
				set_hitbox_value(AT_JAB, 6, HG_WINDOW, 6);
				stars = spawn_hit_fx (x, y-30, empoweredFX);
				stars.depth = -12;
			}
		} else {
			shouldShowIndicator = 0;
		}
	}
}

if (attack == AT_UTILT) {
	if (window == 1) {
		set_attack_value(AT_UTILT, AG_CATEGORY, 2);
	} else {
		hsp *= 0.8;
		set_attack_value(AT_UTILT, AG_CATEGORY, 1);
	}
	if (window == 3) {
		if (has_hit) {
			can_attack = true;
			can_jump = true;
			can_shield = true;
		} else {
			vsp += 0.25;
		}
	}
	if (window == 1 || window_timer < 11 || has_hit == false) {
		can_fast_fall = false;
	} else {
		can_fast_fall = true;
	}
}

if (attack == AT_FTILT && window == 1 && window_timer == 5) {sound_play(asset_get("sfx_ell_fist_explode"))};

if (attack == AT_DTILT && window == 1 && window_timer == 6) {sound_play(asset_get("sfx_ell_fist_explode"))};

if (attack == AT_DATTACK) {
	if (window == 1 && window_timer == 2) {set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 12);}
	if (window == 1 && window_timer > 10 && get_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED) == 12) {
		if (attack_pressed || isAI == true) {
			set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 18);
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (x, y-30, empoweredFX);
			stars.depth = -12;
		}
		shouldShowIndicator = 1;
	} else {
		shouldShowIndicator = 0;
	}
	if (window == 3) {
		hsp *= 0.9;
		if (has_rune("B") && has_hit) {
			can_jump = true;
			can_attack = true;
		}
	}
}

if (attack == AT_USTRONG) {
	if (window < 3) {
		set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 50);
		set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 50);
		timedHitAvailable = true;
		
	} else if (window < 4 && (attack_pressed || up_strong_pressed || left_strong_pressed || right_strong_pressed)) {timedHitAvailable = false;}
	
	if (window == 4 && get_hitbox_value(AT_USTRONG, 4, HG_WINDOW) == 50 && (timedHitAvailable == true || isAI == true)) {
		if (attack_pressed || up_strong_pressed || left_strong_pressed || right_strong_pressed || isAI == true) {
			set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 5);
			set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 5);
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (x, y-30, empoweredFX);
			stars.depth = -12;
		}
		shouldShowIndicator = 1;
	} else {
		shouldShowIndicator = 0;
	}
}

if (attack == AT_FSTRONG) {
	if (window == 1) {triedDair = 0;}
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, -7 - (0.1 * strong_charge));
	set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 18);
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_HSPEED, 9 + (0.1 * strong_charge));
	if (window == 2 && window_timer == 6 && triedDair == 0 && !hitpause) {
		triedDair = 1;
		if (fsmashOut == 0) {
			sound_play(sound_get("smrpg_enemy_smithyhammerpound"));
			arms = instance_create(x+(20*spr_dir), y-20, "obj_article1");
			arms.lifetime = 18;
			arms.myHSpeed = 9.5 + (0.08 * strong_charge);
			arms.myVSpeed = -0.1;
			arms.version = 0;
			fsmashOut = 1;
		} else {
			spawn_hit_fx(x+(30*spr_dir), y-20, failSmoke);			
		}
	}
}

if (attack == AT_DSTRONG) {
	if (window == 1) {
		set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 5);
		timedHitAvailable = true;
	} else if ((window < 4 || window_timer <= 2) && (attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed)) {timedHitAvailable = false;}
	if (window == 4 && window_timer > 2 && get_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO) == 5 && (timedHitAvailable == true || isAI == true)) {
		if (attack_pressed || left_strong_pressed || right_strong_pressed || down_strong_pressed || isAI == true) {
			set_window_value(AT_DSTRONG, 4, AG_WINDOW_GOTO, 6);
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (x, y-50, empoweredFX);
			stars.depth = -12;
		}
		shouldShowIndicator = 1;
	} else {
		shouldShowIndicator = 0;
	}
}

if (attack == AT_FAIR) {
	if (window == 1 && window_timer == 5) {sound_play(asset_get("sfx_ell_fist_explode"));}
	if (window == 3 && window_timer == 4) {sound_play(asset_get("sfx_ell_fist_explode"));}
}

if (attack == AT_BAIR) {
	if (window == 1 && window_timer == 9) {sound_play(asset_get("sfx_ell_big_missile_fire"));}
}

if (attack == AT_UAIR) {
	if (window == 1 && window_timer == 8) {sound_play(asset_get("sfx_ell_big_missile_fire"));}
}

if (attack == AT_DAIR) {
	if (window == 1) {triedDair = 0;}
	if (window == 2 && triedDair == 0 && !hitpause) {
		triedDair = 1;
		if (dairOut == 0) {
			if (vsp > -4.5) {vsp = -4.5;}
			else {vsp -= 1.5;}
			sound_play(sound_get("smrpg_enemy_smithyhammerpound"));
			arms = instance_create(x+(2*spr_dir), y+10, "obj_article1");
			arms.lifetime = 14;
			arms.myHSpeed = 0;
			arms.myVSpeed = 6.5;
			arms.version = 1 + (4*has_rune("D"));
			dairOut = 1;
		} else {
			spawn_hit_fx(x, y+20, failSmoke);
		}
	}
}

if (attack == AT_NSPECIAL){
	can_fast_fall = false;
	if (window == 1) {
		gbeamChargeSfx = 0;
		gbeamChargeLoops = 0;
		gbeamParticleNum = 0;
		gbeamChargeLevel = 40 * gbeamStoredCharge;
		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 2);
		if (gbeamStoredCharge == 3) {
			set_window_value(AT_NSPECIAL, 1, AG_WINDOW_GOTO, 3);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 170);
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 300);
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 170);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 300);
			set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 170);
			set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 300);
			set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
			set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 170);
			set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 300);
			set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 7);
			set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .9);
			if (window_timer == 8) {sound_play(sound_get("smrpg_geno_genobeam"));}
		}
		chargingBeam = 0;
	}
    if (window == 2) {
		gbeamChargeLevel += 1.3;
		if (window_timer == 1) {
			if (gbeamChargeSfx == 0) {
				sound_play(sound_get("smrpg_geno_powerup"));
				gbeamChargeSfx = 1;
			}
			gbeamChargeLoops++;
		}
		
		if (window_timer == 2 && gbeamChargeLoops == 1) {
			if (right_down - left_down == spr_dir * -1) {
				//hsp *= -1;
				//spr_dir = right_down - left_down;
			}		
		}
		
		var temp = ((gbeamChargeLevel-10) / 40) % 1.0;
		
		if (temp > 0.5 && temp <= 0.53) {
			if (gbeamChargeLevel > 100) {
				sound_play(sound_get("smrpg_coinfrog"));			
			} else {
				sound_play(sound_get("smrpg_coin"));
			}
		}
		
		if (window_timer % 4 == 0) {
			gbeamParticle[gbeamParticleNum] = spawn_hit_fx(x + ((60 + random_func( 9, 40, false )) * spr_dir), y - 65 + random_func( 8, 60, false ), gbeamChargeParticle);
			gbeamParticleNum++;
		}
		
		for (i = 0; i < gbeamParticleNum; i++) {	
			if (instance_exists(gbeamParticle[i])) {
				gbeamParticle[i].x -= 2 * spr_dir;
				if (gbeamParticle[i].y < y - 32) {
					gbeamParticle[i].y += 1;
				} else {
					gbeamParticle[i].y -= 1;
				}
			}
		}
		if (((special_pressed && usingAltGBeamControl == 1) || (!special_down && usingAltGBeamControl = 0)) || gbeamChargeLevel > 126) {
			//if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
			gbeamStoredCharge = round((gbeamChargeLevel-10) / 40);
			if (gbeamChargeLevel > 125) {
				gbeamStoredCharge = 0;
			}
			window = 3;
			window_timer = 0;
			sound_stop(sound_get("smrpg_geno_powerup"));
			sound_play(sound_get("smrpg_geno_genobeam"));
			print_debug(string(gbeamChargeLevel));
			
			switch (gbeamStoredCharge) {
				case 0:
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 46);
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 46);
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
						set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 46);
						set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
						set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 46);
						set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 80);
						set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
						set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
						set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .4);
					break;
				case 1:
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 70);
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 120);
						set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 2);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 70);
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 120);
						set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
						set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 70);
						set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 120);
						set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
						set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 70);
						set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 120);
						set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 4);
						set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
						set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .5);
					break;
				case 2:
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 120);
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 220);
						set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 120);
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 220);
						set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 3);
						set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 120);
						set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 220);
						set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 3);
						set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 120);
						set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 220);
						set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 6);
						set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
						set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .7);
					break;
				case 3:
						set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 170);
						set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 300);
						set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4);
						set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 170);
						set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 300);
						set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
						set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 170);
						set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 300);
						set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 4);
						set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 170);
						set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 300);
						set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 7);
						set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
						set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .9);
					break;
			}
		}
		chargingBeam = 1;
		if (shield_pressed) {
			if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
			sound_stop(sound_get("smrpg_geno_powerup"));
			sound_stop(sound_get("smrpg_geno_genobeam"));
			chargingBeam = 0;
			window = 6;
			window_timer = 0;
			gbeamStoredCharge = round((gbeamChargeLevel-10) / 40);
		}
	}
	if (window == 3) {
		chargingBeam = 0;
		if (window_timer == 2) {
			switch (gbeamStoredCharge) {
				case 0:
					myBeam = spawn_hit_fx(x + 46*spr_dir, y - 32, gbeamFail);
					gbeamVisOffset = 46;
					break;
				case 1:
					myBeam = spawn_hit_fx(x + 70*spr_dir, y - 32, gbeamSmall);
					gbeamVisOffset = 70;
					break;
				case 2:
					myBeam = spawn_hit_fx(x + 120*spr_dir, y - 32, gbeamMedium);
					gbeamVisOffset = 120;
					break;
				case 3:
					myBeam = spawn_hit_fx(x + 170*spr_dir, y - 32, gbeamLarge);
					gbeamVisOffset = 170;
					break;
			}
		}
		if (instance_exists(myBeam)){
			myBeam.x = x + gbeamVisOffset*spr_dir;
			myBeam.y = y - 32;
		}
	}
	if (window == 4) {
		chargingBeam = 0;
		gbeamStoredCharge = 0;
		if (instance_exists(myBeam)){
			myBeam.x = x + gbeamVisOffset*spr_dir;
			myBeam.y = y - 32;
		}
	}
	if (window > 2) {hsp *= 0.85;}
}

if (attack == AT_FSPECIAL) {
	can_move = false;
	can_fast_fall = false;
	if (window == 1) {
		hsp *= 0.985;
		vsp *= 0.9;
	}
	if (window == 2 && window_timer == 1 && !hitpause) {
		if (whirlOut == 0) {
			sound_play(sound_get("smrpg_enemy_smithyhammerpound"));
			whirl = instance_create(x+(30*spr_dir), y-35, "obj_article1");
			whirl.lifetime = 28;
			whirl.myHSpeed = 12;
			whirl.myVSpeed = 0 - (6 * (up_down - down_down));
			whirl.version = 2;
			whirl.exp_anim_rate = 6; 
			whirlOut = 1;
		} else {
			spawn_hit_fx(x+(30*spr_dir), y-20, failSmoke);			
		}
		if (free) {vsp = -5}
	}
}

if (attack == AT_USPECIAL) {
	vsp = clamp (vsp, 0, 4);
	hsp = clamp (hsp, -3, 3);
	can_fast_fall = false;

    if (window == 3) {
		set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 7 - (3 * (up_down - down_down)));
	}
	
	if (window > 3 && window < 13 && window % 3 == 2 && window_timer == 1) {
		flashAngle = round(window / 3) - 2;
		//0 = up, 1 = neutral, 2 = down;
		
		flashX = 0;
		flashY = 0;
		flashH = 0;
		flashV = 0;
			
		switch(flashAngle) {
			case 0:
				flashX = 10;
				flashY = -70;
				flashH = 2;
				flashV = -10;
				break;
			case 1:
				flashX = 30;
				flashY = -55;
				flashH = 6.5;
				flashV = -7.5;
				break;
			case 2:
				flashX = 40;
				flashY = -30;
				flashH = 10;
				flashV = -3;
				break;
		}		
		
		if (flashOut == 0) {
			sound_play(sound_get("smrpg_enemy_smithyhammerpound"));
			
			flash = instance_create(x+(flashX*spr_dir), y+flashY, "obj_article1");
			flash.lifetime = 26;
			flash.myHSpeed = flashH;
			flash.myVSpeed = flashV;
			flash.version = 3;
			flash.state_timer = 4;
			flash.flashAngle = flashAngle;
			flashOut = 1;
		} else {
			spawn_hit_fx(x+(flashX*spr_dir), y+flashY, failSmoke);			
		}
	}
}
if (attack == AT_USPECIAL_2) {
	//print_debug(string(window));
	
	if (window == 1) {
		timedHitAvailable = true;
		clear_button_buffer(PC_SPECIAL_PRESSED);
	} else if (!(window > 3 && window < 19 && window % 3 == 1) && special_pressed) {
	timedHitAvailable = false;
	}
	
	can_move = false;
	can_fast_fall = false;
    if (window == 3) {
		clear_button_buffer(PC_UP_HARD_PRESSED);
		clear_button_buffer(PC_UP_STICK_PRESSED);
		set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO, 10 + (spr_dir * 3 * (left_down - right_down)));
		if (!up_down) {set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO, get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_GOTO) + (spr_dir * 3 * (left_down - right_down)));}
		set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, -4.5);
		set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED, 7);
		set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED, -6.5);
		set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HSPEED, 5);
		set_window_value(AT_USPECIAL_2, 11, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_USPECIAL_2, 14, AG_WINDOW_VSPEED, -6.5);
		set_window_value(AT_USPECIAL_2, 14, AG_WINDOW_HSPEED, -5);
		set_window_value(AT_USPECIAL_2, 17, AG_WINDOW_VSPEED, -4.5);
		set_window_value(AT_USPECIAL_2, 17, AG_WINDOW_HSPEED, -7);
	}
	
	if (((window > 3 && window < 19 && window % 3 == 1) || (window == 3 && window_timer > 4)) && get_window_value(AT_USPECIAL_2, 11, AG_WINDOW_VSPEED) == -8 && (timedHitAvailable == true || isAI == true)) {
		shouldShowIndicator = 2;
		if(special_pressed || isAI == true) {
			set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED, -6);
			set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED, 9);
			set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_VSPEED, -10);
			set_window_value(AT_USPECIAL_2, 8, AG_WINDOW_HSPEED, 6.5);
			set_window_value(AT_USPECIAL_2, 11, AG_WINDOW_VSPEED, -13);
			set_window_value(AT_USPECIAL_2, 14, AG_WINDOW_VSPEED, -10);
			set_window_value(AT_USPECIAL_2, 14, AG_WINDOW_HSPEED, -6.5);
			set_window_value(AT_USPECIAL_2, 17, AG_WINDOW_VSPEED, -6);
			set_window_value(AT_USPECIAL_2, 17, AG_WINDOW_HSPEED, -9);
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (x, y-30, empoweredFX);
			stars.depth = -12;
		}
	} else {
		shouldShowIndicator = 0;
	}
	
	if (window > 3 && window < 19 && window % 3 == 2 && window_timer == 1) {
		flashAngle = round(window / 3) - 2;
		//0 = left, 1 = neutral, 2 = right;
		
		flashX = 0;
		flashY = 0;
		flashH = 0;
		flashV = 0;
			
		switch(flashAngle) {
			case 0:
				flashX = -50;
				flashY = -10;
				flashH = -6.5;
				flashV = .5;
				break;
			case 1:
				flashX = -18;
				flashY = 5;
				flashH = -3;
				flashV = 1.5;
				break;
			case 2:
				flashX = 0;
				flashY = 15;
				flashH = 0;
				flashV = 2
				break;
			case 3:
				flashX = 18;
				flashY = 5;
				flashH = 3;
				flashV = 1.5;
				break;
			case 4:
				flashX = 50;
				flashY = -10;
				flashH = 6.5;
				flashV = .5;
				break;
		}		
		
		if (flashOut == 0) {
			sound_play(sound_get("smrpg_enemy_smithyhammerpound"));
			
			flash = instance_create(x+(flashX*spr_dir), y+flashY, "obj_article1");
			flash.lifetime = 26;
			flash.myHSpeed = flashH;
			flash.myVSpeed = flashV;
			flash.version = 3;
			flash.state_timer = 4;
			flashOut = 1;
			flash.flashAngle = flashAngle;
			flash.flashOrigin = 1;
		} else {
			spawn_hit_fx(x+(flashX*spr_dir), y+flashY, failSmoke);			
		}
	}
	
	switch (window) {
		case 2: 
			hsp *= 0.8;
			vsp = -6;
			if (hitpause) {
				hsp = 0;
				vsp = 0;
			}
			break;
		case 3: 
			hsp *= 0.8;
			vsp *= 0.8;
			break;
		case 19: 
			hsp *= 0.98;
			vsp *= 0.8;
			move_cooldown[AT_USPECIAL] = 9999999;
			move_cooldown[AT_USPECIAL_2] = 9999999;
			can_wall_jump = true;
			break;
		case 5:
		case 8:
		case 11:
		case 14:
		case 17:
			if (window_timer > 1) {can_wall_jump = true;}
			break;
		case 6:
		case 9:
		case 12:
		case 15:
		case 18:
			can_wall_jump = true;
			break;
	}
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	if (blastOut == 0 || window > 1) {
		if (window == 3 && window_timer == 1){
			blast = instance_create(x+(5*spr_dir), y-80, "obj_article2");
			blastOut = 1;
			sound_play(sound_get("Earthling-MX"));
		}
	} else {
		attack = AT_DSPECIAL_2;
	}
	
	if (window == 1 && window_timer == 4) {
		for (i = 0; i < 9; i++) {
			gbeamParticle[i] = spawn_hit_fx(x + (15 * (i-4)), y - 10 , gbeamChargeParticle);
			if (i == 0) {gbeamParticle[i].x += 10;}
			if (i == 8) {gbeamParticle[i].x -= 10;}
			gbeamParticle[i].depth = -80;
		}
	}
	for (i = 0; i < 9; i++) {
		if (instance_exists(gbeamParticle[i])) {
			//gbeamParticle[i].x = x + (15 * (i-4));
			gbeamParticle[i].y -= window_timer / 4;
		}
	}
}

if (attack == AT_DSPECIAL_2){
	can_fast_fall = false;
	if (blastOut == 1 && blast.state < 2) {
		if (blast.state_timer > 180) {
			blast.numShots = 7 + (5 * runeActiveJ);
			sound_play(sound_get("smrpg_character_extrapower"));
			stars = spawn_hit_fx (x, y-30, empoweredFX);
			stars.depth = -12;
		} else {
			blast.numShots = 1 + (2 * runeActiveJ);
		}
	
		blast.state = 3;
		blast.state_timer = 0;
	}
	
	if (window == 1 && window_timer == 2) {
		for (i = 0; i < 9; i++) {
			gbeamParticle[i] = spawn_hit_fx(x + (15 * (i-4)), y - 60, gbeamChargeParticle);
			if (i == 0) {gbeamParticle[i].x += 10;}
			if (i == 8) {gbeamParticle[i].x -= 10;}
			gbeamParticle[i].depth = -80;
		}
	}
	for (i = 0; i < 9; i++) {
		if (instance_exists(gbeamParticle[i])) {
			//gbeamParticle[i].x = x + (15 * (i-4));
			gbeamParticle[i].y += window_timer / 1.7;
		}
	}
}