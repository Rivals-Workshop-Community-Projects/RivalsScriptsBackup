//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_USPECIAL){
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
    
    if (has_hit && actionMeterFill > 199 && window < 3) {
        can_attack = true;
        can_strong = true;
        can_ustrong = true;
        can_jump = true;
        can_special = true;
        can_shield = true;
        
        taunt_cancel_available = true;
    }
    if (window == 3) {
        taunt_cancel_available = false;
    }
}

if (attack == AT_FSTRONG && window == 2 && window_timer == 5) {sound_play(asset_get("sfx_bird_sidespecial_start"));}

if (attack == AT_JAB) {
	if (window == 4 && window_timer == 6) {spawn_base_dust(x + (40 * spr_dir), y, "dash", spr_dir * -1);}
	if (window == 7 && window_timer == 8) {
        sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 0.8);
        spawn_base_dust(x + (20 * spr_dir), y, "dash", spr_dir * -1);
    }
	if (window == 8 && window_timer == 4) {
        sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 0.8);
        spawn_base_dust(x + (20 * spr_dir), y, "dash", spr_dir * -1);
    }
	if (window == 8 && window_timer == 10) {
        sound_play(asset_get("sfx_bird_sidespecial_start"), false, noone, 0.8, 1);
        spawn_base_dust(x + (20 * spr_dir), y, "dash", spr_dir * -1);
    }
    if (window == 9 && has_hit && crystalOut && special_down && right_down == left_down && up_down == down_down) {
        attack_end();
        set_attack (AT_NSPECIAL_2);
    }
}

if (attack == AT_DATTACK) {
	if (window == 1) {
		dattackCancelPower = 0;
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
        if (window_timer == 10) {
            spawn_base_dust(x + (10 * spr_dir), y, "dash_start", spr_dir);
        }
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
	if (window == 1 && window_timer == 7) {
        sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.7, 1);
    }
	if (window == 1 && window_timer == 11) {
        spawn_base_dust(x + (80 * spr_dir), y, "dash_start", spr_dir * -1);
    }
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
	if (window == 1 && window_timer == 10) {
        spawn_base_dust(x + (40 * spr_dir), y, "dash_start", spr_dir * -1);
        spawn_base_dust(x + (10 * spr_dir), y, "dash_start", spr_dir);
    }
}

