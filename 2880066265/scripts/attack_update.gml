//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Taunt
if(attack == AT_TAUNT){
	if (window == 1 && window_timer == 1 && down_down){set_attack(AT_TAUNT_2);}
	if (window == 1 && window_timer == 1 && !down_down){
		eust_laughTrack = 0; eust_isLaughing = true;
	//	if(get_synced_var(player) == 1){set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("LaughTauntMute"));}
		}
	if (window == 2 && eust_laughTrack < 10 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
	eust_laughTrack++;
	window_timer = 0;
	}
}

if(attack == AT_TAUNT_2){
	eust_chaosTimer++;
	if (!taunt_down){eust_chaosTimer = 0; eust_chaosPresent = false; window = 4;}
	if (window == 1){
		if(window_timer == get_window_value(attack, 1, AG_WINDOW_LENGTH) && eust_chaosTimer < 5*60){
			window_timer = 0;
			}
		if(eust_chaosTimer == 5*60){window_timer = get_window_value(attack, 1, AG_WINDOW_LENGTH);}
		}
	if (window == 2){
		shake_camera(1,4);
		if(window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH) && eust_chaosTimer < 10*60){
		window_timer = 0;
		var chaosRand = random_func(1, 4, true);
		switch(eust_chaosTracker){
			case 6:
				if(chaosRand < 2){eust_chaosTracker = 10;}
				if(chaosRand >= 2){eust_chaosTracker = 8;}
				break;
			case 8:
				if(chaosRand < 2){eust_chaosTracker = 10;}
				if(chaosRand >= 2){eust_chaosTracker = 8;}
				break;
			case 10:
				if(chaosRand < 2){eust_chaosTracker = 12;}
				if(chaosRand >= 2){eust_chaosTracker = 6;}
				break;
			case 12:
				if(chaosRand < 2){eust_chaosTracker = 12;}
				if(chaosRand >= 2){eust_chaosTracker = 6;}
				break;
			}
		}
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, eust_chaosTracker)
		}
	if (window == 3){
		eust_chaosPresent = true;
		shake_camera(4,4);
		if(window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH) && eust_chaosTimer < 15*60){
			window_timer = 0;
			var chaosRand = random_func(1, 4, true);
			if(chaosRand == eust_chaosBallBlur){chaosRand +=1;}
			if(chaosRand > 3){chaosRand = 0;}
			eust_chaosBallBlur = chaosRand;
			switch(chaosRand){
				case 0:
					set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
					break;
				case 1:
					set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
					break;
				case 2:
					set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);
					break;
				case 3:
					set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 15);
					break;
				}
			}
		if(eust_chaosTimer > 15*60){eust_chaosPresent = false; eust_chaosTimer = 0;}
		}
	if(eust_chaosTimer > 15*60){eust_chaosPresent = false;}
}

// Jab attack visual flip, no parry
if (attack == AT_JAB) {
	if (window == 3 && window_timer == 3) {
		if (NuzFlipper){
			set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 0)
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1)
			set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3)
			NuzFlipper = false;}
		else{
			set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 4)
			set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 5)
			set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 7)
			NuzFlipper = true;}
		}
	was_parried = false;
}


// Down Strong special effects
if (attack == AT_DSTRONG) {
	// RUNE H : INCREASE HITBOX SIZES
		if(has_rune("H")){
			set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 130);
			set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 130);
			set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 240);
			set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 240);
			set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 300);
			set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 300);
		}
		if(!has_rune("H")){
			reset_hitbox_value(AT_DSTRONG, 1, HG_WIDTH);
			reset_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT);
			reset_hitbox_value(AT_DSTRONG, 2, HG_WIDTH);
			reset_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT);
			reset_hitbox_value(AT_DSTRONG, 3, HG_WIDTH);
			reset_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT);
		}
	// END RUNE

	//dr. letz shake
	if (window == 4 && window_timer == 1) {shake_camera( 10 + floor(strong_charge/15) , 8 + floor(strong_charge/15));}
	//randomizer
	maningauze = random_func(1, 100, true);
	if (maningauze > 0 && maningauze <= 70 && get_synced_var(player) == 0) {set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("dstrong_common"));}
	if (maningauze > 70 && maningauze <= 94 && get_synced_var(player) == 0) {set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("dstrong_uncommon"));}
	if (maningauze > 94 && get_synced_var(player) == 0) {set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("dstrong_rare"));}
	if (get_synced_var(player) == 1){set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("dstrong_mute"));}

