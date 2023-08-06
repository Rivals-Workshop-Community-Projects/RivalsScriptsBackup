// attack_update.gml

//spawn_base_dust( x + (16 * spr_dir), y, "dash_start", -spr_dir, 0);

// All Attack Jump-Cancel Rune
if (allGroundedJCRune){
	if (attack == AT_JAB
	|| attack == AT_DATTACK
	|| attack == AT_FTILT
	|| attack == AT_UTILT
	|| attack == AT_DTILT
	|| attack == AT_FSTRONG
	|| attack == AT_USTRONG
	|| attack == AT_DSTRONG
	|| attack == AT_NAIR
	|| attack == AT_FAIR
	|| attack == AT_UAIR
	|| attack == AT_BAIR
	|| attack == AT_DAIR
	|| attack == AT_DSPECIAL
	|| attack == AT_USPECIAL
	|| attack == AT_NSPECIAL){
		if (!hitpause && has_hit){
			can_jump = true;
		}
	}
}

// Jab
if (attack == AT_JAB){
	if (window == 7){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (50 * spr_dir), y, "dash_start", -spr_dir, 0);
			spawn_base_dust( x + (16 * spr_dir), y, "dash", spr_dir, 0);
			sound_play(asset_get("sfx_jumpground"), false, noone, 1, 1);
		}
	}
}

// Dash Attack
if (attack == AT_DATTACK){
	can_fast_fall = false;
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (dattackChargeRune){
				set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 7.2 + (2 * (strong_charge / 9)));
			}
			sound_play(asset_get("sfx_blink_dash"), false, noone, 1, 1);
		}
	}
	if (dattackChargeRune){
		if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 4){
			if (!hitpause){
				can_jump = true;
				can_special = true;
				can_shield = true;
			}
		}
	}
}

// Forward Tilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (12 * spr_dir), y, "dash", spr_dir, 0);
		}
	}
}

// Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(asset_get("sfx_jumpground"), false, noone, 1, 1.15);
			spawn_base_dust( x - 11, y, "dash", 1, 0);
			spawn_base_dust( x + 11, y, "dash", -1, 0);
			// ki projectile rune
			if ((up_stick_down || attack_down) && kiProjAttackRune){
				var kiProj = create_hitbox( AT_NSPECIAL, 1, x+(2*spr_dir), y-105 );
				kiProj.vsp = -abs(kiProj.hsp);
				kiProj.hsp = 0;
				kiProj.proj_angle += 90*spr_dir;
				kiProj.hitstun_factor = 1;
				kiProj.kb_value += 2;
				kiProj.kb_scale = 0.4;
				sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 1);
				spawn_base_dust( x + (4 * spr_dir), y - 100, "doublejump_small", spr_dir, 0);
			}
		}
	}
	if (!hitpause && has_hit){
		can_jump = true;
	}
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 6)){
	    hud_offset = 42;
	} //>
}

// Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (38 * spr_dir), y, "wavedash", -spr_dir, 0);
		}
	}
	if (!hitpause && has_hit){
		can_jump = true;
	}
}

// Neutral Air
if (attack == AT_NAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			// ki projectile rune
			if (attack_down && kiProjAttackRune){
				var kiProj = create_hitbox( AT_NSPECIAL, 1, x+(56*spr_dir), y );
				kiProj.vsp = 6;
				kiProj.hsp *= 0.9;
				kiProj.proj_angle -= 30*spr_dir;
				kiProj.hitstun_factor = 1;
				kiProj.kb_value += 2;
				kiProj.kb_scale = 0.4;
				sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 1);
				spawn_base_dust( x + (30 * spr_dir), y - 2, "doublejump_small", spr_dir, 45 * spr_dir);
			}
		}
	}
}