if (attack == AT_FTILT) {
	if (window == 1 && window_timer == 1) {
		if (right_down - left_down != 0) {spr_dir = right_down - left_down;}
	}
    if (window == 1 && window_timer == 5) {
        spawn_base_dust(x + (30 * spr_dir), y, "dash", spr_dir * -1);
    }
    if (window == 2 && window_timer == 4) {
        spawn_base_dust(x + (35 * spr_dir), y, "dash", spr_dir * -1);
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
	if (window == 2 && window_timer == 4) {
        spawn_base_dust(x + (80 * spr_dir), y, "wavedash", spr_dir * -1);
        spawn_base_dust(x - (100 * spr_dir), y, "wavedash", spr_dir);
        spawn_base_dust(x, y, "land", spr_dir);
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
	if (window == 2 && window_timer == 1) {
        construct.lifetime = 60;
        spawn_base_dust(x + (30 * spr_dir), y, "dash", spr_dir * -1);        
    }
	if (window == 4 && window_timer == 1) {sound_play(asset_get("sfx_ori_bash_use"));}
	if (window == 5 && window_timer == 5) {
        sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 1);
        spawn_base_dust(x + (20 * spr_dir), y, "wavedash", spr_dir * -1);
        spawn_base_dust(x - (15 * spr_dir), y, "wavedash", spr_dir);
    }
	if (window == 6) {construct.fall_forward = true;}
}

if (attack == AT_NSPECIAL){
    if (special_down) {strong_down = 1;}
    else {strong_down = 0;}
    if (window == 1 && window_timer == 1) {
        crystalOffset = 0;
        crystalReticleMomentum = 0;
        nspecPowerChange = 0;
    }
    if (window == 1 && strong_charge > 0) {
		if (left_down) {
            crystalOffset-= 2;
            crystalReticleMomentum -= 6;
        }
		if (right_down) {
            crystalOffset+= 2;
            crystalReticleMomentum += 6;
        }
        crystalReticleMomentum = clamp(crystalReticleMomentum, -80, 80);
        if (crystalReticleMomentum > 0) crystalReticleMomentum--;
        if (crystalReticleMomentum < 0) crystalReticleMomentum++;
        crystalOffset += round(crystalReticleMomentum / 20);
		//if (left_pressed) crystalOffset-= 4;
		//if (right_pressed) crystalOffset+= 4;
        strong_charge -= 0.25;
		
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
        
        if (nspecPowerChange == 0 && strong_charge > 45) {
            nspecPowerChange = 1;
            sound_play(asset_get("mfx_star"), false, noone, 0.8, 1);
            spawn_hit_fx( x + (5*spr_dir), y - 30, crystalPower );
        }
    }
    if (window == 2 && window_timer == 4){
	if (crystalOut == 0) {
		set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
		set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
		set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 20);
		set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 20);
		if (strong_charge > 45) {
			set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 50);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 50);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 30);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 30);
		}
		crystal = instance_create(x + (5 * spr_dir) + crystalOffset, y - 20, "obj_article1");
		crystal.fake_vsp = -8 - (0.1 * strong_charge)
		crystalOut = 1;
		set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 69);
		if (strong_charge > 45) {
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
				//print_debug("found a surface " + string(i) + " pixels beneath you");
				crystalOffset = i;
				while ((place_meeting(x, y + crystalOffset - crystalOffset2, asset_get("par_block"))) || (place_meeting(x, y + crystalOffset - crystalOffset2, asset_get("par_jumpthrough")))) {
					crystalOffset2 += 4;
					//print("scrolling up a few pixels to find the top of the surface!");
				}
				//print("top of the surface is " + string(crystalOffset2) + " pixels above where the surface was found.");
				//print("Summary: spawning crystal " + string(crystalOffset - crystalOffset2) + "pixels beneath you");
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
	if (window < 3) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
		strong_down = special_down;
		if (crystalOut == 1 && strong_down) {
			crystal.fake_vsp *= .95;
			//crystal.fake_hsp *= .98;
			crystal.decay_timer = 0;
            crystal.hasnt_landed = false;
            if (window == 1) {
                crystal.fake_hsp *= .75;
                if (crystal.fake_vsp > 0) {
                    crystal.fake_vsp = 0;          
                }
            }
            crystal.fake_vsp -= 0.25;            
		}
		if (state_timer % 15 = 0) {
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.5);		
			fx = spawn_hit_fx(x + (15*spr_dir), y - 55, buffChargeRing);
			fx.depth = depth - 1;
			fx = spawn_hit_fx(x + (15*spr_dir - 20 + random_func(3, 40, true)), y - 30 - random_func(5, 40, true), buffChargeSparkle1);
			fx.depth = depth - 1;			
            fx = spawn_hit_fx(crystal.x, crystal.y, crystalRing);
			fx.depth = crystal.depth + 1;
            fx.hsp = crystal.hsp;
            fx.vsp = crystal.vsp;
		}
			
			
		actionMeterFill += 3;
		strong_charge = (actionMeterFill / 200) * 60;
	}
	
    if (window == 3 && window_timer == 1) {
		actionMeterStatus = actionMeterFill * -1;
		if (actionMeterFill >= 199) {
			sound_play(asset_get("mfx_confirm"), false, noone, 0.3, 0.6);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 0.8);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 1);		
			fx = spawn_hit_fx(x + (30 * spr_dir), y - 40, empoweredFX);	
			fx.depth = depth - 1;
			//fx = spawn_hit_fx(crystal.x, crystal.y, empoweredFX);
			fx.depth = depth - 1;
			
			crystal.empowered = 1;
		} else {			
			crystal.empowered = 0;
		}
    }
    if (window == 3 && window_timer == 2){
		if (crystalOut == 1 && crystal.canDetonate && crystal.hitstop < 1) {
			crystal.article_mode = 1;
			crystal.obj_timer = 0;
            move_cooldown[AT_NSPECIAL_2] = 30;
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
		clear_button_buffer(PC_SPECIAL_PRESSED);
		smolFspec = 1;
	}
	if (window == 1) {
		strong_down = special_down;
		if (strong_charge > 0) {
			if (state_timer % 15 = 0) {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.5);		
				fx = spawn_hit_fx(x - (30*spr_dir), y - 45, beamChargeRing);
				fx.depth = depth - 1;
				fx = spawn_hit_fx(x - (30*spr_dir - 20 + random_func(3, 40, true)), y - 25 - random_func(5, 40, true), beamChargeSparkle1);
				fx.depth = depth - 1;
			}
			
			if (activeBuffUses > 0) {
				actionMeterFill += 2;
			} else {
				actionMeterFill += 3;
			}
			strong_charge = (actionMeterFill / 200) * 60;
		}
	}
	if (window == 2 && window_timer == 1) {
		strong_charge = 0;
		specialPower = actionMeterFill / 2;
		if (actionMeterFill > 199) {
			smolFspec = 0;
			spawn_hit_fx(x + (10*spr_dir), y - 45, empoweredFX);
			sound_play(asset_get("mfx_confirm"), false, noone, 0.3, 0.6);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 0.8);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 1);	
			actionMeterFill = 198;
		}
		actionMeterStatus = actionMeterFill * -1;
	}
	if (window == 3 && window_timer == 1 && !hitpause) {
		flash = instance_create(x+(32*spr_dir), y-32, "obj_article3");
		flash.myHSpeed = 1 + (smolFspec * (6 * (1 + (specialPower * 0.005))));
		flash.myVSpeed = 0;
		flash.lifetime = 36 - (smolFspec * 16);;
		flash.version = 3;
		flash.state_timer = 4;
		flash.frostbolt = smolFspec;
		flash.specialPower = specialPower;
		//print(string(flash.specialPower));
	}
	
	can_fast_fall = false;
	vsp = clamp(vsp, -10, 4);
}