//CacoEffect
	if (window == 1){
		eust_cacoTimer = 0; eust_drawCacophony = false;
			}
	if (window == 4 && window_timer == 1) {eust_drawCacophony = true;}
}

// Down Air special effects
if (attack == AT_DAIR) {
	if (eust_shortHop > 0 && window_timer == 1){		//detects if a short hop was input
		old_vsp -= 3;
		vsp -= 3;
	}


	subuluwa = random_func(1, 100, true);
	if (subuluwa >= (90 - (10*has_rune("N"))) && window == 1 && window_timer == 1) {
		sound_play(sound_get("Dair_rare"));


	// RUNE N : NOT ONLY INCREASE ODDS OF SUBULUWA, BUT DO BONUS DAMAGE
		if(has_rune("N")){
			set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 36);
			set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 12);
			set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1.4);
			set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 18);
			set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
			set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.7);
		}
	}
	if ((subuluwa < (90 - (10*has_rune("N"))) || !has_rune("N")) && window == 1 && window_timer == 1){
		reset_hitbox_value(AT_DAIR, 1, HG_DAMAGE);
		reset_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
		reset_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING);
	}
	
}

// Forward Strong special effects
if (attack == AT_FSTRONG) {
	//RUNE A : FASTER F STRONG
	if(has_rune("A")){
		set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
	}
	if(!has_rune("A")){
		reset_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH);
	}
	//END RUNE
	if (window == 1 && window_timer == 1){
	subuluwa = random_func(1, 100, true);}
	if (subuluwa >= (90 - (10*has_rune("N")))){

		// RUNE N : ALSO APPLIES HERE
			if(has_rune("N")){
				set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 15);
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 12);
				set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1.3);
				set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 20);
				set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
				set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1.2);
				set_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE, 26);
				set_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK, 6);
				set_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING, 1.1);
			}
		// END RUNE

		if (window == 2 && window_timer == 1)
			{sound_play(sound_get("Fstrong_rare_intro"));}
		if (window == 3 && window_timer == 1)
			{sound_stop(sound_get("Fstrong_rare_intro"));
			sound_play(sound_get("Dair_rare"));}
		}
	//nevermind need to do one more thing for Rune N
	if (subuluwa < (90 - (10*has_rune("N"))) || !has_rune("N")){
		reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
		reset_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE);
		reset_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_FSTRONG, 3, HG_DAMAGE);
		reset_hitbox_value(AT_FSTRONG, 3, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSTRONG, 3, HG_KNOCKBACK_SCALING);
	}
	//okay NOW done
	//dr. letz shake
	if (window == 4 && window_timer == 1) {
		shake_camera(15 + floor(strong_charge/10) , 5 + floor(strong_charge/10));
		if(has_rune("I")){create_hitbox(AT_FSTRONG, 4, x+(spr_dir * 88), y);}	// Shockwave Rune
	}
}

