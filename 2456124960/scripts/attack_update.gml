//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_TAUNT){
	if (window == 2 && state_timer > 90 && !taunt_down) {
		window = 3;
		window_timer = 0;
	}
	if (window == 2 && state_timer > 300 && free) {
		window = 3;
		window_timer = 0;
	}
	
	if (window == 2) {
		set_window_value(AT_TAUNT, 2, AG_WINDOW_HSPEED, (right_down - left_down) * 0.5 * spr_dir);
		set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, (down_down - up_down) * 0.5);
	}
	
	
	if (window == 1 && window_timer == 1) {
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 6;
		construct.lifetime = 35;
	}
	
	if (window == 3 && window_timer < 15) {
		hsp = 0;
		vsp = 0;
	}
	
	if (get_training_cpu_action() != CPU_FIGHT) {
		actionMeterStatus = 1;
		actionMeterFill += 2;
	}
	
	if (window == 1 && window_timer == 17) {
		sound_play(asset_get("sfx_land_med"));
	}
}

if (attack == AT_FSTRONG && window == 2 && window_timer == 5) {sound_play(asset_get("sfx_bird_sidespecial_start"));}

if (attack == AT_JAB) {
	if (window == 7 && window_timer == 8) {sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 0.8);}
	if (window == 8 && window_timer == 4) {sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 0.8);}
	if (window == 8 && window_timer == 10) {sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 1);}
}

if (attack == AT_DATTACK) {
	if (window == 1) {
		dattackCancelPower = 0;
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
	}
	if (window == 3) {
		set_attack_value(AT_DATTACK, AG_CATEGORY, 1);
	}
	if (window == 4) {
		dattackCancelPower++;
	}
	if (!free) {
		dattackCancelPower++;
	}
	if (dattackCancelPower > 14) {
		can_attack = true;
		can_jump = true;
		can_shield = true;
	}
	
	if (window == 1 && window_timer == 2) {
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 4;
		construct.lifetime = 60;

		construct2 = instance_create(x, y, "obj_article2");
		construct2.spr_dir = spr_dir;
		construct2.displayMove = 5;
		construct2.lifetime = 60;
		construct2.displayFront = 1;
		
		sound_play(asset_get("sfx_ori_bash_use"));
	}
	if (window == 2) {
		construct.fall_forward = true;
		construct2.fall_forward = true;
	}
	if (window == 1 && window_timer == 11) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 0.8);}
	
	if (window == 1 && instance_exists(construct2)) {
		construct.x = x;
		construct.y = y;
		construct2.x = x;
		construct2.y = y;
	}	
	
	if (window > 2) {can_wall_jump = true;}
	
	if (window == 3 && !hitpause && window_timer < 12) {
		x += right_down - left_down;
		y += (down_down - up_down) * 2;
	}
}

if (attack == AT_DAIR) {
	if (window == 1) {hasBounced = 0;}
	if (window == 1 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 1 && window_timer == 8) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1);}
	if (window == 2 && window_timer < 4) {
		set_attack_value(AT_DAIR, AG_CATEGORY, 2);
		if (!free || place_meeting(x + (0*spr_dir), y + 65, asset_get("par_block")) || place_meeting(x + (0*spr_dir), y + 65, asset_get("par_jumpthrough"))) {
			if (hasBounced == 0) {
				vsp = -9;
				sound_play(asset_get("sfx_blow_medium2"))
				hasBounced = 1;
				spawn_hit_fx( x-(10*spr_dir), y+45, 14 );
			}
		}
	} else {
		set_attack_value(AT_DAIR, AG_CATEGORY, 1);
	}
}

if (attack == AT_DTILT) {
	if (window == 1 && window_timer == 1) {
		if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 1;
		construct.lifetime = 32;
		sound_play(asset_get("sfx_ori_bash_use"));
	}
	if (window == 1 && window_timer == 7) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.7, 1);}
	if (window == 2) {construct.fall_forward = true;}
}