if (attack == AT_USPECIAL){
	
	if (window == 1) {
		strong_down = special_down;
		if (strong_charge > 0) {
			vsp = clamp (vsp, -2, 3);
			vsp -= 0.2;
			hsp = clamp (hsp, -1, 1);
			if (state_timer % 15 = 0) {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.5);		
				fx = spawn_hit_fx(x + (10*spr_dir), y - 45, buffChargeRing);
				fx.depth = depth - 1;
				fx = spawn_hit_fx(x + (10*spr_dir - 20 + random_func(3, 40, true)), y - 20 - random_func(5, 40, true), buffChargeSparkle1);
				fx.depth = depth - 1;
			}
			
			if (activeBuffUses > 0) {
				actionMeterFill += 2;
			} else {
				actionMeterFill += 3;
			}
			strong_charge = (actionMeterFill / 200) * 60;
		}
	}

	if (window == 2) {
		if (window_timer == 2) {
			strong_charge = 0;
			specialPower = actionMeterFill / 2;
			if (actionMeterFill > 199) {
				spawn_hit_fx(x + (10*spr_dir), y - 45, empoweredFX);
                sound_play(asset_get("mfx_confirm"), false, noone, 0.3, 0.6);	
                sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 0.8);	
                sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 1);	
				actionMeterFill = 198;
			}
			actionMeterStatus = actionMeterFill * -1;
			
			madePlat = 0;
			if (canMakePlat >= 3 && !shield_down) {
				myPlatform = instance_create(x, y-8, "obj_article_platform");
				myPlatform.y = floor(myPlatform.y);
				//print_debug("making a platform!");
				madePlat = 1;
				canMakePlat = 0;
				myPlatform.juice = 30 + specialPower;
				set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_charge_full"));
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -2);
				set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
			} else {
				set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial2"));
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -6 - (specialPower / 25));
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