// Down Air
if (attack == AT_DAIR){
	if (dairRune){
		fspecUsedAerialOutOfMove = false;
		uspecMoveUsedOutOfEndlag = false;
	}
	can_wall_jump = true;
    can_fast_fall = false;
	if (window == 1){
		vsp *= 0.5;
		if (window_timer == 1){
			dairChangedDir = false;
		}
		if (window_timer <= 5 && dairChangedDir == false){//>
			if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)){
				spr_dir *= -1;
				dairChangedDir = true;
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (-6 * spr_dir), y - 16, "doublejump", spr_dir, 55 * spr_dir);
		}
	}
	if (!free){
		if (window == 2 && window_timer == 3 && !dairRune){
			hsp *= 0.3; // if this singular line of code weren't here, krillin would slide across the stage when landing on this specific frame.
			// except when playing with the dair rune. because It Would Be Funny
		}
		
		if (window == 2 || window == 3 || window == 4){
			if (fspecUsedAerialOutOfMove || uspecMoveUsedOutOfEndlag){
				hsp = clamp(hsp, -7, 7);
				set_state(PS_PRATLAND);
			}
		}	
	}
}

// Forward Strong
if (attack == AT_FSTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !free){
			spawn_base_dust( x + (72 * spr_dir), y, "dash_start", -spr_dir, 0);
		}
	}
}

// Up Strong
if (attack == AT_USTRONG){
	if (window == 1){
		ustrongGrabbedPlayer = noone;
		if (window_timer == 1){
			sound_play(asset_get("sfx_absa_concentrate"), false, noone, 0.95, 1.24);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_ori_sein_strong_start"), false, noone, 1, 1.25);
			sound_play(asset_get("sfx_absa_cloud_crackle"), true, noone, 0.6, 1);
		}
	}
	if (window == 2){
		sound_stop(asset_get("sfx_ori_sein_strong_start"));
		sound_stop(asset_get("sfx_absa_cloud_crackle"));
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !free){
			spawn_base_dust( x - 9, y, "dash", 1, 0);
			spawn_base_dust( x + 9, y, "dash", -1, 0);
		}
	}
	if (window == 3){
		if (!hitpause && ustrongGrabbedPlayer != noone){
			ustrongGrabbedPlayer.x = x + (4 * spr_dir);
			ustrongGrabbedPlayer.y = y - 32 - (16 * window_timer);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause){
			if (!free){
				spawn_base_dust( x - 12, y, "dattack", 1, 0);
				spawn_base_dust( x + 12, y, "dattack", -1, 0);
				spawn_base_dust( x, y, "jump", spr_dir, 0);
			}
			sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 0.9);
			sound_play(asset_get("sfx_ori_ustrong_launch"), false, noone, 0.8, 1.6);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!hitpause){
				spawn_hit_fx(x, y, endlagUstrong_kiblast_vfx);
			}
		}
	}
	if (window == 5){
		ustrongGrabbedPlayer = noone;
	}
	//Hud Offset
	if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 4 || (window == 5 && image_index < 15)){
	    hud_offset = 132;
	} //>
}