if (attack == AT_UTILT) {
	if (window == 1 && window_timer == 1) {
		if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 0;
		construct.lifetime = 42;
		sound_play(asset_get("sfx_ori_bash_use"));
	}
	if (window == 1 && window_timer == 6) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.7, 1.2);}
	if (window == 2) {construct.fall_forward = true;}
}

if (attack == AT_FTILT) {
	if (window == 1 && window_timer == 1) {
		if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
	}
}

if (attack == AT_DSTRONG) {
	if (window == 1 && window_timer == 1) {
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 3;
		construct.lifetime = 70;
		sound_play(asset_get("sfx_ori_bash_use"));
	}
	if (window == 2 && window_timer == 1) {
		construct.lifetime = 59;
		sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 0.9);
	}
	if (window == 3) {construct.fall_forward = true;}
}

if (attack == AT_USTRONG) {
	if (window == 1 && window_timer == 1) {
		if (instance_exists (construct)) {instance_destroy(construct);}
		construct = instance_create(x, y, "obj_article2");
		construct.spr_dir = spr_dir;
		construct.displayMove = 2;
		construct.lifetime = 60;
	}
	if (window == 2 && window_timer == 1) {construct.lifetime = 60;}
	if (window == 4 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 5 && window_timer == 5) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1);}
	if (window == 6) {construct.fall_forward = true;}
}

if (attack == AT_NSPECIAL){
    if (special_down) {strong_down = 1;}
    else {strong_down = 0;}
    if (window == 1 && window_timer == 1) {
	crystalOffset = 0;
    }
    if (window == 1 && strong_charge > 0) {
		if (left_down) crystalOffset-= 9;
		if (right_down) crystalOffset+= 9;
		if (left_pressed) crystalOffset-= 6;
		if (right_pressed) crystalOffset+= 6;
		
		if ((place_meeting(x + crystalOffset + 30, y + 45, asset_get("par_block"))) && (place_meeting(x + crystalOffset - 30, y + 45, asset_get("par_block")))) {	
		} else {
			if (place_meeting(x + crystalOffset + 50, y + 45, asset_get("par_block"))) {
				crystalOffset += 10;
			} else if (place_meeting(x + crystalOffset - 50, y + 45, asset_get("par_block"))) {
				crystalOffset -= 10;		
			}
		}
		
		if ((place_meeting(x + crystalOffset + 30, y + 45, asset_get("par_jumpthrough"))) && (place_meeting(x + crystalOffset - 30, y + 45, asset_get("par_jumpthrough")))) {	
		} else {
			if (place_meeting(x + crystalOffset + 50, y + 45, asset_get("par_jumpthrough"))) {
				crystalOffset += 10;
			} else if (place_meeting(x + crystalOffset - 50, y + 45, asset_get("par_jumpthrough"))) {
				crystalOffset -= 10;		
			}
		}
		
		if (crystalOffset > 180) crystalOffset = 180;
		if (crystalOffset < -180) crystalOffset = -180;
    }
    if (window == 2 && window_timer == 4){
	if (crystalOut == 0) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 20);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 20);
		if (strong_charge > 30) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 30);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
		}
		crystal = instance_create(x + (5 * spr_dir) + crystalOffset, y - 20, "obj_article1");
		crystal.fake_vsp = -8 - (0.1 * strong_charge)
		crystalOut = 1;
		set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 69);
		if (strong_charge > 30) {
			crystal.size = 1;
		}
	} else if (crystalOut == 1) {
		//set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
	}
	
	if (abs(crystalOffset) > 30) {
		//set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
	}
    }
}

