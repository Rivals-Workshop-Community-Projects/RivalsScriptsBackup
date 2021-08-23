//The Suitcase

if(attack == AT_JAB){
	if(window == 6 && window_timer >= 3 && has_hit){
		can_jump = true;
	}
}

if(attack == AT_UTILT){
	can_fast_fall = false;
	if (item[11,3] == 1){
		if(window < 4){
			suppress_stage_music(0.35, 0.02);
		}
		if(window == 4 && window_timer == 18){
			shake_camera( 8, 6 );
		}
	}
	if (window < 5 && window_timer < 15){
		hud_offset = 60;
	}
	
	if (window <= 4){
		if(item[23, 3] == 1){
			set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
			if(!free){
				hsp = (spr_dir * -2);
			}
			//if uptilt continues off ledge due to joycon drift, increase drift speed
			if(free && abs(hsp) < 5){
				hsp = hsp - spr_dir;
			}
		} else {
			set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
		}
	}
	
	if(window == 5){
		if(item[23, 3] && hsp < -1){
			hsp++;
		}
		if(free){
			can_wall_jump = true;
		}
	}
}

if(attack == AT_DTILT){
	if(window == 3 && window_timer >= 1 && !hitpause){
		if(down_stick_pressed){
			window = 4;
			window_timer = 0;
		}
	}
}

if(attack == AT_USTRONG){
	if (window == 2){
		if(crouchCounter >= 100 && window_timer == 1){
			window = 7;
		}
	}
	if (window >= 2 && window <= 5){
		hud_offset = 40;
	}
	if (window == 2 && window_timer == 1){
		sound_play(asset_get("sfx_abyss_portal_spawn"));
	}
	if (window == 7 && window_timer == get_window_value(AT_USTRONG,7,AG_WINDOW_LENGTH)){
		window = 8;
		window_timer = 0;
	}
	if (window == 8){
		crouchCounter = 0;
		if (window_timer % 2 == 0 && !hitpause){
			create_hitbox(AT_USTRONG , 4 , x   , y );
		}
		if (window_timer == get_window_value(AT_USTRONG,8,AG_WINDOW_LENGTH)){
			window = 9;
			window_timer = 0;
		}
	}
	if (window == 9){
		if (window_timer == get_window_value(AT_USTRONG,9,AG_WINDOW_LENGTH)){
			window = 10;
			window_timer = 0;
		}
	}
	if (window == 10 && window_timer == get_window_value(AT_USTRONG,10,AG_WINDOW_LENGTH)){
		window = 11;
		window_timer = 0;
	}
}

if(attack == AT_DSTRONG){
	if(window < 3){
		hud_offset = 28;
	}
	if(window == 2 && window_timer == 1 && crouchCounter >= 100){
		window = 5;
	}
	if (window == 5 && window_timer == get_window_value(AT_DSTRONG,5,AG_WINDOW_LENGTH)){
		window = 6;
		window_timer = 0;
	}
	if (window == 6 && window_timer == get_window_value(AT_DSTRONG,6,AG_WINDOW_LENGTH)){
		window = 7;
		window_timer = 0;
	}
	if (window == 7){
		if (window_timer == 1 && !hitpause){
			sound_play(asset_get("sfx_ori_energyhit_heavy"));
			spawn_hit_fx( x , y - 75 , exp2KT);
			spawn_hit_fx( x + 60 , y - 25 , exp1KT);
			spawn_hit_fx( x - 60 , y - 25 , exp1KT);
		}
		if (window_timer == get_window_value(AT_DSTRONG,7,AG_WINDOW_LENGTH)){
			crouchCounter = 0;
			window = 8;
			window_timer = 0;
		}
	}
}

if(attack == AT_FTILT){
	if(window == 2 && window_timer == 1 && crouchCounter >= 100){
		window = 5;
		window_timer = 0;
	}
	if (window == 5){
		if (window_timer == 8 && !hitpause){
			sound_play(asset_get("sfx_ori_energyhit_heavy"));
			spawn_hit_fx( x + (spr_dir * 40) , y - 32  , 13 );
		}
		if(window_timer == get_window_value(AT_FTILT,5,AG_WINDOW_LENGTH)){
			window = 6;
			window_timer = 0;
		}
	}
	if (window == 6){
		if (window_timer == 1 && !hitpause){
			spawn_hit_fx( x - (spr_dir * 10) , y , blast1KT);
		}
		if(window_timer == get_window_value(AT_FTILT,6,AG_WINDOW_LENGTH)){
			crouchCounter = 0;
			window = 7;
			window_timer = 0;
		}
	}
}