if (attack == AT_USPECIAL_GROUND) {
	if (window == 1) {
		dattackCancelPower = 0;
		/*
        set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 14);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -8);
		set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
        */
        
        set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecialground"));
        set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecialground"));
        set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 8);
        set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 30);
        set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 9.5);
        
		strong_down = special_down;
		if (strong_charge > 0) {
			if (state_timer % 15 == 0) {
				sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"), false, noone, 0.5);		
				fx = spawn_hit_fx(x + (10*spr_dir), y - 25, buffChargeRing);
				fx.depth = depth - 1;
				fx = spawn_hit_fx(x + (10*spr_dir - 20 + random_func(3, 40, true)), y - 25 - random_func(5, 40, true), buffChargeSparkle2);
				fx.depth = depth - 1;
			}
            
			actionMeterFill += 3;
			strong_charge = (actionMeterFill / 200) * 60;
            draw_y = -24;
            vsp = 0;
            hsp *= 0.75;
		}
        
        if (window_timer == 6) {
            spawn_base_dust(x + (20 * spr_dir), y, "dash", spr_dir * -1);
            spawn_base_dust(x - (25 * spr_dir), y, "dash", spr_dir);
        }
	}
    if (window == 2 && window_timer == 1) {
        draw_y = 0;
		strong_charge = 0;
		specialPower = actionMeterFill / 2;
		if (actionMeterFill > 199) {
			spawn_hit_fx(x + (10*spr_dir), y - 45, empoweredFX);
			sound_play(asset_get("mfx_confirm"), false, noone, 0.3, 0.6);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 0.8);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 1);	
			actionMeterFill = 198;
            
            set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("uspecialground2"));
            set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("uspecialground2"));
            set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 3);
            set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 9);
            set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 30);
            set_hitbox_value(AT_USPECIAL_GROUND, 3, HG_WINDOW, 3);
            set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 9.5 + (specialPower / 100));
		}
		actionMeterStatus = actionMeterFill * -1;
        spawn_base_dust(x + (20 * spr_dir), y, "dash_start", spr_dir * -1);
        spawn_base_dust(x - (30 * spr_dir), y, "dash_start", spr_dir);
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
		construct.displayMove = 7;
		construct.lifetime = 55;

		if (instance_exists (construct2)) {instance_destroy(construct2);}
		construct2 = instance_create(x, y, "obj_article2");
		construct2.spr_dir = spr_dir;
		construct2.displayMove = 8;
		construct2.lifetime = 55;
		construct2.displayFront = 1;
		
		sound_play(asset_get("sfx_ori_bash_use"));
	}
	if (window == 2) {
		construct.fall_forward = true;
		construct2.fall_forward = true;
	}
	if (window == 1 && window_timer == 10) {
        sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.8, 0.8);
        //vsp = -10;
        draw_y = -24;
    }
	
	if (window == 2 && !hitpause) {
        if (window_timer < 3) {
            vsp = -12;
        } else {
            vsp = -24;
        }
    }
    
    if (window == 3 && !hitpause) {
        vsp *= 0.9;
    }
    
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