// Up Strong tiltability
if (attack == AT_USTRONG) {
	if (window <= 2){
		if(!joy_pad_idle){
			eust_angleControl = joy_dir;
		} else {
			eust_angleControl = 90;
		}
	}
	//forward facing
	if ((spr_dir == -1 && (eust_angleControl >= 135 && eust_angleControl <= 225)) || (spr_dir == 1 && (eust_angleControl <= 45 || eust_angleControl >= 315))) {
		// animation
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_f"));
		//set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_f_hurt"));
		//hurtboxes
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 12);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -51);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 22);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -87);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, 32);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -122);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 42);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -157);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, 52);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -193);
		}
	//backward facing
	if ((spr_dir == -1 && (eust_angleControl <= 45 || eust_angleControl >= 315)) || (spr_dir == 1 && (eust_angleControl >= 135 && eust_angleControl <= 225))) {
		// animation
		set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong_b"));
		//set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_b_hurt"));
		//hurtboxes
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 1);
		set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -44);
		set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 110);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, -14);
		set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -80);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -27);
		set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -117);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -43);
		set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -154);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X, -56);
		set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -190);
		}
	if ((eust_angleControl > 45 && eust_angleControl < 135) || (eust_angleControl > 225 && eust_angleControl < 315)) {
		reset_attack_value(AT_USTRONG, AG_SPRITE); // need to investigate why the Else statement breaks the forward aiming
		//reset_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE);
		reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X);
		reset_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG, 1, HG_ANGLE);
		reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X);
		reset_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X);
		reset_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X);
		reset_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y);
		reset_hitbox_value(AT_USTRONG, 5, HG_HITBOX_X);
		reset_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y);
		}
	if (floor(strong_charge/4) % 2 == 0) {set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);}
	if (floor(strong_charge/4) % 2 == 1) {set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);}
	if (window == 2 && strong_charge % 16 == 1) {sound_play(sound_get("box_shaking"));}
	if (window == 3 && window_timer == 4 && get_synced_var(player) == 0){
		var demGrunt = random_func(1, 6, true);
		if(demGrunt == 3){sound_play(sound_get("demon_release"));}
		if(demGrunt == 4){sound_play(sound_get("demon_release2"));}
		if(demGrunt == 5){sound_play(sound_get("demon_release3"));}
	}
}

// Back Air clownshoes
if (attack == AT_BAIR) {
	if (window <= 3){
		if(!joy_pad_idle){
			eust_angleControl = joy_dir;
		} else {
			eust_angleControl = 90 + (spr_dir * 90);
		}
	}
	if (window == 1 || window == 2) {
		reset_attack_value(AT_BAIR, AG_HAS_LANDING_LAG);
		if(vsp < (-jump_speed*0.8)) {vsp = (-jump_speed*0.8);}
		//tiltability
		if(eust_angleControl <= 135 && eust_angleControl >= 45){
			//animation
			set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_u"));
			//set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_u_hurt"));
			//physics
			set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, 2);
			set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 2);
			//hitboxes
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -81);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -88);
			set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 51);
			set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 51);
			set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 115);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -60);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -110);
			set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 51);
			set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 51);
			set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
			set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 115);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -61);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -91);
			eust_bobShotX = -61;
			eust_bobShotY = -91;
			set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -4);
			set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, -4);
			}
		if(eust_angleControl <= 315 && eust_angleControl >= 225) {
			//animation
			set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair_d"));
			//set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_d_hurt"));
			//physics
			set_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED, -2);
			set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 2);
			//hitboxes
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -58);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, 10);
			set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 51);
			set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 51);
			set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
			set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 205);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -37);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, 26);
			set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 51);
			set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 51);
			set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
			set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 205);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -41);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, 9);
			eust_bobShotX = -41;
			eust_bobShotY = 9;
			set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED, -4);
			set_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED, 4);
			}
		if((eust_angleControl > 135 && eust_angleControl < 225) || (eust_angleControl < 45 || eust_angleControl > 315)) { //use joy_pad_idle if this feels better during playtesting
			reset_attack_value(AT_BAIR, AG_SPRITE);
			//reset_attack_value(AT_BAIR, AG_HURTBOX_SPRITE);
			reset_window_value(AT_BAIR, 3, AG_WINDOW_VSPEED);
			reset_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED);
			//until I find a better way to do this
			reset_hitbox_value(AT_BAIR, 1, HG_HITBOX_X);
			reset_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y);
			reset_hitbox_value(AT_BAIR, 1, HG_WIDTH);
			reset_hitbox_value(AT_BAIR, 1, HG_HEIGHT);
			reset_hitbox_value(AT_BAIR, 1, HG_SHAPE);
			reset_hitbox_value(AT_BAIR, 1, HG_ANGLE);
			reset_hitbox_value(AT_BAIR, 2, HG_HITBOX_X);
			reset_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y);
			reset_hitbox_value(AT_BAIR, 2, HG_WIDTH);
			reset_hitbox_value(AT_BAIR, 2, HG_HEIGHT);
			reset_hitbox_value(AT_BAIR, 2, HG_SHAPE);
			reset_hitbox_value(AT_BAIR, 2, HG_ANGLE);
			reset_hitbox_value(AT_BAIR, 3, HG_HITBOX_X);
			reset_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y);
			eust_bobShotX = -96;
			eust_bobShotY = -27;
			reset_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_HSPEED);
			reset_hitbox_value(AT_BAIR, 3, HG_PROJECTILE_VSPEED);
			}
					}
	if (window >= 3) {set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 0);}
	if (window == 3 && window_timer == 4){
		if(eust_bobStop){
			create_hitbox( AT_BAIR, 3, x+(spr_dir*eust_bobShotX), y+eust_bobShotY);
		}
		else if(!eust_bobStop){
			eust_bobStop = true;
		}
	}
}