if (attack == AT_NSPECIAL_AIR){
    if (window == 1 && window_timer == 1) {
		crystalOffset = -10;
		crystalOffset2 = 0;
		i = 0;
		airCrystalSpawnX = 0;
		airCrystalSpawnY = 0;
    }
    if (window == 2 && window_timer == 4){
		for (i = 80; i < 800 && crystalOffset == -10; i += 4) {
			if ((place_meeting(x, y + i, asset_get("par_block"))) || (place_meeting(x, y + i, asset_get("par_jumpthrough")))) {	
				print_debug("found a surface " + string(i) + " pixels beneath you");
				crystalOffset = i;
				while ((place_meeting(x, y + crystalOffset - crystalOffset2, asset_get("par_block"))) || (place_meeting(x, y + crystalOffset - crystalOffset2, asset_get("par_jumpthrough")))) {
					crystalOffset2 += 4;
					//print("scrolling up a few pixels to find the top of the surface!");
				}
				print("top of the surface is " + string(crystalOffset2) + " pixels above where the surface was found.");
				print("Summary: spawning crystal " + string(crystalOffset - crystalOffset2) + "pixels beneath you");
			}
		}
		
		if (crystalOut == 0 && crystalOffset != -10) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 20);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 20);
			
			crystal = instance_create(x + (5 * spr_dir), y - 20 + crystalOffset - crystalOffset2, "obj_article1");
			crystal.fake_vsp = -12;
			crystalOut = 1;
			set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 69);
			
			airCrystalSpawnX = x;
			airCrystalSpawnY = y + crystalOffset - crystalOffset2;
		}
    }
}

if (attack == AT_NSPECIAL_2){
    if (window == 1 && window_timer == 2) {
		if (actionMeterFill >= 199) {
			set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 95);
			set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 95);	
			set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 10);
			set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
			set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 14);
			set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .9);	
			
			set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 130);
			set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 130);
			set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 14);
			set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9.5);
			set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 1.1);
			set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 19);
			set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, 1);	

			spawn_hit_fx(x + (30 * spr_dir), y - 40, empoweredFX);	

			spawn_hit_fx(crystal.x, crystal.y, empoweredFX);
			
			crystal.empowered = 1;
		} else {
			set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 80);
			set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 80);	
			set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 8);
			set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 8);
			set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.8);
			set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 10);
			set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .7);	
			
			set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 100);
			set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 100);
			set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 10);
			set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 9);
			set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0.95);
			set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 14);
			set_hitbox_value(AT_NSPECIAL, 5, HG_HITPAUSE_SCALING, .9);
			
			crystal.empowered = 0;
		}
    }
    if (window == 2 && window_timer == 1){
		if (crystalOut == 1 && crystal.canDetonate) {
			crystal.article_mode = 1;
			crystal.obj_timer = 0;
		}
    }
}

if (attack == AT_FAIR){
	if (window == 1) {progressCheck = 1;}
	if (window == 2 || (window == 3 && window_timer < 4)) {progressCheck = 2;}
	if (window == 3 && window_timer >= 4) {progressCheck = 3;}

	if (window == 3 && window_timer != 12) {
		move_cooldown[AT_FAIR] = 1;
	}
	if (window == 3 && window_timer > 8 && has_hit) {
		can_attack = true;
	}
	if (window == 1 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 1 && window_timer == 5) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.7, 1.3);}
}

if (attack == AT_BAIR) {
	if (window == 1) {progressCheck = 1;}
	if (window == 2 || (window == 3 && window_timer < 4)) {progressCheck = 2;}
	if (window == 3 && window_timer >= 4) {progressCheck = 3;}
	if (window == 1 && window_timer == 6) {sound_play(asset_get("sfx_bird_nspecial2"), false, noone, 0.7, 1);}
	if (window == 1 && window_timer == 2) {sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.7, 1);}
}

if (attack == AT_NAIR) {
	if (window == 1 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 1 && window_timer == 8) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1);}
}