if(attack == AT_NAIR){
	if(item[2, 3] == 1){
	
		if(window == 2 && (window_timer < get_window_value(AT_NAIR,2,AG_WINDOW_LENGTH)) || (window == 1 && window_timer > 4)){
			nairbounce = true;
		} else {
			nairbounce = false;
		}
		
		if(nairbounce && (attack_down || attack_pressed)){
			set_attack_value(AT_NAIR, AG_CATEGORY, 2);
		} else {
			set_attack_value(AT_NAIR, AG_CATEGORY, 1);
		}
			
		if(!free && window == 2){
			has_airdodge = nairbounceDodgeCheck;
			djumps = nairbounceJumpCheck;
			vsp -= nairbounceSpeed;
			sound_play(asset_get("sfx_swish_medium"));
			if(has_hit_player && nairbounceHitCheck == false){
				can_fast_fall = false;
				attack_end();
				nairbounceHitCheck = true;
			}
		}
		if(window == 3 && window_timer == 1){
			spawn_hit_fx( x , y , poolparty);
			nairbounceHitCheck = false;
		}
	}
}
	
if (attack == AT_FSTRONG){
	can_fast_fall = false;
	can_wall_jump = true;
}

if (attack == AT_NSPECIAL){

	if (window == 1){
		if(window_timer == 1){
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, crysProj_shotSpeedBase);
			crysProj_shotSpeedBonus = 0;
			crysProj_tickDelay = 10;
		}
	}
    if (window == 2){
		crystalHold++;
		if(crystalHold % 20 == 0){
			crysProj_tickDelay -= 2;
			crysProj_shotSpeedBonus += 2;
			spawn_hit_fx(x + (36 * spr_dir), y - 34, crysSmall);
		}
		
        if (crystalHold == 40 || (!special_down && window_timer >= 4)){
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, crysProj_shotSpeedBase + crysProj_shotSpeedBonus);
			window = 3;
			window_timer = 0;
			crystalHold = 0;
        }
    }
	if (window == 3){
		if(window_timer == 1){
			if(item[1,3] == 1){
				sound_play(asset_get("sfx_swipe_weak1"));
			}
			if(item[21,3] == 1){
				canCrystalBounce = true;
			}
		}
		if(window_timer == get_window_value(AT_NSPECIAL,3,AG_WINDOW_LENGTH)){
			window = 4;
			window_timer = 0;
		}
	}
	move_cooldown[AT_NSPECIAL] = crystalCooldown;
}


//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL){
	can_fast_fall = false;
	if(window == 1){
		can_fast_fall = true;
	}
	
	if (window <= 4){
		hud_offset = 42;
	}
	
	if (shield_down && window >= 3 && window <= 4){	//upspecial cancel
		window = 6;
		window_timer = 0;
	}
}