if (attack == 42) {		// Specifically for the Rune
	if (window <= 3){
		if(!joy_pad_idle){
			eust_angleControl = joy_dir;
		} else {
			eust_angleControl = 90 + (spr_dir * 90);
		}
	}
	if (window == 1 || window == 2) {
		reset_attack_value(42, AG_HAS_LANDING_LAG);
		if(vsp < (-jump_speed*0.8)) {vsp = (-jump_speed*0.8);}
		//tiltability
		if(eust_angleControl <= 135 && eust_angleControl >= 45){
			//animation
			set_attack_value(42, AG_SPRITE, sprite_get("bair2_u"));
			//set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("bair_u_hurt"));
			//physics
			set_window_value(42, 3, AG_WINDOW_VSPEED, 2);
			set_window_value(42, 3, AG_WINDOW_HSPEED, 2);
			//hitboxes
			set_hitbox_value(42, 1, HG_HITBOX_X, -101);
			set_hitbox_value(42, 1, HG_HITBOX_Y, -78);
			set_hitbox_value(42, 1, HG_WIDTH, 96);
			set_hitbox_value(42, 1, HG_HEIGHT, 89);
			set_hitbox_value(42, 1, HG_SHAPE, 0);
			set_hitbox_value(42, 1, HG_ANGLE, 135);
			set_hitbox_value(42, 2, HG_HITBOX_X, -55);
			set_hitbox_value(42, 2, HG_HITBOX_Y, -130);
			set_hitbox_value(42, 2, HG_WIDTH, 89);
			set_hitbox_value(42, 2, HG_HEIGHT, 96);
			set_hitbox_value(42, 2, HG_SHAPE, 0);
			set_hitbox_value(42, 2, HG_ANGLE, 135);
			set_hitbox_value(42, 3, HG_HITBOX_X, -61);
			set_hitbox_value(42, 3, HG_HITBOX_Y, -91);
			set_hitbox_value(42, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_u_particle_runed"));
			set_hitbox_value(42, 3, HG_PROJECTILE_MASK, sprite_get("bair_u_particle_runed_hurt"));
			}
		if(eust_angleControl <= 315 && eust_angleControl >= 225) {
			//animation
			set_attack_value(42, AG_SPRITE, sprite_get("bair2_d"));
			//set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("bair_d_hurt"));
			//physics
			set_window_value(42, 3, AG_WINDOW_VSPEED, -2);
			set_window_value(42, 3, AG_WINDOW_HSPEED, 2);
			//hitboxes
			set_hitbox_value(42, 1, HG_HITBOX_X, -80);
			set_hitbox_value(42, 1, HG_HITBOX_Y, 3);
			set_hitbox_value(42, 1, HG_WIDTH, 96);
			set_hitbox_value(42, 1, HG_HEIGHT, 89);
			set_hitbox_value(42, 1, HG_SHAPE, 0);
			set_hitbox_value(42, 1, HG_ANGLE, 225);
			set_hitbox_value(42, 2, HG_HITBOX_X, -37);
			set_hitbox_value(42, 2, HG_HITBOX_Y, 46);
			set_hitbox_value(42, 2, HG_WIDTH, 89);
			set_hitbox_value(42, 2, HG_HEIGHT, 96);
			set_hitbox_value(42, 2, HG_SHAPE, 0);
			set_hitbox_value(42, 2, HG_ANGLE, 225);
			set_hitbox_value(42, 3, HG_HITBOX_X, -41);
			set_hitbox_value(42, 3, HG_HITBOX_Y, 9);
			set_hitbox_value(42, 3, HG_PROJECTILE_SPRITE, sprite_get("bair_d_particle_runed"));
			set_hitbox_value(42, 3, HG_PROJECTILE_MASK, sprite_get("bair_d_particle_runed_hurt"));
			}
		if((eust_angleControl > 135 && eust_angleControl < 225) || (eust_angleControl < 45 || eust_angleControl > 315)) { //use joy_pad_idle if this feels better during playtesting
			reset_attack_value(42, AG_SPRITE);
			//reset_attack_value(42, AG_HURTBOX_SPRITE);
			reset_window_value(42, 3, AG_WINDOW_VSPEED);
			reset_window_value(42, 3, AG_WINDOW_HSPEED);
			//until I find a better way to do this
			reset_hitbox_value(42, 1, HG_HITBOX_X);
			reset_hitbox_value(42, 1, HG_HITBOX_Y);
			reset_hitbox_value(42, 1, HG_WIDTH);
			reset_hitbox_value(42, 1, HG_HEIGHT);
			reset_hitbox_value(42, 1, HG_SHAPE);
			reset_hitbox_value(42, 1, HG_ANGLE);
			reset_hitbox_value(42, 2, HG_HITBOX_X);
			reset_hitbox_value(42, 2, HG_HITBOX_Y);
			reset_hitbox_value(42, 2, HG_WIDTH);
			reset_hitbox_value(42, 2, HG_HEIGHT);
			reset_hitbox_value(42, 2, HG_SHAPE);
			reset_hitbox_value(42, 2, HG_ANGLE);
			reset_hitbox_value(42, 3, HG_HITBOX_X);
			reset_hitbox_value(42, 3, HG_HITBOX_Y);
			reset_hitbox_value(42, 3, HG_PROJECTILE_SPRITE);
			reset_hitbox_value(42, 3, HG_PROJECTILE_MASK);
			}
		}
	if (window >= 3) {set_attack_value(42, AG_HAS_LANDING_LAG, 0);}
}


//Fair Cancelling because it's fair
if (attack == AT_FAIR){
	//RUNE B : FOUR KICKS
	if(has_rune("B")){
		set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
		if(window == 3 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
			if(!eust_runeBKicks){window = 2; window_timer = 0; eust_runeBKicks = true;} else {eust_runeBKicks = false;}
		}
	}
	if(!has_rune("B")){
		reset_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH);
		reset_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH);
	}
	//END RUNE

	if (window == 4 && window_timer == 3 && (!attack_down && !strong_down)){window = 7;}

	if (vsp < -8.5) {set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.5);}
	if (vsp >= -8.5){reset_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY);}
}