if (attack == AT_UAIR){
	progressCheck = 1;
	if ((window == 1 && window_timer >= 3) || (window == 2 && window_timer < 2)) {progressCheck = 2;}
	if ((window == 2 && window_timer >= 2) || (window == 3 && window_timer < (5 * ((has_hit + 2)/2)))) {progressCheck = 3;}
	if (window == 3 && window_timer >= (3 * (1.5 * (has_hit + 2)/2)) && window_timer < (14 * ((has_hit + 2)/2))) {progressCheck = 4;}
	
	
	if (window == 2 && window_timer == 2 && !hitpause && false) {
		if (vsp < -2) {
			vsp -= 0.5;
		} else {
			vsp -= 1;
		}
	}
	
	if (window == 1 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 1 && window_timer == 3) {sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1.4);}
}

if (attack == AT_FSPECIAL) {
	if (window == 1 && window_timer == 2) {
		fastFSpec = false;
		actionMeterFill++;
		if (actionMeterFill > 199) {
			fastFSpec = true;
		}
		clear_button_buffer(PC_SPECIAL_PRESSED);
		smolFspec = 0;
	}
	if (window == 2) {
		if (actionMeterFill > 199) {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
			if (window_timer < 5) {window_timer = 5;}
			if (right_down - left_down != 0) {spr_dir = sign(right_down-left_down);}
		} else {
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 9);	
			if (activeBuffUses > 0) {
				actionMeterFill += 1;
			} else {
				actionMeterFill += 1.5;
			}
			actionMeterStatus = 1;
			if (shield_down) {
				window = 6;
				window_timer = 0;
				actionMeterFill *= 0.75;
				actionMeterStatus = 0;
			}
			if (special_pressed && actionMeterFill > 0) {	
				window = 3;
				window_timer = 0;	
				smolFspec = 1;
			}
		}
		if (window_timer == 5) {
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.5);		
			spawn_hit_fx(x + (10*spr_dir), y - 85, beamChargeRing);
			spawn_hit_fx(x + (10*spr_dir - 20 + random_func(3, 40, true)), y - 65 - random_func(5, 40, true), beamChargeSparkle1);
		}
		
		if (fastFSpec == true) {
			spawn_hit_fx(x + (10*spr_dir), y - 85, empoweredFX);
			sound_play(asset_get("sfx_frog_fspecial_charge_full"));	
			window = 3;
			window_timer = 0;
		}
	}
	if (window == 3) {
		actionMeterFill = 0;
		actionMeterStatus = 0;
	}
	if (window == 4 && window_timer == 1 && !hitpause) {
		flash = instance_create(x+(32*spr_dir), y-32, "obj_article3");
		flash.myHSpeed = 1 + (smolFspec * 8);
		flash.myVSpeed = 0;
		flash.lifetime = 36 - (smolFspec * 16);;
		flash.version = 3;
		flash.state_timer = 4;
		flash.frostbolt = smolFspec;
	}
	
	can_fast_fall = false;
	vsp = clamp(vsp, -10, 4);
}

if (attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND){
	if (window == 2) {
		if (window_timer == 2) {
			madePlat = 0;
			if (canMakePlat < 3 && actionMeterFill >= 199 && !shield_down) {
				spawn_hit_fx(x, y, empoweredFX);	
				actionMeterFill = 0;
				actionMeterStatus = 0;
				canMakePlat = 3;
			}
			if (canMakePlat >= 3 && !shield_down) {
				myPlatform = instance_create(x, y-8, "obj_article_platform");
				myPlatform.y = floor(myPlatform.y);
				//print_debug("making a platform!");
				madePlat = 1;
				canMakePlat = 0;
				set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_full"));
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -2);
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
			} else {
				set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial2"));
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -7);
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
			}
		} else if (window_timer == 3 && madePlat == 1) {
			x = myPlatform.x;
			y = myPlatform.y + 6;			
		}
	}
	if (window == 5 && special_down && madePlat) {
		attack = AT_USPECIAL_2;
		window = 1;
		window_timer = 1;
	}
}

if (attack == AT_USPECIAL_2) {
	if (window == 2) {
		//platform.fake_hsp += (right_down - left_down) * 0.8;
		if (window_timer == 8 && special_down) {
			window_timer = 6;
		}
	}
}