if (attack == AT_DSPECIAL){
	if (window == 1 && window_timer == 2) {
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	if (window == 1) {
		strong_down = special_down;
		if (strong_charge == 1) {state_timer = 0;}
		if (strong_charge > 0) {
			if (state_timer % 15 = 0) {
				if (actionMeterFill < 40) {
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), false, noone, 0.3, 0.9);					
				} else {
					sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"), false, noone, 0.5);		
				}
				fx = spawn_hit_fx(x - (20 * spr_dir), y - 40, buffChargeRing);
				fx.depth = depth - 1;
			}
			if (state_timer % 60 = 0) {
				mySwirl1 = spawn_hit_fx(x - (26 * spr_dir), y - 40, buffChargeSwirl1);
				mySwirl1.depth = -10;
			}			
			if (state_timer % 60 = 15) {
				mySwirl2 = spawn_hit_fx(x - (20 * spr_dir), y - 46, buffChargeSwirl2);
				mySwirl2.depth = -10;
			}			
			if (state_timer % 60 = 30) {
				mySwirl3 = spawn_hit_fx(x + (14 * spr_dir), y - 40, buffChargeSwirl3);
				mySwirl3.depth = -10;
			}			
			if (state_timer % 60 = 45) {
				mySwirl4 = spawn_hit_fx(x - (20 * spr_dir), y - 34, buffChargeSwirl4);
				mySwirl4.depth = -10;
			}			
			actionMeterFill += 3;
			strong_charge = (actionMeterFill / 200) * 60;
		}
	}
	if (window == 2 && window_timer == 3) {
        if (right_down - left_down != 0) {spr_dir = sign(right_down - left_down);}
		strong_charge = 0;
		specialPower = actionMeterFill / 2;
		if (actionMeterFill > 199) {
			spawn_hit_fx(x + (10*spr_dir), y - 45, empoweredFX);
			sound_play(asset_get("mfx_confirm"), false, noone, 0.3, 0.6);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 0.8);	
			sound_play(asset_get("mfx_confirm"), false, noone, 0.4, 1);	
			actionMeterFill = 198;
		}
		actionMeterStatus = actionMeterFill * -1;
        
        for (i = 0; i < 1 + (floor(specialPower / 24)); i++) {
            var spike = instance_create(x + (5 * spr_dir), y - 20, "obj_article1");
            spike.objectType = 1;
            spike.fake_vsp = -3 - (0.2 * i);
            spike.fake_hsp = spr_dir * (6 + i);
            
            if (i == 4) {
                spike.size = 1;
            }
            
            if (has_rune("B")) {
                var spike = instance_create(x + (5 * spr_dir), y - 20, "obj_article1");
                spike.objectType = 1;
                spike.fake_vsp = -3 - (0.2 * (i + .5));
                spike.fake_hsp = spr_dir * (6 + (i + .5));
            }
        }
	}

    can_fast_fall = false;
	
	if (window == 1 && strong_charge > 0) {
		if (instance_exists(mySwirl1)){
			mySwirl1.x = x - (20 * spr_dir);
			mySwirl1.y = y - 40;
			mySwirl1.depth = -10;
		}
		if (instance_exists(mySwirl2)){
			mySwirl2.x = x - (20 * spr_dir);
			mySwirl2.y = y - 40;
			mySwirl2.depth = -10;
		}
		if (instance_exists(mySwirl3)){
			mySwirl3.x = x - (20 * spr_dir);
			mySwirl3.y = y - 40;
			mySwirl3.depth = -10;
		}
		if (instance_exists(mySwirl4)){
			mySwirl4.x = x - (20 * spr_dir);
			mySwirl4.y = y - 40;
			mySwirl4.depth = -10;
		}
	}
}

if (attack == AT_TAUNT_2) {
    if (window == 1 && window_timer == 4) {
        sound_play(asset_get("sfx_ori_grenade_aim"), false, noone, 1, 1.05);
    }
    if (window == 3 && window_timer == 2) {
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.9);
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.7);
    }
    if (window == 3 && window_timer == 16) {
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.9);
        sound_play(asset_get("sfx_ice_back_air"), false, noone, 0.5, 0.7);
    }
	if (window == 3) {
		if (window_timer % 2 == 0) {
            var whichSparkle = random_func(7, 2, true);
            if (whichSparkle == 0) {
                fx = spawn_hit_fx(x + (random_func(3, 60, true) - 30), (y + 5) - random_func(5, 40, true), buffChargeSparkle1);
            } else {
                fx = spawn_hit_fx(x + (random_func(3, 60, true) - 30), (y + 5) - random_func(5, 40, true), buffChargeSparkle2);            
            }
			fx.depth = depth - 1;
			fx.vsp = -2 - (random_func(6, 3, true));
        }
        if (window_timer == 27) {
			spawn_hit_fx(x, y, healReleaseSparkle);
            healTarget = noone;
            healTimer = 120;
            healOffsetX = 0;
            healOffsetY = 0;
            with (oPlayer) {
                if (id != other.id && point_distance(x, y - 30, other.x, other.y - 30) < 250) {
                    if (other.healTarget == noone) {
                        other.healTarget = id;
                    } else {
                        if (point_distance(x, y - 30, other.x, other.y - 30) < point_distance(other.healTarget.x, other.healTarget.y - 30, other.x, other.y - 30)) {
                            other.healTarget = id;
                        }
                    }
                }
            }
        }
	}
}

if (attack == AT_EXTRA_1){
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
		activeBuff = taunt_down + 1;
		activeBuffUses = 4;
		if (actionMeterFill > 199) {
			activeBuffUses = 7;
			actionMeterFill = 0;
			actionMeterStatus = 0;
			spawn_hit_fx(x, y-30, empoweredFX);	
		}
		if (taunt_down) {
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
				ring.depth = depth + 1;
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

#define spawn_base_dust
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