if (attack == AT_FSPECIAL){
	can_fast_fall = false;
	can_wall_jump = false;
	
	if(was_parried){
		//super_armor = false;
		fspecialTimer = 0;
		hsp = 0;
		old_hsp = 0;
	}
	
	if (window == 1 && window_timer >= 7 && free){	//13 super armor
		vsp -= 5;
	}

    if (window == 2){
		fspecialTimer = 0;
		if(window_timer == 1){
			if(!free){
				hsp = (spr_dir * -4);
				taxiAirStart = false;
			} else {
				taxiAirStart = true;
			}
		}
    }
	
	if (window == 3){
		fspecialTimer++;
		
		if(was_parried){
			window = 7;
			window_timer = 0;
			fspecialTimer = 0;
		}
		
		if(fspecialTimer == 1){
			if(taxiAirStart){
				hsp = hsp + (spr_dir * 12);
			} else {
				hsp = hsp + (spr_dir * 16);
			}
		}
		
		if(state == PS_ATTACK_GROUND && taxiAirStart){
			taxiLanded = true;
			taxiAirStart = false;
		}
		
		if(free){
			if(vsp > 9){
				fspecialTimer += 0.5;
			} else {
				fspecialTimer -= 0.5;
			}
			if(taxiAirStart = false){
				taxiMaxHSP = 6;
				taxiAirStart = true;
				if(up_down || special_down){
					var postBounceTimer = fspecialTimer;
					postBounceTimer -= 20;
					if(postBounceTimer < 15){
						fspecialTimer = 15;
					} else {
						fspecialTimer = postBounceTimer;
					}
					vsp -= 6;
					hsp /= fspecialLedgeHSP;
					spawn_hit_fx( x - (spr_dir * 10) , y , carhopFX);
					if(item[22, 7] == false){
						if(item[22, 3] == 0){
							octaneTryUnlock = true;
							octaneUnlockTimer = 4;
						} else {
							if(!joy_pad_idle && joy_dir > 60 + (90 * spr_dir) && joy_dir < 120 + (90 * spr_dir)){
								destroy_hitboxes();
								window = 4;
								window_timer = 0;
								fspecialTimer = 0;
							}
						}
					}
				}
			}
		} else {
			taxiMaxHSP = 10;
		}
		
//		if(taxiLanded){
//			if(landTime == 0){
//				landTime = fspecialTimer;
//			}
//			hsp = hsp / 1.2;
//			if(fspecialTimer > (landTime + 2)){
//				landTime = 0;
//				taxiLanded = false;
//			}
//		}
		if(hsp == 0 && fspecialTimer >= 3 && (has_hit_player || place_meeting(x+hsp+(20*spr_dir),y,asset_get("par_block")))){
			sound_play( asset_get("sfx_blow_medium2"));
			attack_end();
			destroy_hitboxes();
			//super_armor = false;
			if(carbounceRestoredJumps == false && djumps > 0){
				djumps = 0;
				carbounceRestoredJumps = true;
			}
			window = 8;
			window_timer = 0;
			fspecialTimer = 0;
		}
		
		if(taunt_pressed && (fspecialTimer % 20 == 0)){
			sound_play( asset_get("mfx_place_marker"));
		}
			
		if(!was_parried && !hitpause){
			if(abs(hsp) > 0){
				if(abs(hsp) < taxiMaxHSP){ 
					hsp = hsp + (spr_dir * 0.6);
				} else {
					hsp = hsp - (spr_dir * 0.2);
				}
			}
		}

		if(free && vsp < 10){
			vsp = vsp + 0.6;
			hsp /= 1.02;
		}
		
		if(fspecialTimer > 3 && !was_parried){
			create_hitbox( AT_FSPECIAL, 1, x, y );
			//super_armor = true;
		}
		if(fspecialTimer >= 15 && !was_parried){
			can_jump = true;
			if((item[22, 3] == 1 || !free) && (attack_pressed || (!joy_pad_idle && joy_dir > 60 + (90 * spr_dir) && joy_dir < 120 + (90 * spr_dir)))){
				destroy_hitboxes();
				window = 4;
				window_timer = 0;
				fspecialTimer = 0;
			}
			if(shield_pressed && vsp > 0){
				destroy_hitboxes();
				super_armor = false;
				window = 7;
				window_timer = 0;
				fspecialTimer = 0;
			}
		}
		
		if(fspecialTimer >= 60){
			destroy_hitboxes();
			super_armor = false;
			window = 7;
			window_timer = 0;
			fspecialTimer = 0;
		}
		
		if (item[15,3] == 1 && !hitpause) {
			if(window_timer % 3 == 1){
				spawn_hit_fx( x - ((20 - random_func(1, 36, true)) * spr_dir) , y - 16 - random_func(2, 16, true) , smokeKT1 );
			}
			
			if (!free){
				spawn_hit_fx( x , y - 10 , dashfxKT);
			}
		}
	}
	if (window == 4){
		if(item[22, 3] == 1){
			off_edge = true;
		} else {
			off_edge = false;
		}
		
		if(free && vsp < 10){
			vsp = vsp + 0.6;
			hsp /= 1.02;
		}
		
		if(window_timer == 1 && !was_parried && abs(hsp) < fspecialDriftBoost){ 
			hsp = spr_dir * fspecialDriftBoost;
		}
		if(window_timer == get_window_value(AT_FSPECIAL,4,AG_WINDOW_LENGTH)){
			window = 5;
			window_timer = 0;
		}
	}
	if (window == 5 && window_timer == get_window_value(AT_FSPECIAL,5,AG_WINDOW_LENGTH)){
		attack_end();
	}
	
	if (window == 6 && has_hit){
		can_jump = true;
		can_fast_fall = true;
	}
	
	if (window == 7){
		if(free && vsp > 3){
			vsp = 3;
		}
		can_wall_jump = true;
	}
	move_cooldown[AT_FSPECIAL] = 40;
}

if(attack == AT_TAUNT){
	if( window_timer == get_window_value(AT_TAUNT,1,AG_WINDOW_LENGTH) && item[3, 7] == false && item[3, 3] == 0 ){
		achieveUnlock(3);
	}
	
	switch(get_player_color(player)){
		case 3:
			if(item[9, 3] == 1){
				if(down_down && taunt_down){
					chiefcase = true;
					holdingTimer++;
					sound_stop(asset_get("sfx_orca_roll"));
					window = 2;
					window_timer = 0;
					if(holdingTimer <= 180 && (dingReady || dingTimer == 120)){
						suppress_stage_music(0.4, 0.5);
					}
				} else {
					chiefcase = false;
					holdingTimer = 0;
				}
				if(window == 2 && window_timer == get_window_value(AT_TAUNT,2,AG_WINDOW_LENGTH) && taunt_down){
					window_timer = 0;
				}
			}
			break;
		case 6:
			if(window_timer == 12){
				champSlot *= -1;
				init_shader();
			}
			break;
		case 15:
			if(window == 2 && window_timer == get_window_value(AT_TAUNT,2,AG_WINDOW_LENGTH) && taunt_down){
				window_timer = 0;
			}
			break;
	}
}