if (attack == AT_USPECIAL_GROUND && false){
    if (window < 5) {
	can_move = false;
	can_fast_fall = false;
    } else {
	hsp *= 0.95;
    }
    
    if (window == 1) {
	heldDir = 90;
	upBCharge = 0;
    }
    if (window == 2) {
	upBCharge++;
	if (!joy_pad_idle) {
		heldDir = joy_dir;
	}
	if (!special_down) {
		window = 3;
		window_timer = 0;
	}
    }
    if (window == 3) {
	set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_HSPEED, lengthdir_x((2 + (0.15 * upBCharge)), heldDir) * -1 * spr_dir);
	set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_VSPEED, lengthdir_y((2 + (0.15 * upBCharge)), heldDir) * -1 - 3);
	set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HSPEED, lengthdir_x((5.5 + (0.15 * upBCharge)), heldDir) * spr_dir);
	set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_VSPEED, lengthdir_y((5.5 + (0.15 * upBCharge)), heldDir) - 3);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, lengthdir_x(45, heldDir) * spr_dir);
	set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, lengthdir_y(45, heldDir) - 30);
	if (upBCharge > 25) {		
		set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 60);
		set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 60);
	} else {		
		set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 40);
		set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 40);
	}
    }
}

if (attack == AT_DSPECIAL){
    can_fast_fall = false;
    if (window < 3) {
		hsp = clamp(hsp, -4, 4);
		vsp = clamp(vsp, -4, 4);
		if (shield_down) {
			window = 3;
			window_timer = 0;
			clear_button_buffer(PC_SHIELD_PRESSED);
		}
    }
    if (window == 2 && window_timer == 45) {
		activeBuff = special_down + 1;
		activeBuffUses = 4;
		if (actionMeterFill > 199) {
			activeBuffUses = 7;
			actionMeterFill = 0;
			actionMeterStatus = 0;
			spawn_hit_fx(x, y-30, empoweredFX);	
		}
		if (special_down) {
			buffFX = spawn_hit_fx(x, y-35, shieldFX);
		} else {
			buffFX = spawn_hit_fx(x, y-35, swordFX);
		}
		buffFXPosX = x;
		buffFXPosY = y-135;
		buffFX.depth = -12;
		buffFX.spr_dir = 1;
		buffFXTimer = 40;
    }
	
	if (window == 2) {
		switch (window_timer) {
			case 0: 
			case 20:
			case 40:
				mySwirl1 = spawn_hit_fx(x - 6*spr_dir, y - 35, buffChargeSwirl1);
				break;
			case 5:
			case 25:
			case 45:
				mySwirl2 = spawn_hit_fx(x, y - 41, buffChargeSwirl2);
				break;
			case 10:
			case 30:
				mySwirl3 = spawn_hit_fx(x + 6*spr_dir, y - 35, buffChargeSwirl3);
				break;
			case 15:
			case 35:
				mySwirl4 = spawn_hit_fx(x, y + 29, buffChargeSwirl4);
				break;
			case 8:
			case 21:
			case 31:
			case 39:
			case 45:
			case 48:
				ring = spawn_hit_fx(x, y - 30, buffChargeRing);
				ring.depth = -8;
				break;
			case 2:
			case 17:
			case 32:
			case 42:
			case 47:
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
		}
		if (instance_exists(mySwirl1)){
			mySwirl1.x = x;
			mySwirl1.y = y - 30;
			mySwirl1.depth = -10;
		}
		if (instance_exists(mySwirl2)){
			mySwirl2.x = x;
			mySwirl2.y = y - 30;
			mySwirl2.depth = -10;
		}
		if (instance_exists(mySwirl3)){
			mySwirl3.x = x;
			mySwirl3.y = y - 30;
			mySwirl3.depth = -10;
		}
		if (instance_exists(mySwirl4)){
			mySwirl4.x = x;
			mySwirl4.y = y - 30;
			mySwirl4.depth = -10;
		}
	}
}