// Down Strong
if (attack == AT_DSTRONG){
	var posOffset = 34;
	var posCheckL = (x - (dstrongTick * posOffset)) - 4;
	var posCheckR = (x + (dstrongTick * posOffset)) + 4;
	if (window == 1){
		dstrongReleaseRuneTimer = 0;
		if (window_timer < 4){//>
			dstrongTick = 0;
			dstrongGroundSurroundLeft = [0, 0, 0, 0, 0];
			dstrongGroundSurroundRight = [0, 0, 0, 0, 0];
			if (dstrongBlastRune){
				if (!free){
					dstrongStartedWhenAirborne = false;
					if (place_meeting(x, y + 4, asset_get("par_jumpthrough"))){
						//print("touching platform!");
						dstrongCurrDetectedColl = asset_get("par_jumpthrough");
					} else if (place_meeting(x, y + 4, asset_get("par_block"))){
						//print("touching ground!");
						dstrongCurrDetectedColl = asset_get("par_block");
					}
				} else {
					dstrongStartedWhenAirborne = true;
				}
			} else {
				dstrongCurrDetectedColl = noone;
			}
		}
		// rune stuff
		if (dstrongBlastRune && dstrongStartedWhenAirborne == false){
			if (strong_charge % 11 == 0 && window_timer == 4 && strong_charge != 0 && dstrongCurrDetectedColl != noone){
				dstrongTick++;
				//print(dstrongTick);
				if (place_meeting(posCheckL, y + 1, dstrongCurrDetectedColl)){
					//print("got one on the left!");
					spawn_hit_fx(posCheckL - posOffset, y - 8, 109);
					dstrongGroundSurroundLeft[dstrongTick-1] = 1;
				}
				if (place_meeting(posCheckR, y + 1, dstrongCurrDetectedColl)){
					//print("got one on the right!");
					spawn_hit_fx(posCheckR + posOffset, y - 8, 109);
					dstrongGroundSurroundRight[dstrongTick-1] = 1;
				}
			}
		}
	}
	if (window == 2){
		dstrongTick = 0;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				spawn_base_dust( x + (0 * spr_dir), y, "land", spr_dir, 0);
				spawn_base_dust( x - 26, y, "dash_start", 1, 0);
				spawn_base_dust( x + 26, y, "dash_start", -1, 0);
				//sound_play(asset_get("sfx_blow_heavy2"));
				sound_play(asset_get("sfx_zetter_downb"));
				shake_camera( 8, 3 );
			}
		}
		if (strongsUseableInAirRune){
			if (!free){
				set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
				set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 69);
			} else if (free){
				set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 69);
				set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
			}
		} else if (!strongsUseableInAirRune){
			set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
			set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 69);
		}
	}
	if ((window == 3 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause) || window == 4 || window == 5){
		dstrongReleaseRuneTimer++;
		if (dstrongBlastRune && dstrongStartedWhenAirborne == false){
			if (dstrongReleaseRuneTimer % 2 == 0 && dstrongTick != 6){
				//print(dstrongTick);
				var actualCheckTick = (dstrongTick - 1);
				// default blast. will always happen, regardless of charge.
				if (dstrongTick == 0){
					var kiProj = create_hitbox( AT_NSPECIAL, 1, x, y - 2 );
					kiProj.vsp = -abs(kiProj.hsp * 1.45);
					kiProj.hsp = 0;
					kiProj.proj_angle += 90*spr_dir;
					kiProj.damage = 2;
					kiProj.hitstun_factor = 1;
					kiProj.kb_value += 3;
					kiProj.kb_scale = 0.5;
					kiProj.grounds = 1;
					kiProj.force_flinch = 0;
					spawn_base_dust( x + 4, y - 2, "doublejump_small", spr_dir, 0);
					
					sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 1);
				} else if (dstrongTick != 0){
					if (dstrongGroundSurroundLeft[dstrongTick - 1] == 1){
						var kiProj = create_hitbox( AT_NSPECIAL, 1, posCheckL, y - 2 );
						kiProj.vsp = -abs(kiProj.hsp * 1.45);
						kiProj.hsp = 0;
						kiProj.proj_angle += 90*spr_dir;
						kiProj.damage = 2;
						kiProj.hitstun_factor = 1;
						kiProj.kb_value += 3;
						kiProj.kb_scale = 0.5;
						kiProj.grounds = 1;
						kiProj.force_flinch = 0;
						spawn_hit_fx(posCheckL, y - 8, 109);
						spawn_base_dust( posCheckL, y - 2, "doublejump_small", spr_dir, 0);
					}
					if (dstrongGroundSurroundRight[dstrongTick - 1] == 1){
						var kiProj = create_hitbox( AT_NSPECIAL, 1, posCheckR, y - 2 );
						kiProj.vsp = -abs(kiProj.hsp * 1.45);
						kiProj.hsp = 0;
						kiProj.proj_angle += 90*spr_dir;
						kiProj.damage = 2;
						kiProj.hitstun_factor = 1;
						kiProj.kb_value += 3;
						kiProj.kb_scale = 0.5;
						kiProj.grounds = 1;
						kiProj.force_flinch = 0;
						spawn_hit_fx(posCheckR, y - 8, 109);
						spawn_base_dust( posCheckR, y - 2, "doublejump_small", spr_dir, 0);
					}
					
					if ((dstrongGroundSurroundLeft[dstrongTick - 1] == 1) || (dstrongGroundSurroundRight[dstrongTick - 1] == 1)){
						sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 1);
					}
				}
				dstrongTick++;
			}
		}
	}
}


//B - Reversals
if (attack == AT_DAIR || attack == AT_NSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL || attack == AT_EXTRA_1){
    trigger_b_reverse();
}