//DownSpecial - Attack to accept, Dodge to cancel, Special to void. If A pressed, check if same modifer items owned, then disown them. Mark current item as owned
if (attack == AT_DSPECIAL){
	can_move = false;

	if (item[14, 3] == 1 && !was_parried && window <= 2){
		can_jump = true;
	}
	if (window != 1){
		draw_indicator = false;
		switch(window){
			case 1:
				if(window_timer == 1){
					itempoolUpdated = false;
				}
			break;
			case 2:		//item hover
				newItemHUDRefresh = true;
				if (attack_pressed){
					if(itemCredits < 1){
						sound_play(asset_get("mfx_tut_fail"));
						window = 4;
						window_timer = 0;
						itempoolUpdated = false;
					} else {
						window = 3;
						window_timer = 0;
						item[ID_chosen, 3] = 1;
						item[ID_chosen, 7] = false;
						itemCredits--;
						applyItem(ID_chosen);
						itempoolUpdated = false;
						IDLockedIn = false;
						newItemHUDRefresh = true;
					}
				} else if (special_pressed){
					if(itemCredits < 1){
						sound_play(asset_get("mfx_tut_fail"));
						window = 4;
						window_timer = 0;
						itempoolUpdated = false;
					} else {
						window = 5;
						window_timer = 0;
						spawn_hit_fx( x , y - 24 , 66);
						item[ID_chosen, 3] = 2;
						item[ID_chosen, 7] = false;
						itemCredits--;
						voidItem(ID_chosen);
						itempoolUpdated = false;
						IDLockedIn = false;
						newItemHUDRefresh = true;
					}
				} else if (shield_pressed){
					window = 4;
					window_timer = 0;
					itempoolUpdated = false;
				}
			break;
			
			case 3:		//item accept
				if(window_timer == get_window_value(AT_DSPECIAL,3,AG_WINDOW_LENGTH)){
					window = 6;
					window_timer = 0;
				}
			break;
			
			case 4:		//item reject
				if(window_timer == get_window_value(AT_DSPECIAL,4,AG_WINDOW_LENGTH)){
					window = 6;
					window_timer = 0;
				}
			break;
			
			case 5:		//item void
				if(window_timer == get_window_value(AT_DSPECIAL,5,AG_WINDOW_LENGTH)){
					window = 6;
					window_timer = 0;
				}
			break;
			
			case 6:		//endlag
				setNextItem();
				if(window_timer == get_window_value(AT_DSPECIAL,6,AG_WINDOW_LENGTH)){
					move_cooldown[AT_DSPECIAL] = 2;
				}
			break;
		}
	}
}

//Credit to Mawral (Epinel) for original suplex code
switch(attack){

	case AT_FSTRONG:
		
		//grab logic.
		if (suit_grab_connected && window >= 2 && (window <= 8 || (window == 10 && window_timer <= 1)) && stillGrabbed()){
		
			if(free && vsp >=3){
				vsp = 3;
			}
			
			//drag this player
			var drag_x;
			var drag_y;
			var starting_x =  x - suit_grabbed_player_x_offset;
			var starting_y = y - suit_grabbed_player_y_offset;
			switch (window) {
				case 6:
					drag_x = round(ease_quadIn( starting_x, x + (suit_grabbed_player_suplex_distance + 15) * spr_dir, window_timer,  6 ));
					drag_y = round(ease_quadIn( starting_y, y + 5, window_timer, 6 ));
				break;
				case 7:
					drag_x = round(ease_cubeInOut( x + (suit_grabbed_player_suplex_distance + 15) * spr_dir, x - (suit_grabbed_player_suplex_distance + 50) * spr_dir, window_timer, 12 ));
					if (window_timer >= 10) drag_y = y;
					else if (window_timer < 5) drag_y = round(ease_sineIn( y + 5, y - 45, window_timer, 6 ));
					else drag_y = round(ease_sineOut( y - 45, y, window_timer - 6, 5 ));
				break;
				case 8:
					drag_x = x - (suit_grabbed_player_suplex_distance + 50) * spr_dir;
					drag_y = y;
				break;
				
				case 10:
					drag_x = round(ease_cubeInOut( x + (suit_grabbed_player_suplex_distance + 15) * spr_dir, x - (suit_grabbed_player_suplex_distance + 20) * spr_dir, window_timer - 6, 12 ));
					drag_y = y;
				break;
				
				default:
					drag_x = x - suit_grabbed_player_x_offset;
					drag_y = y - suit_grabbed_player_y_offset;
				break;
				
			}

			with (suit_grabbed_player_object_id) {
				hitstop = 2; //extend hitstop.
				vsp = 1;
				if ((x != drag_x || y != drag_y) && place_meeting(drag_x, drag_y, asset_get("par_block")) == false) {
					x = drag_x; y = drag_y;
				}
			}
		}
				
		else {
			//the player escaped the grab somehow. don't keep teleporting them in.
			suit_grab_connected = false;
			suit_grabbed_player_object_id = noone;
		}	
		
		//move logic.
		switch (window) {
			
			case 1: //haven't grabbed an opponent yet.
				if (window_timer <= 1) {
					suit_grab_connected = false;
				}	
				if (state = PS_ATTACK_GROUND && window_timer == 11){
					sound_play(asset_get("sfx_blow_weak2"));
				}
			break;
			
			case 3:
				//skip to window 5 if this attack grabbed an opponent. don't skip if the move was parried.
				if (suit_grab_connected && window_timer >= get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH) && !was_parried) {
					window = 5;
					window_timer = 0;
				}
			break;
			
			
			case 4:
				//whiffed attack: end the attack here.
				if (window_timer >= get_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH)) {
					attack_end();
					if (was_parried)  { window = 12; window_timer = 1; }
					else { set_state(PS_IDLE); }
				}
			break;
			
			case 9:
				//landed attack: rotate right before ending the attack.
				if (!hitpause && window_timer >= get_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH)) {
					attack_end();
					spr_dir *= -1;
				}
				else if (window_timer >= 20) {  can_jump = true; } 
			break;
			
			case 10:
				if (window_timer >= get_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH)) {
					hsp = (6 * spr_dir);
					window = 11;
					window_timer = 0;
				}
			break;
		}
	break;
}