//FTilt SFX
if (attack == AT_FTILT && window == 3 && window_timer == 1 && eust_assKickSFX){
	sound_play(sound_get("kickWoosh"));
	eust_assKickSFX = false;
}

//UAir SFX
if (attack == AT_UAIR && window == 2){
	if(window_timer%4 == 0)	{sound_play(sound_get("mallet_woosh"));}
	if(shield_pressed || taunt_pressed){window = 3; window_timer = 1;}		//Cancel out of Up Air
}




		
//Now for the fun shit





//god help me		


if (attack == AT_USPECIAL){ // oh boy this one might need a lot of playtesting work to feel useful
	can_move = true;
	can_wall_jump = true;
	vsp = clamp(vsp, -3, 3);
	hsp = clamp(hsp, -4, 4);
	vsp -= 0.25;
	if (window == 1){
		if(window_timer == 1){eust_locoTimer = 0; eust_drawLocust = true; eust_tornaTrack = 0;}
		if(window_timer == 8){sound_play(sound_get("buzz"));}
	}
	//eust_locoTimer += 1;
	if (window == 1 || window == 2){
		if(window_timer % 5 == 0 && window_timer != 0){create_hitbox(AT_USPECIAL, 1, x, y); create_hitbox(AT_USPECIAL, 2, x, y);}
	}
	if (window == 1 || window == 3){draw_x = window_timer % 6 > 3 ? -2 : 2;}
	if (window == 2){
		draw_x = window_timer % 6 > 3 ? -5 : 5;
		if(window_timer % 5 = 1){sound_play(sound_get("tornado_woosh"));}
		//RUNE K : UP SPECIAL EXTENSION
		if (has_rune("K") && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
			if(!eust_runeKSpins){window = 2; window_timer = 0; sound_play(sound_get("buzz")); sound_play(sound_get("tornado_woosh")); eust_runeKSpins = true;} else {eust_runeKSpins = false;}
		}
		//END RUNE
	}
	
}