// Neutral Special (Ki Blast / Destructo Disk)
if (attack == AT_NSPECIAL){
	var maxChargeTime = 75;
	var endlagUncharged = 14;
	var endlagCharged = 30;
	// initial startup
    if (window == 1){
		nspecChargeTime = 0;
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
		// sends you to throw startup for des. disk if you had it charged and stored
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (nspecStoredCharge == true){
				window = 6;
				window_timer = 0;
				sound_play(asset_get("sfx_absa_concentrate"), false, noone, 0.6, 1.4);
			} else {
				//sound_play(asset_get("sfx_abyss_capturing"), true, noone, 0.9, 0.9);
			}
		}
	}
	// hold charge
	if (window == 2 || window == 7){
		move_cooldown[AT_NSPECIAL] = 30;
		nspecChargeTime++;
		if (nspecChargeTime <= nspecChargeProg){//>
			nspecChargeTime = nspecChargeProg;
		}
		// if special not held, move forward a window (uncharged only)
		if (!special_down && state_timer > 12){
			if (window == 7){
				sound_play(asset_get("sfx_absa_concentrate"), false, noone, 0.6, 1.4);
			}
			window++;
			window_timer = 0;
			sound_stop(sfx_dbfz_krillin_ddisk_charge);
			sound_stop(asset_get("sfx_abyss_capturing"));
			sound_stop(asset_get("sfx_abyss_hex_curse"));
		}
		nspecChargeTime = clamp(nspecChargeTime, -1, (maxChargeTime + 10));
		// if charge time hits max charge time, transition from uncharged to charged
		if (window == 2 && nspecChargeTime == maxChargeTime){
			window = 6;
			window_timer = 0;
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
			sound_play(asset_get("mfx_star"));
			sound_play(asset_get("sfx_frog_fspecial_charge_gained_1"));
			//sound_stop(sfx_dbfz_krillin_ddisk_charge);
			
			// a buncha sfx play here
			sound_stop(asset_get("sfx_abyss_capturing"));
			//sound_play(asset_get("sfx_abyss_capturing"), true, noone, 1, 1.2);
			//sound_play(asset_get("sfx_abyss_hex_curse"), true, noone, 1, 1.2);
			//sound_play(sfx_dbfz_charge);
			// dust
			if (!free){
				spawn_base_dust( x - 6, y, "dattack", 1, 0);
				spawn_base_dust( x + 6, y, "dattack", -1, 0);
			}
		}
		// static charging sfx
		// change the number that state_timer is equaling to affect the frequency of dust and hold sfx (in frames)
		if (state_timer % 9 == 0 && state_timer > 13){
			sound_play(asset_get("sfx_absa_singlezap2"), false, noone, 0.5, ((nspecChargeTime / maxChargeTime) + 0.5));
			if (!free){
				if (window == 2){
					spawn_base_dust( x - 22, y, "walk", 1, 0);
					spawn_base_dust( x + 22, y, "walk", -1, 0);
				} else if (window == 7){
					spawn_base_dust( x - 14, y, "dash", 1, 0);
					spawn_base_dust( x + 14, y, "dash", -1, 0);
				}
			}
		}
		// cancel hold and go into cancel anim (stores charge if disk is charged)
		// use parry to cancel
		if (shield_pressed){
			nspecChargeProg = nspecChargeTime;
			if (nspecChargeTime >= maxChargeTime){
				nspecStoredCharge = true;
				spawn_hit_fx(x + (3 * spr_dir), y - 70, 110);
			} else {
				spawn_hit_fx(x + (3 * spr_dir), y - 70, 109);
			}
			//sound_play(sfx_dbfz_teleport_end);
			sound_play(asset_get("sfx_frog_fspecial_cancel"));
			window = 9;
			window_timer = 0;
		}	
	}
	// throw startup (uncharged ver)
	if (window == 3 || window == 8){
		nspecChargeProg = 0;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && window == 3){
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, endlagUncharged);
			var kiProj = create_hitbox( AT_NSPECIAL, 1, x+(44*spr_dir), y-30 );
			sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.6, 1);
			sound_play(asset_get("sfx_swipe_weak2"), false, noone, 1, 1);
			if (nspecProjAimRune){
				if (up_down && !down_down){
					kiProj.vsp = -6;
					kiProj.hsp *= 0.9;
					kiProj.proj_angle -= -30*spr_dir;
				} else if (!up_down && down_down){
					kiProj.vsp = 6;
					kiProj.hsp *= 0.9;
					kiProj.proj_angle -= 30*spr_dir;
				}
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				spawn_base_dust( x - (14 * spr_dir), y, "dash_start", spr_dir, 0);
			}
			if (window == 8){
				spawn_base_dust( x + (32 * spr_dir), y - 30, "doublejump", spr_dir, 90 * spr_dir);
			} else {
				spawn_base_dust( x + (46 * spr_dir), y - 30, "doublejump_small", spr_dir, 90 * spr_dir);
			}
		}	
	}
	// transition from uncharged to charged (will auto play if you use nspec again if you strored a charge)
	if (window == 6){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (nspecStoredCharge == true){
				window = 8;
				window_timer = 0;
			}
		}
	}
	// throw startup (charged ver)
	if (window == 8){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, endlagCharged);
			var destructoDisk = create_hitbox( AT_NSPECIAL, 2, x+(60*spr_dir), y-36 );
			//sound_play(sfx_dbfz_krillin_ddisk_fire);
			sound_play(asset_get("sfx_swipe_heavy2"));
			sound_play(asset_get("sfx_ori_ustrong_launch"));
			//sound_play(asset_get("sfx_absa_cloud_send"), false, noone, 0.75, 1.2);
			if (nspecProjAimRune){
				if (up_down && !down_down){
					destructoDisk.vsp = -6;
					destructoDisk.hsp *= 0.9;
					destructoDisk.proj_angle -= -30*spr_dir;
				} else if (!up_down && down_down){
					destructoDisk.vsp = 6;
					destructoDisk.hsp *= 0.9;
					destructoDisk.proj_angle -= 30*spr_dir;
				}
			}
			window = 4;
			window_timer = 0;
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
			nspecStoredCharge = false;
		}
	}	
	// charge cancel
	if (window == 9){
		clear_button_buffer( PC_SHIELD_PRESSED );
		sound_stop(sfx_dbfz_krillin_ddisk_charge);
		sound_stop(asset_get("sfx_abyss_capturing"));
		sound_stop(asset_get("sfx_abyss_hex_curse"));
		set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
	}
	if (window == 5){
		move_cooldown[AT_NSPECIAL] = 50;
		var winLen = get_window_value( AT_NSPECIAL, 5, AG_WINDOW_LENGTH );
		if (winLen == endlagCharged && !free){
			if (window_timer == 18){
				if (special_down && taunt_down){
					window = 10;
					window_timer = 0;
				}
			}
		}
	}
	if (window == 10){
		if (special_down && taunt_down){
			if (window_timer == 10){
				window_timer = 9;
			}
		}	
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 5;
			window_timer = 25;
		}
	}
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || window == 3 || window == 6 || window == 7 || window == 8){
	    hud_offset = 50;
	} //>
}