#define updateItempool
{
	IDs_available = 0;
	f = 0;
	for(e = 0; e < items_length; e++){
		if(item[e, 7] = true){	//check if each item is allowed to spawn
			IDs_available[f] = item[e, 5];
			f++;
		}
	}
	numItemsAvailable = f;
	setItemVariants();
	if(numItemsAvailable == 0){
		item[6, 7] = true;
		updateItempool();
	} else {
		item[6, 7] = false;
	}
	legendaryPinged = false;
}

#define applyItem(x)
{
	switch (x){
		case 0:	//prize purse
			shardVal++;
			xp_mod = 1;
			sound_play(asset_get("mfx_mm_coin_win"));
			break;
		case 1:	//burger
			set_num_hitboxes(AT_NSPECIAL, 2);

			set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
			set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 999);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -10);
			set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 32);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 32);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
			set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 2);
			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 75);
			set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 5);
			set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
			set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 9);
			set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_bite"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 15);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("nspecial2_proj"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, sprite_get("nspecial2_proj"));
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .14);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 8);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, -10);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GRAVITY, 0.8);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_AIR_FRICTION, 0.2);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
			set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 15);
			
			itemsDisplayed[displaySlot] = item[1, 5];
			burgerHUD = displaySlot;
			displaySlot++;
			break;
		case 2:		//beach ball
			set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair1"));
			set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair1_hurt"));
			set_attack_value(AT_NAIR, AG_OFF_LEDGE, 1);
			set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
			
			set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_frog_uspecial_cast"));
			set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
			set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 5);
			set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
			
			set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 12);
			set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
			set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 9);
			set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
			set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
			set_window_value(AT_NAIR, 2, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_bubblepop"));
			set_window_value(AT_NAIR, 2, AG_WINDOW_SFX_FRAME, 10);
			
			set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
			set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
			set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
			set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
			set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
			
			set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 75);
			set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 75);
			set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 2);
			set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 2);
			set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 2);
			set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 2);
			set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -30);
			set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
			set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
			set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
			set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 1);
			set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
			set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 1);
			//set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
			set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 3);
			set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);
			set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
			set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
			set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .4);
			set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
			set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .4);
			set_hitbox_value(AT_NAIR, 1, HG_FINAL_BASE_KNOCKBACK, 3);
			set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_swish_weak"));
			set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, poolparty);
			set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -5);
			set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -30);
			set_hitbox_value(AT_NAIR, 1, HG_HIT_LOCKOUT, 5);
			set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
			set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
			set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
			set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
			set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 6);
			//set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 3);
			//set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 9);
			
			itemsDisplayed[displaySlot] = item[2, 5];
			displaySlot++;
			break;
		case 3:		//sandy dair
			switch(sandStage){
				case 0:
					dairCooldown = 30;
					
					set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
					set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
					set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, sandair);
					set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_sand_yell"));
					set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 7);
					set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 280);
					set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 3.0);
					set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1.0);
					set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 10);
					set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 1);
					set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 0);
					set_hitbox_value(AT_DAIR, 3, HG_HITSTUN_MULTIPLIER, 0.9);
					set_hitbox_value(AT_DAIR, 3, HG_EXTRA_HITPAUSE, 3);
					
					itemsDisplayed[displaySlot] = item[3, 5];
					displaySlot++;
					break;
				case 1:
					set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
					set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 15);
					set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 20);
					set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
					set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 4);
					set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 2);
					set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 21);
					set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
					set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
					set_hitbox_value(AT_DAIR, 1, HG_EXTRA_HITPAUSE, 3);
					set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 9);
					set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, sandair2);
					set_hitbox_value(AT_DAIR, 3, HG_EXTRA_HITPAUSE, 5);
					
					item[3, 4] = sprite_get("mini_creatorsmark1");
					break;
			}
			break;
		case 4:		//boarding pass
			set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -3);
			set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -4);
			
			set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -5);
			set_window_value(AT_FSPECIAL, 8, AG_WINDOW_VSPEED, -5);
			
			set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1.2);
			
			nairbounceSpeed = 10;	//pool party synergy
			dairBounce = -9;
			
			itemsDisplayed[displaySlot] = item[4, 5];
			displaySlot++;
			break;
		case 5:		//reg. badge
			set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, (regBonusDmg + get_hitbox_value(AT_FTILT, 2, HG_DAMAGE)));
			set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, (regBonusDmg + get_hitbox_value(AT_FTILT, 4, HG_DAMAGE)));
			set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, tada);
			set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, 304);
			set_hitbox_value(AT_FTILT, 2, HG_EXTRA_CAMERA_SHAKE, 1);
			
			switch (regTracker){
				case 0:
					set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH) - 2));
					GAUGE_EXP_CURRENT = GAUGE_EXP_CURRENT + 25;
					break;
				case 1:
					break;
				case 2:
					set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH) + 2));
					set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH) + 2));
					set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH) + 2));
					break;
				case 3:
					set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH) - 1));
					set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH) - 1));
					set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, (get_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH) - 1));
					break;
			}
			itemsDisplayed[displaySlot] = item[5, 5];
			displaySlot++;
			break;
		case 6:		//breakfast
			if(breakfastVar = 1){
				take_damage(player, -1, -5);
			} else {
				take_damage(player, -1, -1);
			}
			sound_play( asset_get("mfx_hp_spawn"));
            outline_color = [ 0, 127, 0 ];
            init_shader();
            outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
			breakfastCount++;
			/*
			spitWindow = spitWindow + 3;
			if((item[1, 3] == 1) && (item[19, 3] == 0) && (item[19, 7] == false)){
				achieveUnlock(19);
			}
			if(item[19, 3] == 1 && breakfastCount < 10){
				set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12 + spitWindow);
				set_num_hitboxes(AT_NSPECIAL, breakfastCount);

				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_PARENT_HITBOX, 2);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_TYPE, 2);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW, 3);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW_CREATION_FRAME, (breakfastCount*3));
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_LIFETIME, 28);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_X, 30);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_Y, -10);
				set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_GROUP, -1);
			}
			*/
			break;
		case 7:		//cactus
			initial_dash_speed += 0.10;
			if(item[25,3] == 1){
				bairHSP--;
			} else {
				bairHSP++;
			}
			bairVSP--;
			
			set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
			set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 3);
			set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .8);
			set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .1 + get_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING));
			
			itemsDisplayed[displaySlot] = item[7, 5];
			displaySlot++;
			break;
		case 8:		//gradcap
			gaugeToCheck = 100;
			break;
		case 9:	//glitch
			wave_land_adj = 1.45;
			wave_friction = .035;
			waveland_sound = asset_get("sfx_waveland_abs");
			
			itemsDisplayed[displaySlot] = item[9, 5];
			displaySlot++;
			break;
		case 10:	//zet plush
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial3_proj"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, symbiote);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, symbiote);
			
			itemsDisplayed[displaySlot] = item[10, 5];
			displaySlot++;
			break;
		case 11:	//godhead
			set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 24);
			set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 8);
			set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
			set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
			set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_may_whip2"));
			set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 8);
			
			set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 18);
			set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 5);
			set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
			set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 143);
			set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 0);
			set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 80);
			set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 18);
			set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 5);
			set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
			set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 143);
			set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 0);
			set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 80);
			
			itemsDisplayed[displaySlot] = item[11, 5];
			displaySlot++;
			break;
		case 12:	//ceo belt
			set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("mfx_ring_bell"));
			set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, tada);
			set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("mfx_ring_bell"));
			set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT, tada);
			set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("mfx_ring_bell"));
			set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, (ceoBonusDmg + get_hitbox_value(AT_USTRONG, 3, HG_DAMAGE)));
			set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, (ceoBonusBKB + get_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK)));
			set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, (ceoBonusKBG + get_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING)));
			set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 8);
			set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .7);
			set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, tada);
			
			set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, (ceoBonusDmg + get_hitbox_value(AT_USTRONG, 5, HG_DAMAGE)));
			set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, (ceoBonusBKB + get_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK)));
			set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, (ceoBonusKBG + get_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING)));
			
			itemsDisplayed[displaySlot] = item[12, 5];
			displaySlot++;
			break;
		case 13:	//milestone system
			GAUGE_EXP_CURRENT = GAUGE_EXP_CURRENT + 50;
			
			itemsDisplayed[displaySlot] = item[13, 5];
			displaySlot++;
			break;
		case 14:	//down special
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, shine);
			set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -32);
			
			itemsDisplayed[displaySlot] = item[14, 5];
			displaySlot++;
			break;
		case 15:	//voidbox
			set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, asset_get("sfx_absa_new_whip1"));
			
			itemsDisplayed[displaySlot] = item[15, 5];
			displaySlot++;
			break;

		case 16:	//mint toothpaste
			set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ice_ftilt"));
			set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 27);
			
			set_hitbox_value(AT_UTILT, 2, HG_EFFECT, 5);
			set_hitbox_value(AT_UTILT, 3, HG_EFFECT, 5);
			
			itemsDisplayed[displaySlot] = item[16, 5];
			displaySlot++;
			break;
			
		case 17:	//gamers on the edge
			air_accel = air_accel + .1;
			gravity_speed = gravity_speed - .03;
			knockback_adj = knockback_adj + .01;
			hitstun_grav = hitstun_grav - .05;
			max_fall = max_fall - 1;
			fast_fall = fast_fall - 1;
			set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.45);
			
			itemsDisplayed[displaySlot] = item[17, 5];
			displaySlot++;
			break;
		
		case 18:	//supersmashcon
			walk_anim_speed = .9;
			dash_anim_speed = .125;
			dash_speed = 4.5;
			walk_speed = 6.75;
			walk_accel = 0.75;
			
			itemsDisplayed[displaySlot] = item[18, 5];
			displaySlot++;
			break;
			
		case 19:	//unlimited burger works
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12 + spitWindow);
			set_num_hitboxes(AT_NSPECIAL, breakfastCount);

			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_PARENT_HITBOX, 2);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW_CREATION_FRAME, (breakfastCount*2));
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_LIFETIME, 28);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_X, 30);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_Y, -10);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_GROUP, -1);
			
			itemsDisplayed[burgerHUD] = item[19, 5];
			break;
			
		case 20:	//letterman jacket
			set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
			
			itemsDisplayed[displaySlot] = item[20, 5];
			displaySlot++;
			break;
			
		case 21:	//sunny's collar
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 0);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 0);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
			
			itemsDisplayed[displaySlot] = item[21, 5];
			displaySlot++;
			break;
			
		case 22:	//car from rocket league
			carhopFX = 141;
			fspecialDriftBoost = 10;
			fspecialLedgeHSP = 0.7;
			
			itemsDisplayed[displaySlot] = item[22, 5];
			displaySlot++;
			break;
			
		case 23:	//nintendo switch
			set_attack_value(AT_UTILT, AG_CATEGORY, 2);
			set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4 + get_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH));
			// set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("switch")); RCS no copyright
			set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 4 + get_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME));
			
			set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 105);
			set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 3 + get_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME));
			set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
			set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 3 + get_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME));
			set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);

			itemsDisplayed[displaySlot] = item[23, 5];
			displaySlot++;
			break;

		case 24:	//unguarded sink
			itemsDisplayed[displaySlot] = item[24, 5];
			displaySlot++;
			break;
			
		case 25:	//no entry
			set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair2"));
			set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));
			//set_attack_value(AT_BAIR, AG_USES_CUSTOM_GRAVITY, 1);
			
			set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("icebairrev"));
			set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 1);
			set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 20);
			set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
			//set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
			//set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
			//set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.6);
			set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
			
			set_num_hitboxes(AT_BAIR, 5);

			set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
			set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -18);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -20);
			set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 88);
			set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 46);
			set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
			set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 1);
			set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 90);
			set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 2);
			set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0);
			set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
			set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0);
			set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("icemed2rev"));
			set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, symbioterev);
			set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
			set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -24);
			set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);

			set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
			set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
			set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -18);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -20);
			set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);

			set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
			set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
			set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -18);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -20);
			set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);

			set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 1);
			set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
			set_hitbox_value(AT_BAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
			set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 2);
			set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -18);
			set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -20);
			set_hitbox_value(AT_BAIR, 4, HG_HITBOX_GROUP, -1);

			set_hitbox_value(AT_BAIR, 5, HG_PARENT_HITBOX, 5);
			set_hitbox_value(AT_BAIR, 5, HG_HITBOX_TYPE, 1);
			set_hitbox_value(AT_BAIR, 5, HG_WINDOW, 2);
			set_hitbox_value(AT_BAIR, 5, HG_WINDOW_CREATION_FRAME, 16);
			set_hitbox_value(AT_BAIR, 5, HG_LIFETIME, 2);
			set_hitbox_value(AT_BAIR, 5, HG_HITBOX_X, -18);
			set_hitbox_value(AT_BAIR, 5, HG_HITBOX_Y, -20);
			set_hitbox_value(AT_BAIR, 5, HG_WIDTH, 88);
			set_hitbox_value(AT_BAIR, 5, HG_HEIGHT, 46);
			set_hitbox_value(AT_BAIR, 5, HG_PRIORITY, 1);
			set_hitbox_value(AT_BAIR, 5, HG_DAMAGE, 9);
			set_hitbox_value(AT_BAIR, 5, HG_ANGLE, 70);
			set_hitbox_value(AT_BAIR, 5, HG_ANGLE_FLIPPER, 3);
			set_hitbox_value(AT_BAIR, 5, HG_BASE_KNOCKBACK, 7);
			set_hitbox_value(AT_BAIR, 5, HG_KNOCKBACK_SCALING, 0.5);
			set_hitbox_value(AT_BAIR, 5, HG_BASE_HITPAUSE, 7);
			set_hitbox_value(AT_BAIR, 5, HG_HITPAUSE_SCALING, 0.2);
			set_hitbox_value(AT_BAIR, 5, HG_HIT_SFX, asset_get("sfx_icehit_medium2rev"));
			set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT, symbioterev);
			set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, -32);
			set_hitbox_value(AT_BAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -24);
			set_hitbox_value(AT_BAIR, 5, HG_HITBOX_GROUP, 2);


			itemsDisplayed[displaySlot] = item[25, 5];
			displaySlot++;
			break;
			
		case 26:	//f key
			itemsDisplayed[displaySlot] = item[26, 5];
			displaySlot++;
			break;
		}
}