if (attack == AT_NSPECIAL){

	//set_attack(49);		//Final Smash Testing
	//eust_isSmashing = 5;		// Test Beta

	if (window == 1 && window_timer == 1){eust_oogaCharge = 0; eust_oogaBooga = 0;}

	// RUNE L : REMOVE WINDOW 2 CHARGER TIME
	if (window == 2 && has_rune("L")){window = 3; sound_stop(sound_get("oogarummaging")); sound_play(sound_get("eust_oogaBoogabooga")); eust_isFearing = true;}
	// END RUNE

	if (window == 2 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
		eust_isFearing = true;
		if (eust_oogaCharge < 3) {eust_oogaCharge++; window_timer = 0;}
	}
	if (window == 3 && window_timer == 3){
		eust_drawFear = true;
	}
	if (window == 4 && window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)) {
		if (eust_oogaBooga < 5) {eust_oogaBooga++; window_timer = 0;}
	}
	if (window == 5 && window_timer == 1){eust_isFearing = false;}
	was_parried = false;
}

if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	can_move = false;
	can_walk = false;
	can_jump = false;
	vsp = 0;
	hsp = 0;
	if(window == 1 && window_timer == 1){
			eust_mydoorState = 2;
	}
	if(window == 2 && window_timer == 1 && !hitpause){
		instance_create( x + (34*spr_dir), y, "obj_article_solid" );
		move_cooldown[AT_FSPECIAL] = 5*60;
	}
	if(window == 3 && window_timer == get_window_value(attack, 3, AG_WINDOW_LENGTH)){
		eust_doorWJumpTimer = 15;
		if(!has_walljump){eust_wJumpUsed = true;} else {eust_wJumpUsed = false;}
	}
}

