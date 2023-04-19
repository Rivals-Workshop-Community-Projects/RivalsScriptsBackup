with (oPlayer) {
	if (id != other.id) {
		eust_lastDir = eust_curDir;
		eust_curDir = spr_dir; //tricking this into saving directions for ass kicker effect
		if (eust_assKicked > 0) 
			{if(!hitstun){eust_assKicked--;}
			hsp = 0;
			old_hsp = 0;
			//old_vsp *= 5;
			old_vsp = 5*clamp(old_vsp, -10, 0);
			if(state = PS_DEAD || state = PS_RESPAWN){eust_assKicked = 0;}
		}
		//Ooga Booga Booga
		//if (eust_fearTime == 0 && !visible){visible = true;}	//visibility fix, but this can collide
		if (eust_fearCooldown > 0 && other.id == eust_fearID) {eust_fearCooldown--;}
		if (eust_fearTime > 0 && (state != PS_RESPAWN || state != PS_DEAD)) {
			//if (eust_fearTime == eust_fearMax || eust_willLaunch) {eust_outlineFlag = true;} //need a flag so the outline reset doesn't mess with other outline scripts.  Also a legacy statement, but I'm using this for the visibility settings
			if(other.id == eust_fearID){eust_fearTime--;}
			init_shader();
			state = PS_HITSTUN_LAND;
			free = false;
			state_timer = 0;
    			hurtboxID.sprite_index = hurtbox_spr;
			vsp = 0;
			hsp = 0;
			if(other.id == eust_fearID){eust_shakeTime++;}
			visible = false;
			can_move = false;
			if (other.attack = AT_TAUNT && other.window > 0 && !eust_laughedAt){
				if(other.id == eust_fearID){eust_fearTime++; eust_fearCooldown++;}
				if(other.state != PS_ATTACK_GROUND || other.window == 3){
					eust_laughedAt = true;
					}
				}
			if (eust_shakeTime % 3 == 0 && other.id == eust_fearID) { // for vibration
				eust_gotShook *= -1;
				}
			}
		if (eust_fearTime > 0 && last_attack != 10 && last_attack != 19 && (hit_player_obj == other.id)) {state = PS_HITSTUN; eust_fearTime = 0; eust_willLaunch = false;}	// Breaks if Eustace uses some other attack besides NSpecial or Dash
		if (eust_fearTime > 0 && hit_player_obj.url != 2880066265 && !eust_willLaunch) {state = PS_HITSTUN; eust_fearTime = 0; eust_willLaunch = false;}			// Breaks if anyone else not named Eustace lands an attack on a Feared target
		if (eust_fearTime < 1 || (state == PS_RESPAWN || state == PS_DEAD)) {
			eust_laughedAt = false;
			eust_shakeTime = 0;
			if(eust_outlineFlag) {visible = true; eust_outlineFlag = false;}
			if (eust_willLaunch){
				state = PS_HITSTUN;
				old_vsp = eust_fearLaunchV * (1 + (0.5 * has_rune("F")));	// Increasing knockback with Rune F
				old_hsp = eust_fearLaunchU * (1 + (0.5 * has_rune("F")));
				vsp = eust_fearLaunchV * (1 + (0.5 * has_rune("F")));
				hsp = eust_fearLaunchU * (1 + (0.5 * has_rune("F")));
				eust_willLaunch = false;
			}
		}

		if (eust_wildRide && eust_wildTime > 0) {
			x = (eust_wildID.x + 4 - random_func(1, 8, true));
			y = (eust_wildID.y + 4 - random_func(1, 8, true));
			if(eust_wildID == other.id){eust_wildTime--;}
		}

		// Final Smash pause
		eust_getsSmashing = other.eust_isSmashing;
		// if (other.eust_isSmashing == 1 || other.eust_isSmashing == 5 || other.eust_isSmashing == 8){eust_isStuckX = x; eust_isStuckY = y;}
		if (eust_isUhOhed){hitpause = 2; set_state(PS_HITSTUN); visible = false; free = true; vsp = 0; hsp = 0;}
		if (eust_isUhOhed && other.eust_isSmashing == 3){
			eust_isUhOhed = false;
			hitpause = 0;
		}
		if (other.eust_isSmashing == 4){visible = true;}
		if (other.eust_isSmashing == 5 || other.eust_isSmashing == 6){
			if(other.eust_FSTimer == 0){eust_isStuckX = x; eust_isStuckY = y;}
			hitpause = 2; free = true; vsp = 0; hsp = 0; can_move = false; can_walk = false; can_jump = false; x = eust_isStuckX; y = eust_isStuckY;
			}
		if (other.eust_isSmashing == 7){hitpause = 0;}
	}
}