// Forward Special
if (attack == AT_FSPECIAL){
	move_cooldown[AT_FSPECIAL] = 9999999999;
	can_fast_fall = false;
	can_wall_jump = true;
	//print(vsp);
    if (window == 1){
		fspecUsedAerialOutOfMove = false;
		if (window_timer < 2 && !free){//>
			vsp = -32;
		}
		if (window_timer == 1){
			sound_play(sfx_dbfz_teleport_start);
			fspecTeleportAlongWall = false;
			fspecTeleportDir = 0;
		}
		if (window_timer == 6){
			spawn_hit_fx(x+(12 * spr_dir), y - 20, 305);
		}
		if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (vsp != 0){
				vsp *= 0.35;
			}
			if (hsp != 0){
				hsp *= 0.5;
			}
			vsp = clamp(vsp, -999, 0);
		}
		// this is where the "teleport" starts
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
		
			if ((place_meeting(x + (170 * spr_dir), y - 95, asset_get("par_block"))) || place_meeting(x + (200 * spr_dir), y, asset_get("par_block"))){
				//print("AAA");
				if (place_meeting(x + (12 * spr_dir), y, asset_get("par_block"))){
					fspecTeleportAlongWall = true;
				}
			}
			if (!fspecTeleportToOpponentRune || (fspecTeleportToOpponentRune && fspecRuneTeleportToPlayerID == noone && fspecTeleToOpponent == false)){
				if (up_down && !down_down){
					spawn_base_dust( x + (4 * spr_dir), y - 20, "doublejump", spr_dir, 120 * spr_dir);
					fspecTeleportDir = 1;
				} else if (!up_down && down_down && free){
					spawn_base_dust( x + (4 * spr_dir), y - 20, "doublejump", spr_dir, 60 * spr_dir);
					fspecTeleportDir = -1;
				} else {
					spawn_base_dust( x + (4 * spr_dir), y - 20, "doublejump", spr_dir, 90 * spr_dir);
					fspecTeleportDir = 0;
				}
			}
			spawn_base_dust( x + (6 * spr_dir), y - 40, "dash_start", spr_dir, (fspecTeleportDir * 30) * spr_dir);
			spawn_base_dust( x + (6 * spr_dir), y, "dash_start", -spr_dir, (180 + (fspecTeleportDir * 30)) * spr_dir);
			sound_play(sfx_dbfz_superdash, false, noone, 0.65, 1.1);
			sound_play(asset_get("sfx_bird_downspecial"), false, noone, 0.8, 1);
		} else {
			// setting direction
			if (!fspecTeleportToOpponentRune || (fspecTeleportToOpponentRune && fspecRuneTeleportToPlayerID == noone && fspecTeleToOpponent == false)){
				if (up_down && !down_down){
					fspecTeleportDir = 1;
					set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
				} else if (!up_down && down_down){
					fspecTeleportDir = -1;
					set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
				} else {
					fspecTeleportDir = 0;
					set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
				}
			}
		}
	}
	if (window == 2){
		if (!fspecTeleportToOpponentRune || (fspecTeleportToOpponentRune && fspecRuneTeleportToPlayerID == noone && fspecTeleToOpponent == false)){
			spawn_base_dust( x + (10 * spr_dir), y - 25, "dash_start", spr_dir, (fspecTeleportDir * 30) * spr_dir);
			spawn_base_dust( x + (10 * spr_dir), y - 15, "dash_start", -spr_dir, (180 + (fspecTeleportDir * 30)) * spr_dir);
			spawn_base_dust( x + (14 * spr_dir), y - 20, "doublejump_small", spr_dir, (90 + (fspecTeleportDir * 30)) * spr_dir);
			var horizTPspeed = 48;
			var vertTPspeed = 36;
			var yOffTPspeed = 12;
			if (fspecTeleportDir == 0){
				x += (horizTPspeed * spr_dir);
				y += 0;
			} else if (fspecTeleportDir == 1){
				x += (vertTPspeed * spr_dir);
				y -= yOffTPspeed;
			} else if (fspecTeleportDir == -1){
				if (free && fspecTeleportDir == -1){
					x += (vertTPspeed * spr_dir);
					y += yOffTPspeed;
				}
			}
		} else {
			x = fspecRuneTeleportToPlayerID.x + (40 * fspecRuneTeleportToPlayerID.spr_dir);
			y = fspecRuneTeleportToPlayerID.y - 16;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!fspecTeleportToOpponentRune || (fspecTeleportToOpponentRune && fspecRuneTeleportToPlayerID == noone && fspecTeleToOpponent == false)){
				if (fspecTeleportDir == 0){
					hsp = 7 * spr_dir;
					vsp = 0;
				} else if (fspecTeleportDir == 1){
					hsp = 4.2 * spr_dir;
					vsp = -3.4;
					old_vsp = -3.4;
				} else if (fspecTeleportDir == -1){
					hsp = 4.2 * spr_dir;
				}
				spawn_base_dust( x + (6 * spr_dir), y - 25, "dash_start", spr_dir, (fspecTeleportDir * 30) * spr_dir);
				spawn_base_dust( x + (6 * spr_dir), y - 15, "dash_start", -spr_dir, (180 + (fspecTeleportDir * 30)) * spr_dir);
			} else {
				hsp = fspecRuneTeleportToPlayerID.hsp;
				vsp = fspecRuneTeleportToPlayerID.vsp;
			}
			fspecRuneTeleportToPlayerID = noone;
			fspecTeleToOpponent = false;
		}
		/*
		if (!free && fspecTeleportDir == -1){
			sound_play(waveland_sound);
			set_state(PS_WAVELAND);
			vsp = 0;
			old_vsp = 0;
			hsp *= 2.75;
		}
		*/
	}
	if (window == 3){
		set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 6);
		if (window_timer > 9){
			can_attack = true;
			//can_jump = true;
			//can_shield = true;
			can_taunt = true;
			if (attack_pressed || (up_stick_pressed || left_stick_pressed || right_stick_pressed || down_stick_pressed)){
				if (fspecRuneTeleportToPlayerID != noone){
					vsp -= 6;
				}
				fspecRuneTeleportToPlayerID = noone;
				fspecUsedAerialOutOfMove = true;
			}
		} else {
			fspecRuneTeleportToPlayerID = noone;
			fspecTeleToOpponent = false;
		}
		if (!free){
			if (window_timer < 2){//>
				sound_play(waveland_sound);
				set_state(PS_LANDING_LAG);
				//print("hello");
				vsp = 0;
				old_vsp = 0;
				hsp *= 1.2;
			} else {
				sound_play(land_sound);
				set_state(PS_LANDING_LAG);
			}
		}
	}
}