#define voidItem(x)
{
	if(x == 6){
		if(breakfastVar = 1){
			take_damage(player, -1, -3);
		} else {
			take_damage(player, -1, -1);
		}
		sound_play( asset_get("mfx_hp_spawn"));
        outline_color = [ 0, 127, 0 ];
        init_shader();
        outline_color = [ 0, 0, 0 ]; //change outline color back to black in case the move gets interrupted
		breakfastCount++;
		/*
		spitWindow = spitWindow + 3;
		if((item[1, 3] == 1) && (item[19, 3] == 0) && (item[19, 7] == false)){
			achieveUnlock(19);
		}
		if(item[19, 3] == 1 && breakfastCount < 10){
			set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12 + spitWindow);
			set_num_hitboxes(AT_NSPECIAL, breakfastCount);

			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_PARENT_HITBOX, 2);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_TYPE, 2);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW, 3);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_WINDOW_CREATION_FRAME, (breakfastCount*3));
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_LIFETIME, 28);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_X, 30);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_Y, -10);
			set_hitbox_value(AT_NSPECIAL, breakfastCount, HG_HITBOX_GROUP, -1);
		}
	*/
	} else {
		itemsDisplayed[displaySlot] = item[x, 5];
		displaySlot++;
		if(voidStacks < 10){
			gravity_speed -= 0.01;
			air_max_speed += 0.1;
			hitstun_grav -= .0075;
			knockback_adj += .01;
			voidStacks++;
		}
	}
}