if(eust_gChairInvuln){
	set_player_damage(player, eust_chairLastDamage); 
	spr_dir = eust_chairFace;
	
	// RUNE O : HEALING WHILE IN CHAIR
	if(has_rune("O") && eust_art2HeartBeat%30 == 0 && eust_chairLastDamage > 0){eust_chairLastDamage--;}
	// END RUNE
	}

if(!eust_inChair && !eust_gettingChair){
	eust_gChairInvuln = false;
	eust_lameChecker = 0;
	if(!instance_exists(obj_article1)){eust_chairHBar = 0;}	//Failsafe if chair is unsuccessfully summoned
}

air_max_speed = eust_inChair ? 0 : 7;

if(eust_inChair){
	vsp = clamp(vsp, -1*eust_chairKBLim, 9999);
	hsp = clamp(hsp, -1*eust_chairKBLim, eust_chairKBLim);

	if (state != PS_HITSTUN || state != PS_HITSTUN_LAND){
		set_attack(AT_DSPECIAL);
		window = 3;
		window_timer = 2;
		djumps = 1;		// prevents the air jump when leaving the chair
		set_state(PS_DASH_STOP); // prevents dash dust clouds while being immobile
		hurtboxID.sprite_index = sprite_get("dspecial_sit_hurt");
		if (attack_pressed || special_pressed || jump_pressed || shield_pressed || taunt_pressed || left_strong_pressed || right_strong_pressed || up_strong_pressed || down_strong_pressed || eust_forceOffTimer > 300){
			eust_gettingChair = true;
			set_attack(AT_DSPECIAL);
			window = 4;
			eust_inChair = false;
			// Final Smash exception
			if("fs_charge" in self){if(fs_charge >= 200 && special_pressed && !down_down && !left_down && !right_down && !up_down){
				set_attack(AT_NSPECIAL); eust_isSmashing = 5;
				with (oPlayer) {
					if (id != other.id) {
						eust_isStuckX = x; eust_isStuckY = y;
						}
					}
				}
			}
		}
	}
	if (vsp >= 6){
		var dspecial_hitbox = create_hitbox(AT_DSPECIAL, 1, x, y);	// thanks to Cleo Knight for providing this cleanup
		dspecial_hitbox.damage = floor(vsp * 0.65);
		dspecial_hitbox.kb_value = 0.3 * vsp;
		dspecial_hitbox.kb_scale = 0.05 * vsp;
		if(!eust_crashingDown){
		eust_shouldDust = true;
		eust_vspeedTracker = vsp;
		}
	}
	if (!free || vsp < 6){
		destroy_hitboxes();
	}
	if (vsp = 0 && eust_shouldDust){
		var dustkickup = spawn_hit_fx( x, y, dspec_dust );
		dustkickup.desired_length = eust_vspeedTracker*3;
		dustkickup.depth = -6;
		eust_shouldDust = false;
	}
	if (vsp = 0 && hsp = 0){
		eust_lameChecker++;			//if you haven't moved, let's check and see if you're effectively stalling
	}
	if (free){eust_lameChecker = 0;}
}

if(eust_crashingDown){
	vsp = 24;
	eust_forceOffTimer++;
	if(!free){
		shake_camera(10,10);
		eust_crashingDown = false;
		var dustkickup = spawn_hit_fx( x, y, dspec_dust );
		dustkickup.desired_length = 25;
		dustkickup.depth = -6;
		sound_play(sound_get("chairSlam"));
	}
}

if(eust_chaosTimer == 300 || eust_chaosTimer == 600 || eust_chaosTimer == 900){
		var ballFlash = spawn_hit_fx(x+(spr_dir*4), y-28, ballin_flash);
		ballFlash.desired_length = 4;
		ballFlash.depth = -10;
}
if(eust_chaosTimer == 300){sound_play(sound_get("bball_alpha"));}
if(eust_chaosTimer == 600){sound_play(sound_get("bball_beta"));}
if(eust_chaosTimer == 900){sound_play(sound_get("bball_omega"));}
if(eust_chaosTimer >= 600 && eust_chaosTimer < 900){
		if(eust_chaosTimer%15 = 0){
			var ballDuster = spawn_hit_fx(x, y, ballin_dust);
			ballDuster.desired_length = 15;
			ballDuster.depth = -7;
		}
		if(eust_chaosTimer%10 = 0){
			var ballUltra = spawn_hit_fx(x-spr_dir*4, y, ballin_dbz);
			ballUltra.desired_length = 10;
			ballUltra.depth = -4;
		}
		if(eust_chaosTimer%25 = 0){
			sound_play(sound_get("bball_aura"));
		}
}