if (attack == AT_DSPECIAL){
	can_walk = false;
	can_jump = false;
	can_move = false;
	can_fast_fall = false;
	can_dash = false;
	//clear all buffers at Down Special activation so there's no quick looping into itself
	clear_button_buffer(PC_LEFT_HARD_PRESSED);
	clear_button_buffer(PC_RIGHT_HARD_PRESSED);
	clear_button_buffer(PC_UP_HARD_PRESSED);
	clear_button_buffer(PC_DOWN_HARD_PRESSED);
	clear_button_buffer(PC_LEFT_STRONG_PRESSED);
	clear_button_buffer(PC_RIGHT_STRONG_PRESSED);
	clear_button_buffer(PC_UP_STRONG_PRESSED);
	clear_button_buffer(PC_DOWN_STRONG_PRESSED);
	clear_button_buffer(PC_LEFT_STICK_PRESSED);
	clear_button_buffer(PC_RIGHT_STICK_PRESSED);
	clear_button_buffer(PC_UP_STICK_PRESSED);
	clear_button_buffer(PC_DOWN_STICK_PRESSED);
	clear_button_buffer(PC_JUMP_PRESSED);
	clear_button_buffer(PC_ATTACK_PRESSED);
	clear_button_buffer(PC_SHIELD_PRESSED);
	clear_button_buffer(PC_SPECIAL_PRESSED);
	clear_button_buffer(PC_STRONG_PRESSED);
	clear_button_buffer(PC_TAUNT_PRESSED);
	if(eust_chairWarp){
		set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_reverse"));
		set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_reverse"));
	}
	if(!eust_chairWarp){
		reset_attack_value(AT_DSPECIAL, AG_SPRITE);
		reset_attack_value(AT_DSPECIAL, AG_AIR_SPRITE);
	}

	if (window == 1) {
		if(window_timer == 1){
			eust_chairFace = spr_dir;
			eust_gettingChair = true;
			eust_forceOffTimer = 0;
			eust_laaame = 0;
			if(instance_exists(obj_article1) && !eust_chairWarp){eust_mychairState = 2;}		// look to see if a chair exists, and destroy it
		}
		if (instance_exists(obj_article1) && eust_chairWarp){

	//eust_chairWCD = true;	// deactivating so Eustace can infinitely port to his chair; can revert comment if people don't like this

			if(window_timer == 10){
				eust_chairFace = eust_myChairFace;
				eust_gChairInvuln = true;
				x = eust_myChairX+(18*eust_myChairFace);
				y = eust_myChairY;
				eust_chairLastDamage = get_player_damage(player);	// update this before it gets lost
				}
			if(window_timer == 11){
				eust_mychairState = 6;
				eust_chairWarp = false;
			}
		}
	}
	if (window == 2 && free){eust_crashingDown = true;}
	if (window == 2 || window == 3) {
		if(window_timer == 1){
			if(!eust_chairWCD){eust_chairWarp = true;}
			eust_gChairInvuln = true;
			eust_chairLastDamage = get_player_damage(player);		// for invulnerability
			eust_inChair = true;
			eust_gettingChair = false;
		}
	}
	if (window == 4 && window_timer == 7){
	eust_drawPapers = true;
	eust_paperCoinFlip = random_func(1, 4, true);
	eust_paperPage1 = (eust_paperCoinFlip == 3 ? random_func(2, 2, true) : (2 + random_func(1, 10, true)));
	eust_paperPage2 = (eust_paperCoinFlip == 3 ? (2 + random_func(1, 10, true)) : random_func(2, 2, true));
	eust_paperX = x;
	eust_paperY = y;
	eust_paperD = spr_dir;
	}

	if (window == 5 && window_timer == 16) {
		eust_gChairInvuln = false;
		eust_gettingChair = false;
		instance_create( x-(18*spr_dir), y, "obj_article1" );
		state = PS_JUMPSQUAT;
		hurtboxID.sprite_index = hurtbox_spr;

		if(eust_chairWarp){move_cooldown[AT_DSPECIAL] = 3*60 + eust_laaame;}	// prevent infinite teleport spam; remove if chair gets nerfed

		}

	was_parried = false;
}

if (attack == 49) { // FINAL SMASH
	// hold still
	can_fast_fall = false;
	can_move = false;
	can_walk = false;
	can_jump = false;
	vsp = 0;
	hsp = 0;
}