// fspecial attack stuff
if (attack == AT_NAIR
	|| attack == AT_FAIR
	|| attack == AT_UAIR
	|| attack == AT_DAIR
	|| attack == AT_BAIR){
	if ((fspecShouldHavePratfall && fspecUsedAerialOutOfMove) || (uspecMoveUsedOutOfEndlag)){
		if (attack == AT_NAIR || attack == AT_FAIR || attack == AT_DAIR){
			if (!has_hit && window == 4 && (window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH)) * 1.5)){
				set_state(PS_PRATFALL);
			}
		} else {
			if (!has_hit && window == 3 && (window_timer == floor(get_window_value(attack, window, AG_WINDOW_LENGTH)) * 1.5)){
				set_state(PS_PRATFALL);
			}
		}
	}
}

// Up Special
if (attack == AT_USPECIAL){
    can_fast_fall = false;
	can_wall_jump = true;
    move_cooldown[AT_USPECIAL] = 12345;
	if (window == 1){
		uspecLandedStrongHit = false;
		uspecMoveUsedOutOfEndlag = false;
		uspecKiBlastHasLooped = false;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			vsp -= 5;
			sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.85, 1.125);
			sound_play(asset_get("sfx_flare_razer"));
			
			if (!free){
				spawn_base_dust( x - 10, y, "dash_start", 1, 0);
				spawn_base_dust( x + 10, y, "dash_start", -1, 0);
				spawn_base_dust( x, y, "land", spr_dir, 0);
				set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
			} else {
				spawn_base_dust( x - 10, y, "dattack", 1, 0);
				spawn_base_dust( x + 10, y, "dattack", -1, 0);
				spawn_base_dust( x, y, "doublejump", spr_dir, 0);
				if (!uspecKiBlastRiseRune){
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 7);
				} else {
					set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
				}
			}
		} else {
			hsp *= 0.912;
			vsp *= 0.912;
		}
	}
	if (window == 3){
		vsp = clamp(vsp, -13, -1);
		if (special_down && uspecKiBlastRiseRune){
			if (uspecKiBlastTimer != uspecKiBlastTimerSet){
				uspecKiBlastTimer++;
			} else {
				uspecKiBlastTimer = 0;
				var kiProj = create_hitbox( AT_NSPECIAL, 1, x+(0*spr_dir), y+12 );
				kiProj.vsp = abs(kiProj.hsp * 1.2);
				kiProj.hsp = 0;
				kiProj.proj_angle -= 90*spr_dir;
				kiProj.hitstun_factor = 1;
				kiProj.kb_value += 2;
				kiProj.kb_scale = 0.4;
				kiProj.damage = 2;
				kiProj.through_platforms = 2;
				kiProj.fall_through = true;
				sound_play(sfx_dbfz_krillin_kishot, false, noone, 0.8, 1);
				spawn_base_dust( x + (0 * spr_dir), y + 12, "doublejump_small", spr_dir, 180);
				vsp -= 1.2;
			}
			
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !uspecKiBlastHasLooped){
				uspecKiBlastHasLooped = true;
				window_timer = 10;
			}
		}
	}
	if (window == 4){
		//if (window_timer > 2 && uspecLandedStrongHit){
		if (window_timer > 8){
			if (attack_pressed || (up_stick_pressed || left_stick_pressed || right_stick_pressed || down_stick_pressed)){
				can_attack = true;
				uspecMoveUsedOutOfEndlag = true;
			}
		}
		if (!free){
			if (has_hit){
				set_state(PS_LAND);
			} else if (!has_hit){
				sound_play(land_sound);
				set_state(PS_PRATLAND);
			}
		}
	}
}