#define achieveUnlock(i)
{
	item[i, 7] = true;
	spawn_hit_fx( x + (spr_dir * 16) , y - 48 , achTrophy );
	sound_play( asset_get("sfx_shovel_knight_fanfare"));
	itempoolUpdated = false;
	setNextItem();
}

#define setItemVariants
{
	if(item[5, 3] == 0){
		if(numItemsAvailable <= 1){
			regTracker = 3;
			regBonusDmg = 3;
			item[5, 0] = "EMERGENCY REG.";
			item[5, 1] = "Tada! Barely made it!";
			item[5, 2] = sprite_get("item_badge3");
			item[5, 4] = sprite_get("mini_badge3");
			item[5, 8] = sprite_get("hud_shop1");
			item[5, 9] = $b2eaff;
		} else {
			if(displaySlot <= 1){
				regTracker = 0;
				regBonusDmg = -2;
				item[5, 0] = "EARLY REG. BADGE";
				item[5, 1] = "Tada! Discount!";
				item[5, 2] = sprite_get("item_badge0");
				item[5, 4] = sprite_get("mini_badge0");
			} else if (displaySlot >= 2 && displaySlot <= 4){
				regTracker = 1;
				regBonusDmg = 2;
				item[5, 0] = "REGISTRATION BADGE";
				item[5, 1] = "Tada!";
				item[5, 2] = sprite_get("item_badge1");
				item[5, 4] = sprite_get("mini_badge1");
			} else {
				regTracker = 2;
				regBonusDmg = 3;
				item[5, 0] = "LATE REG. BADGE";
				item[5, 1] = "Tada! Kept 'em waiting!";
				item[5, 2] = sprite_get("item_badge2");
				item[5, 4] = sprite_get("mini_badge2");
				item[5, 8] = sprite_get("hud_shop");
				item[5, 9] = $d5a5b5;
			}
		}
	}
	if(item[9, 3] == 0){
		if(gameboyIntro == true){
			item[9, 0] = "GAME-BREAKING 'M";
			item[9, 1] = "???? MISSING ##$";
			item[9, 2] = sprite_get("item_glitchm");
			item[9, 4] = sprite_get("mini_glitchm");
		} else if (gameboyIntro == false && displaySlot == 5){
			item[9, 0] = "GAME-BREAKING 'M";
			item[9, 1] = "???? MISSING ##$";
			item[9, 2] = sprite_get("item_glitchm");
			item[9, 4] = sprite_get("mini_glitchm");
		} else {
			item[9, 0] = "GAME-BREAKING GLITCH";
			item[9, 1] = "Wait, that- @!G7$%";
			item[9, 2] = sprite_get("item_glitch");
			item[9, 4] = sprite_get("mini_glitch");
		}
	}
}

#define setNextItem
{
	r = random_func(0, numItemsAvailable, true);
	if(ID_chosen == 6 && IDs_available[0] != 6){
		IDLockedIn = false;
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	if(IDLockedIn == false){
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	itempoolUpdated = false;
	newItemHUDRefresh = true;
}

#define stillGrabbed
//returns true if a grabbed opponent still meets all the conditions for being grabbed.
return (
	suit_grabbed_player_object_id != noone
	&& instance_exists(suit_grabbed_player_object_id)
	&& suit_grabbed_player_object_id.hitpause == true
	&& suit_grabbed_player_object_id.hitstun > 0
	&& suit_grabbed_player_object_id.invincible == false
);