with (hit_fx_obj) { //yo supersonic's a real one for helping resolve this issue!!
    if (player == other.player && "desired_length" in self && pause_timer == 1) {
        hit_length = desired_length;
    }
}


if ((y < view_get_yview()) || (x < view_get_xview()) || (y > view_get_yview() + view_get_hview()) || (x > view_get_xview() + view_get_wview())){
	eust_forceOffTimer++;
}

if (eust_lameChecker == 6*60){
	instance_create( x, y-2, "obj_article3" );
	eust_lameChecker = 0;
}

if(eust_drawCacophony){
	eust_cacoTimer++;
	if (eust_cacoTimer >= 60){
		eust_cacoTimer = 0;
		eust_drawCacophony = false;
	}
}

if(eust_drawLocust){
	eust_locoTimer++;
	if (eust_locoTimer >= 14){
		eust_locoTimer = 0;
		eust_drawLocust = false;
	}
}

if (eust_drawPapers){
	eust_paperTimer++;
	if (eust_paperTimer > 80){eust_paperTimer = 0; eust_drawPapers = false;}
}

if (eust_drawFear){
	eust_fearParticleTimer++;
	if (eust_fearParticleTimer > 16){eust_fearParticleTimer = 0; eust_drawFear = false;}
}

if (!taunt_down && (eust_chaosTimer > 0 || eust_chaosPresent)){eust_chaosTimer = 0; eust_chaosPresent = false;}
if (taunt_down && eust_chaosTimer == 900){eust_chaosTimer = 0; eust_chaosPresent = false;}

eust_windowLastLast = eust_windowLast;
eust_windowLast = window;

if(eust_mydoorState > 0){eust_mydoorState--;}
if(eust_mychairState > 0){eust_mychairState--;}

if(eust_doorWJumpTimer > 0){
	eust_doorWJumpTimer--;
	if(eust_wJumpUsed){can_wall_jump = true; has_walljump = true;}
	if(eust_doorWJumpTimer == 0 && eust_wJumpUsed){can_wall_jump = false; has_walljump = false;}
	if(state == PS_WALL_JUMP && eust_eust_dirLastLast != spr_dir){eust_doorWJumpTimer = 0; if(!eust_wJumpUsed){eust_wJumpRecover = true;}}
}

eust_eust_dirLastLast = eust_dirLast;
eust_dirLast = spr_dir;

if(eust_wJumpRecover && state != PS_WALL_JUMP){
	can_wall_jump = true; has_walljump = true; eust_wJumpRecover = false;
}


if(state = PS_ATTACK_AIR && state_timer <= 2 && vsp == -short_hop_speed){
	eust_shortHop = 3;
}
if(eust_shortHop > 0){
	eust_shortHop--;
}

eust_art2HeartBeat++;
if (eust_art2HeartBeat >= 60){eust_art2HeartBeat = 0;}
if (eust_art2HeartBeat % 60 == 0){eust_art2ImAlive = false;}
if ((eust_art2HeartBeat + 30) % 60 == 0 && !eust_art2ImAlive){instance_create( 0, 0, "obj_article2" ); print("Someone managed to delete my article.  Shameful!")}





// BONUS RUNE STUFF!!

if(has_rune("E") != eust_runeEActive){	//only update the following values one time when the rune changes, rather than forever updating 60 times a second
	walk_speed = 3.1 + (1.5*has_rune("E"));
	walk_accel = 0.4 + (0.2*has_rune("E"));
	walk_turn_time = 6 - (1*has_rune("E"));
	initial_dash_speed = 8.5 + (1.5*has_rune("E"));
	dash_speed = 8 + (3*has_rune("E"));
	dash_turn_time = 12 - (3*has_rune("E"));
	dash_stop_time = 10 - (1.5*has_rune("E"));
	max_jump_hsp = 7 + (2*has_rune("E"));
	air_max_speed = 7 + (2*has_rune("E"));
	eust_runeEActive = has_rune("E");
}