// Down Special (Solar Flare)
if (attack == AT_DSPECIAL){
    can_fast_fall = false;
	can_wall_jump = true;
	if (window == 1){
		dspecChargeTime = 0;
		strongArmorRuneActivated = false;
		if (window_timer == 2){
			sound_play(asset_get("sfx_absa_concentrate"));
			sound_play(asset_get("sfx_abyss_explosion_start"), false, noone, 1, 1);
		}
	}
	/*
	if (window == 69){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && special_down){
			window_timer = 0;
		}
		dspecChargeTime++;
		if (dspecChargeTime == 64){
			window++;
			window_timer = 0;
		}
		print(dspecChargeTime);
	}
	*/
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var blastStuff = spawn_hit_fx(x + (0 * spr_dir), y - 29, 110);
			//spawn_hit_fx(x + (0 * spr_dir), y - 29, 304);
			if (!free){
				spawn_base_dust( x - 38, y, "dattack", 1, 0);
				spawn_base_dust( x + 38, y, "dattack", -1, 0);
			}
			sound_play(asset_get("sfx_abyss_explosion"), false, noone, 0.75, 1.34);
			shake_camera( 6, 2 );
		}
	}
	if (window == 4){
		if (dspecTimerVar != 0){
			dspecTimerVar--;
		}
		strongArmorRuneActivated = false;
	} else {
		dspecTimerVar = 9;
	}
	
	if (window == 5){
		strongArmorRuneActivated = true;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			window = 2;
			window_timer = 5;
			//print("hi");
		}
	}
	
	if (strongArmorRuneActivated){
		super_armor = true;
	} else if (!strongArmorRuneActivated){
		super_armor = false;
	}
	
	// cooldown
	if (!strongArmorRuneActivated){
		move_cooldown[AT_DSPECIAL] = 45;
	}
	
	//Hud Offset
	if ((window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 3 || (window == 4 && image_index < 8)){
	    hud_offset = 56;
	} //>
}

// Stone Throw (Rune)
if (attack == AT_EXTRA_1){
	//
	move_cooldown[AT_EXTRA_1] = 30;
	if (window == 1){
		if (window_timer == 2){
			if ((left_down && spr_dir == 1) || (right_down && spr_dir == -1)){
				spr_dir *= -1;
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			var stoneProj = create_hitbox( AT_EXTRA_1, 1, x+(46*spr_dir), y-30 );
		}
	}
}

// Taunt
if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_blow_weak1"));
			sound_play(asset_get("sfx_swipe_weak1"));
		}
	}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down){
			window_timer -= 2;
		}
	}
}

// Taunt 2
if (attack == AT_TAUNT_2){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_blow_weak2"));
			sound_play(asset_get("sfx_swipe_weak2"));
		}
	}
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && taunt_down){
			window_timer -= 2;
		}
	}
}

if attack == AT_EXTRA_2 {
	can_move = false;
}

if attack == AT_EXTRA_2 && window == 4 && window_timer == 80 {
	sound_play(sound_get("explode"))
}

if attack == AT_EXTRA_2 && window == 4 && window_timer == 199 {
  		create_deathbox(x, y, 10, 10, player, true, 1, 1, 0);
}

//--------------------------------------------

//spawn_base_dust(x+(0*spr_dir),y, "dust name", spr_dir, angle);

//Supersonic's Base Cast Dust Function
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
// use this to be awesome
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

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
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;