if(eust_runeMBoom){
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, spr_dir*(eust_runeMX - x));
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, (eust_runeMY - y) - 46);
	create_hitbox(AT_FSPECIAL, 2, eust_runeMX, eust_runeMY);
	eust_runeMBoom = false;
}





//Amber hug time
if (amber_startHug == true) //Amber will set this bool to true when this player accepts the hug
{

    with (amber_herObj) //Access Amber's player object and set the values
    {
         set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
	    set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
	    set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
	    
	    //Enter
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 78);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 19);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 16);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Loop
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 118);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 32);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 19);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Exit
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 18);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 5);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 51);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
	    set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
	    
	    //Important. Puts Amber in startup hug state (2).
	    //Editing this variable not recommended
	    amberHugState = 2; 
    }
    //Important. Puts this character in startup hug state (2).
    //Editing this variable not recommended
    oPlayerHugAmberState = 2;
    
    //Set this bool back to false so that this doesn't loop
    amber_startHug = false;
}


// FINAL SMASH STUFF
// Animations handled in post_draw
// See the big with oPlayer above for the hitstop statement for the victim

if (eust_isSmashing > 0){

// 1, 2, 3, 4 associated with Alpha variant
// 	1 is the initialization, freeze the opponent in place
//	2 is the fall-down, relocate Eustace to the opponent
//	3 spawns the hitboxes
//	4 releases everyone

// 5, 6, 7 associated with Beta variant
//	5 is the full animation, first frame freezes everyone
//	6 is the rage
//	7 spawns the killbox and the aoe hitbox

// 8 and onward will be for the Omega variant, which will (maybe) come in the future

//	ALPHA VARIANT

	if(eust_isSmashing == 1){	// including Beta tracking here
		x = eust_baseX;
		y = eust_baseY;
	}
	if(eust_isSmashing > 1 && eust_isSmashing <=3){
		x = eust_uhOhX;
		y = eust_uhOhY;
	}
	// hide main player using an empty sprite in animation.gml so animation can ensue
	draw_indicator = false;		// get rid of the arrow
	invincible = true;		// can't hurt Eustace during this
	hitpause = 2;			// Eustace is frozen for the duration
	eust_FSTimer++;
	if(eust_isSmashing == 2 && eust_FSTimer == 90){
		create_hitbox(49, 2, x, y);
	}
	if(eust_isSmashing == 3){
		if (eust_FSTimer%4 == 0){create_hitbox(49, 2, x, y);}
	}
	if(eust_isSmashing == 4){	// breaks out of smash, blows up truck
		if("fs_using_final_smash" in self){fs_using_final_smash = false; fs_force_fs = false;}
		eust_isSmashing = 0;
		sound_play(sound_get("chairBoom"));
		spawn_hit_fx( x - random_func(1, 25, true), y - (random_func(2, 25, true) + 50), 260 );
		spawn_hit_fx( x - (random_func(3, 25, true) + 50), y - random_func(4, 25, true), 260 );
		spawn_hit_fx( x - random_func(5, 25, true), y - (random_func(6, 25, true) - 20), 260 );
		spawn_hit_fx( x - (random_func(7, 25, true) - 50), y - random_func(8, 25, true), 260 );
		draw_indicator = true;
		x -= spr_dir*40;
		y -= 112;
		hitpause = 0;
		set_state(PS_PRATFALL);
		//visible = true;
		invincible = false;
		old_vsp -= 12;
		vsp -= 12;
		old_hsp += spr_dir*8;
		hsp += spr_dir*8;
		create_hitbox(49, 2, x, y);
	}

	// Special Effects
	if(eust_isSmashing == 1 && eust_FSTimer == 60){
		sound_play(asset_get("sfx_jumpground"));
	}
	if (eust_isSmashing == 1 && eust_FSTimer > 90){				// Tuner extends past 2 seconds for this animation
		eust_isSmashing = 2; eust_FSTimer = 0;
	}


	if(eust_isSmashing == 2 && eust_FSTimer == 1){
		sound_play(sound_get("finalsmash_alpha_horn"));
	}

	if(eust_isSmashing == 2 && eust_FSTimer == 91){
		sound_play(sound_get("finalsmash_alpha_crash"));
		shake_camera(10,6);
	}

	if(eust_isSmashing == 2 && eust_FSTimer == 150){
		if(get_synced_var(player) == 0){
			sound_play(sound_get("finalsmash_alpha_roar"));
		} else {
			sound_play(sound_get("finalsmash_alpha_muted"));
		}
		shake_camera(5,6);
	}
	if (eust_isSmashing == 2 && eust_FSTimer > 270){
		eust_isSmashing = 3; eust_FSTimer = 0;
	}

	if(eust_isSmashing == 3){
		if(eust_FSTimer == 1 && get_synced_var(player) == 0){
			sound_play(sound_get("finalsmash_alpha_growl"));
		}
		shake_camera(5,6);
		if (eust_FSTimer > 120){	// do the detonation
			eust_isSmashing = 4; eust_FSTimer = 0;
		}
	}


// BETA VARIANT
	if(eust_isSmashing == 5 || eust_isSmashing == 6){
		if(eust_FSTimer == 1){
		eust_baseX = x;
		eust_baseY = y;
		eust_baseF = spr_dir;
		}
	x = eust_baseX;
	y = eust_baseY;
	}
	if(eust_isSmashing == 7){
		if("fs_using_final_smash" in self){fs_using_final_smash = false; fs_force_fs = false;}
		eust_isSmashing = 0;
		sound_play(sound_get("chairBoom"));
		spawn_hit_fx( x - (spr_dir*11) - random_func(1, 25, true), y - 37 - (random_func(2, 25, true) + 70), 260 );
		spawn_hit_fx( x - (spr_dir*11) -(random_func(3, 25, true) + 70), y - 37 - random_func(4, 25, true), 260 );
		spawn_hit_fx( x - (spr_dir*11) -random_func(5, 25, true), y - 37 - (random_func(6, 25, true) - 70), 260 );
		spawn_hit_fx( x - (spr_dir*11) -(random_func(7, 25, true) - 70), y - 37 - random_func(8, 25, true), 260 );
		spawn_hit_fx( x - (spr_dir*11) -random_func(9, 25, true) - 50 , y - 37 - (random_func(10, 25, true) + 50), 260 );
		spawn_hit_fx( x - (spr_dir*11) -(random_func(11, 25, true) + 50), y - 37 - (random_func(12, 25, true) + 50), 260 );
		spawn_hit_fx( x - (spr_dir*11) -random_func(13, 25, true) -50, y - 37 - (random_func(14, 25, true) - 50), 260 );
		spawn_hit_fx( x - (spr_dir*11) -(random_func(15, 25, true) - 50), y - 37 - (random_func(16, 25, true) - 50), 260 );
	spawn_hit_fx( x - (spr_dir*11), y - 37, 260 );
		hitpause = 0;
		invincible = false;
		shake_camera(10,10);
		create_hitbox(49, 3, x, y);
		create_hitbox(49, 4, x, y);
		create_hitbox(49, 5, x, y);
		create_deathbox( x - spr_dir*11, y - 37, 114, 114, player, true, 0, 3, 0);
	}

// Effects
	if(eust_isSmashing == 5 && eust_FSTimer == 30){
		sound_play(sound_get("finalsmash_beta_pop"));
	}
	if(eust_isSmashing == 5 && eust_FSTimer == 120){
		sound_play(sound_get("finalsmash_beta_rustle"));
	}
	if(eust_isSmashing == 5 && eust_FSTimer == 190){
		if(get_synced_var(player) == 0){
			sound_play(sound_get("finalsmash_beta_gawk"));
		} else {
			sound_play(asset_get("sfx_diamond_collect"));
		}
	}
	if(eust_isSmashing == 5 && eust_FSTimer == 300){
		sound_play(sound_get("finalsmash_beta_droop"));
	}
	if (eust_isSmashing == 5 && eust_FSTimer > 420){
		eust_isSmashing = 6; eust_FSTimer = 0;
	}

	if(eust_isSmashing == 6 && eust_FSTimer == 1 && get_synced_var(player) == 0){
		sound_play(sound_get("finalsmash_beta_malding"));
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
	}
	if(eust_isSmashing == 6){
		shake_camera(8,8);
		if (eust_FSTimer == 1){
			sound_play(asset_get("sfx_abyss_rumble"));
		}
		if (eust_FSTimer == 60){
			sound_stop(asset_get("sfx_abyss_rumble"));
			sound_play(asset_get("sfx_abyss_rumble"));
		}
		if (eust_FSTimer > 150){
			eust_isSmashing = 7; eust_FSTimer = 0;
		}
	}
}

if (eust_isSmashing == 0 && eust_FSTimer > 0){eust_FSTimer = 0;}	// Failsafe Reset