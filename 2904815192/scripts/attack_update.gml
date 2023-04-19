//attack_update.gml

//these are just here so i can easily copy + paste them
//spawn_base_dust( x + (10 * spr_dir), y, "dash_start", spr_dir);
//(window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))

//Template
/*
//Move Name
if (attack == AT_WHATEVER){
	if (window == number){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//do stuff
		}
	}
}
*/

//Jab
if (attack == AT_JAB){
	if (window == 1 || window == 4){
		clear_button_buffer(PC_ATTACK_PRESSED);
		if (window == 4){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				spawn_base_dust( x + (24 * spr_dir), y, "dattack", -spr_dir);
			}
		}
	}
}

//Dash Attack
if (attack == AT_DATTACK){
	can_fast_fall = false;
	if (!was_parried){
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 9.5);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 7);
	} else if (was_parried){
		set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 0);
		set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 0);
	}
	if (window == 1){
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		dattackInitHitboxHit = false;
		if (window_timer == 1){
			spawn_base_dust( x + 4, y, "walk", -spr_dir);
			spawn_base_dust( x - 4, y, "walk", spr_dir);
			
			set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
			set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
			
			dattack_taunt_input = false;
			
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.9, 1.2);
			
			dattackTouchingPropertiesDuringStartup = false;
		}
		if (window_timer == 9){
			sound_play(asset_get("sfx_swipe_medium1"));
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust( x + (12 * spr_dir), y, "dash_start", spr_dir);
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.9, .9);
			sound_play(sfx_monopoly_pc_taxi_start);
			if (dattackTouchingPropertiesDuringStartup){
				sound_play(asset_get("mfx_star"));
			}
			if (taunt_pressed || taunt_down){
				set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 8);
				set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 9);
				dattack_taunt_input = true;
			}
			
			if (dattackRune){
				if ((left_down && spr_dir == -1) || (right_down && spr_dir == 1)){
					dattackTouchingPropertiesDuringStartup = true;
				}
			}
		}
		if (touchingProperty1
		|| touchingProperty2
		|| touchingProperty3){
			dattackTouchingPropertiesDuringStartup = true;
		}
		//Note to Self: code involving moving the HUD is in animation.gml
	}
	if (!hitpause){
		if (window == 2 || window == 3){
			vsp = clamp(vsp, -9999, 6);
			if (window_timer == 2 || window_timer == 5 || window_timer == 8 || window_timer == 11 || window_timer == 14 || window_timer == 17){
				spawn_base_dust( x + (2 * spr_dir), y, "dash", spr_dir);
			}
			
			if (dattackTouchingPropertiesDuringStartup == true){
				if (!hitpause){
					x += 2*spr_dir;
				}
			}
		}
		if (window == 2){
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (dattack_taunt_input && !hitpause){
					sound_play(asset_get("sfx_shovel_hit_light2"));
				}
			}
		}
		if (window == 3){
			if (dattackInitHitboxHit){
				window_timer++;
			}
			//if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) || (((jump_pressed || (tap_jump_pressed && can_tap_jump())) && dattackInitHitboxHit)))){
			if ((window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)/* || (((jump_pressed || (tap_jump_pressed && can_tap_jump())) && dattackInitHitboxHit))*/)){
				spawn_base_dust( x + (2 * spr_dir), y-8, "doublejump", spr_dir);
				//if ((jump_pressed || (tap_jump_pressed && can_tap_jump())) && dattackInitHitboxHit){
				if (dattackInitHitboxHit){
					var incJumpHeight = -2.5;
				} else {
					var incJumpHeight = 0;
				}
				window = 4;
				window_timer = 0;
				destroy_hitboxes();
				hsp = 3.5*spr_dir;
				vsp = -4.5+(incJumpHeight);
				destroy_hitboxes();
				spawn_hit_fx( x, y - 10, 144 );
				sound_stop(sfx_monopoly_pc_taxi_move);
				sound_play(sfx_monopoly_pc_taxi_stop);
			}
		}
	}
	if (window == 4){
		dattackInitHitboxHit = false;
		if(!free && window_timer > 2){
			set_state(PS_LANDING_LAG);
		}
		dattackTouchingPropertiesDuringStartup = false;
		if (was_parried && window_timer == 9){
			set_state(PS_PRATFALL);
			hsp *= 0.36;
		}
	}
}

//Forward Tilt
if (attack == AT_FTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_shovel_swing_med2"), false, noone, 0.55, 1.3);
		}
	}
}

//Up Tilt
if (attack == AT_UTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust(x - (22 * spr_dir), y, "dash", spr_dir);
			sound_play(asset_get("sfx_shovel_swing_light2"), false, noone, 0.7, 1.2);
		}
	}
	
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 /*|| (window == 3 && image_index < 4)*/){
	    hud_offset = 50;
	}
}

//Down Tilt
if (attack == AT_DTILT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_base_dust(x + (66 * spr_dir), y, "wavedash", -spr_dir);
			sound_play(asset_get("sfx_shovel_swing_light1"), false, noone, 0.6, 1.2);
		}
	}
}

//Forward Air
if (attack == AT_FAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_shovel_swing_med1"), false, noone, 0.4, 1.25);
		}
	}
}

//Up Air
if (attack == AT_UAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//sound_play(asset_get("sfx_ori_stomp_spin"), false, noone, 0.8, 1.2);
		}
	}

	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2 || (window == 3 && image_index < 8)){
	    hud_offset = 38;
	}
}

//Down Air
if (attack == AT_DAIR){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.6, 1.05);
		}
	}
}

//Forward Strong
if (attack == AT_FSTRONG){
	if (fstrongRune && fstrongRuneTimesThrough != 2){
		set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 9);
		set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 9);
		set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 3);
	} else {
		set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
		set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 9);
		set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 9);
	}
	if (fstrongRune && (window > 2)){
		vsp = clamp(vsp, -200000, 2.2);
	}
	if (window == 1){
		fstrongRuneTimesThrough = 0;
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.9, 1.3);
			spawn_base_dust( x - (10 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (50 * spr_dir), y, "dattack", -spr_dir);
		}
	}
	if (window == 4 && fstrongRune){
		if (window_timer == 5 && fstrongRuneTimesThrough != 2){
			window = 2;
			window_timer = 3;
			sound_play(asset_get("sfx_swipe_heavy1"));
			fstrongRuneTimesThrough++;
			attack_end();
			hsp = (4 * spr_dir);
		}
	}
}

//Up Strong
if (attack == AT_USTRONG){
	//Note to Self: code involving moving the HUD is in animation.gml
	if (window == 1){
		if (window_timer == 3){
			sound_play(asset_get("sfx_syl_fstrong"), false, noone, 0.7, 1.2);
		}
	}
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_shovel_swing_heavy1"), false, noone, 0.7, 0.9);
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.8, 1.6);
			sound_play(asset_get("sfx_syl_fstrong"), false, noone, 1, 1);
			spawn_base_dust( x - (12 * spr_dir), y, "dash_start", spr_dir);
			spawn_base_dust( x + (12 * spr_dir), y, "dash_start", -spr_dir);
			if (strongProjRune){
				var dogProj = create_hitbox( AT_USTRONG, 3, x+(4*spr_dir), y-72 );
				dogProj.vsp -= (strong_charge/14)
			}
		}
	}
	if (window == 4 && !strongProjRune){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_hit_fx( x + (40 * spr_dir), y - 120, 144 );
		}
	}
}

//Down Strong
if (attack == AT_DSTRONG){
	if (window == 2){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_shovel_hit_med1"), false, noone, 0.9, 1);
			spawn_base_dust( x + (54 * spr_dir), y, "dash_start", -spr_dir);
			spawn_base_dust( x - (12 * spr_dir), y, "dattack", spr_dir);
		}
	}
	if (window == 4){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(asset_get("sfx_charge_blade_swing"), false, noone, 0.9, 1);
			spawn_base_dust( x + (54 * spr_dir), y, "dash", -spr_dir);
			spawn_base_dust( x - (8 * spr_dir), y, "dash", spr_dir);
			if (strongProjRune){
				var bagDStrongRune1 = create_hitbox( AT_FSPECIAL, 1, x+(32*spr_dir), y-42 );
				var bagDStrongRune2 = create_hitbox( AT_FSPECIAL, 1, x+(32*spr_dir), y-42 );
				bagDStrongRune1.spr_dir = -1;
				bagDStrongRune1.hsp = 3;
				bagDStrongRune1.vsp = -10;
				bagDStrongRune1.effect = 0;
				bagDStrongRune1.damage = 2;
				bagDStrongRune1.hitstun_factor = 0.8;
				bagDStrongRune2.spr_dir = 1;
				bagDStrongRune2.hsp = -3;
				bagDStrongRune2.vsp = -10;
				bagDStrongRune2.effect = 0;
				bagDStrongRune2.damage = 2;
				bagDStrongRune2.hitstun_factor = 0.8;
			}
		}
	}
	if (window == 6){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			spawn_hit_fx( x + (58 * spr_dir), y - 16, 144 );
		}
	}
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || (window == 1 && strong_charge != 0) || window == 2 || (window == 3)){
	    hud_offset = 38;
	}
}

//Properties Spawning Projectiles Rune
if ((attack == AT_FSTRONG && (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	|| (attack == AT_USTRONG && (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	|| (attack == AT_DSTRONG && (window == 4 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)))
	){
	if (strongPropertyProjRune){
		if (property1Exists || property2Exists || property3Exists){
			sound_play(asset_get("sfx_plant_shoot"));
		}
		if (property1Exists){
			var bagPropProjRune1 = create_hitbox( AT_FSPECIAL, 1, property1.x, property1.y-12 );
			bagPropProjRune1.spr_dir = spr_dir;
			bagPropProjRune1.hsp = 0;
			bagPropProjRune1.vsp = -12;
			bagPropProjRune1.effect = 0;
			bagPropProjRune1.damage = 2;
			bagPropProjRune1.hitstun_factor = 0.8;
			bagPropProjRune1.length = 40;
			bagPropProjRune1.grav = 0.5;
		}
		if (property2Exists){
			var bagPropProjRune2 = create_hitbox( AT_FSPECIAL, 1, property2.x, property2.y-12 );
			bagPropProjRune2.spr_dir = spr_dir;
			bagPropProjRune2.hsp = 0;
			bagPropProjRune2.vsp = -12;
			bagPropProjRune2.effect = 0;
			bagPropProjRune2.damage = 2;
			bagPropProjRune2.hitstun_factor = 0.8;
			bagPropProjRune2.length = 40;
			bagPropProjRune2.grav = 0.5;
		}
		if (property3Exists){
			var bagPropProjRune3 = create_hitbox( AT_FSPECIAL, 1, property3.x, property3.y-12 );
			bagPropProjRune3.spr_dir = spr_dir;
			bagPropProjRune3.hsp = 0;
			bagPropProjRune3.vsp = -12;
			bagPropProjRune3.effect = 0;
			bagPropProjRune3.damage = 2;
			bagPropProjRune3.hitstun_factor = 0.8;
			bagPropProjRune3.length = 40;
			bagPropProjRune3.grav = 0.5;
		}
	}
}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Neutral Special
if (attack == AT_NSPECIAL){
    if (window == 1){
		if (special_down && pureDoublesRune && window_timer > 9){
			nspecialDice2Value = nspecialDice1Value;
		}
        if (window_timer == 1){
			killDice = false;
			nspecialDice1Value = random_func( 1, 7, true );
			sound_play(sfx_monopoly_ds_dice_shake);
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-4){
			if (doublesCount == 2){
				doublesSameValueManip = random_func( 1, 3, true );
			} else if (doublesCount == 1){
				doublesSameValueManip = random_func( 1, 4, true );
			} else if (doublesCount == 0){
				doublesSameValueManip = random_func( 1, 5, true );
			}
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)-2){
			if (doublesSameValueManip == 1){
				nspecialDice2Value = nspecialDice1Value;
			} else {
				nspecialDice2Value = random_func( 1, 7, true );
			}
		}
        if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sfx_monopoly_ds_dice_shake);
			
			var dice1 = create_hitbox( AT_NSPECIAL, 1, x+(36*spr_dir), y-42 );
			var dice2 = create_hitbox( AT_NSPECIAL, 1, x+(36*spr_dir), y-42 );
			dice1.hsp += 1.1*spr_dir;dice1.vsp += 1.5;
			dice2.hsp -= 1.9*spr_dir;dice2.vsp -= 1.5;	   
		   
			dice1.dice_number = nspecialDice1Value;dice1.dice_number_kind = 1;
		   
			dice2.dice_number = nspecialDice2Value;dice2.dice_number_kind = 2;
        }
    }
	if (window == 3){
		move_cooldown[AT_NSPECIAL] = 150;
	}
}

//Forward Special
if (attack == AT_FSPECIAL){
	//
	if (window == 1){
		if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH) && window_timer > 2){
			
			// Throwing Properties when touching one
			if (!free){
				if (touchingProperty1 || touchingProperty2 || touchingProperty3){
					//print("mario");
					touchingAnyPropFSpec = true;
					//print("mario");
					if (touchingProperty1){
						removeProperty(1);
						fspec_grabbed_property = 1;
					} else if (!touchingProperty1){
						if (touchingProperty2){
							removeProperty(2);
							fspec_grabbed_property = 2;
						} else if (!touchingProperty2){
							if (touchingProperty3){
								removeProperty(3);
								fspec_grabbed_property = 3;
							}
						}
					}
					set_attack(AT_FSPECIAL_2);
				}
			}
			if (window_timer > 3){
			if (currCash < fspecialCashRequired && attack != AT_FSPECIAL_2 && touchingAnyPropFSpec == false){
				window = 4;
				window_timer = 0;
				set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
				fspecialNoCashTextTimer = 60;
				sound_play(asset_get("sfx_shop_invalid"));
				move_cooldown[AT_FSPECIAL] = 75;
			}
			}
		}
		
		if (window_timer == 4){
			sound_play(asset_get("sfx_spin"));
		}
		
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (currCash >= fspecialCashRequired){
				currCash -= fspecialCashRequired;
				sound_play(asset_get("sfx_shop_buy"));
				var moneyBag_proj = create_hitbox( AT_FSPECIAL, 1, x+(32*spr_dir), y-42 );
				//===========
				//Changing Speed of Projectile
				if (up_down && !down_down){
					fspecProj_speedChange = 3.6;
				} else if (!up_down && down_down){
					fspecProj_speedChange = -2.2;
				} else if ((!up_down && !down_down) || (up_down && down_down)) {
					fspecProj_speedChange = 0;
				}
				moneyBag_proj.hsp += -fspecProj_speedChange*spr_dir;
				moneyBag_proj.vsp += -fspecProj_speedChange;
				moneyBag_proj.effect = 69420;
				//===========
			} else {
				//fspecialNoCashTextTimer = 60;
				//sound_play(asset_get("sfx_shop_invalid"));
			}
		}
	} else {
		touchingAnyPropFSpec = false;
	}
	if (window == 3){
		move_cooldown[AT_FSPECIAL] = 75;
		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
	}
}

if (attack == AT_FSPECIAL_2){
	touchingAnyPropFSpec = false;
	if (window == 1){
		//print("luigi: " + string(fspec_grabbed_property_housesNum));
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			createProperty(fspec_grabbed_property, 1, fspec_grabbed_property_housesNum);
		}
	} else {
		fspec_grabbed_property = 0;
		fspec_grabbed_property_housesNum = 0;
		//print("mario: " + string(fspec_grabbed_property_housesNum));
	}
}

//Up Special
if (attack == AT_USPECIAL){
	can_wall_jump = true;
	can_fast_fall = false;
	uspecial_attacked_out_of = false;
	move_cooldown[AT_USPECIAL] = 999999;
	if (window == 1){
		dontSpawnUSpecWJvfx = false;
		dontSpawnUSpecADvfx = false;
		vsp *= 0.95;
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_play(sfx_smash_ult_snake_uspec_2);
			spawn_base_dust( x, y + 20, "doublejump", spr_dir);
			if (!free){
				vsp = -1.5;
			}
		}
	}
	if (window == 2){
		if (attack_pressed || (left_stick_pressed || right_stick_pressed || up_stick_pressed || down_stick_pressed)){
			sound_stop(sfx_smash_ult_snake_uspec_2);
			spawn_hit_fx(x, y - 100, 144);
			can_attack = true;
			if (!uspecialBoostRune){
				uspecial_attacked_out_of = true;
			} else {
				uspecial_attacked_out_of = false;
			}
			sound_play(asset_get("sfx_propeller_dagger_release"));
		}
		can_shield = true;
		hsp = clamp(hsp, -2.6, 2.6);
		if (vsp < -4){//>
			vsp = -4;
		}
		if (vsp > (-4 - (uspecialBoostRune * 5))){
			vsp -= .5 + (uspecialBoostRune * .25);
		}
		if (vsp > 9){
			vsp -= 3.5;
		}
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			sound_stop(sfx_smash_ult_snake_uspec_2);
			spawn_hit_fx(x, y - 100, 144);
			dontSpawnUSpecWJvfx = true;
			dontSpawnUSpecADvfx = true;
		}
	}	
	//Hud Offset
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)) || window == 2){
	    hud_offset = 50;
	}
}
if (uspecial_attacked_out_of == true && !has_hit){
	//This basically puts u into pratfall if you attacked out of up b lol
	if (attack == AT_NAIR && window == 3 && window_timer == 17){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_FAIR && window == 3 && window_timer == 22){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_DAIR && window == 3 && window_timer == 22){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_BAIR && window == 3 && window_timer == 19){
		set_state(PS_PRATFALL);
	}
	if (attack == AT_UAIR && window == 3 && window_timer == 17){
		set_state(PS_PRATFALL);
	}
}
if (attack == AT_USPECIAL_2){
	with pHitBox if player_id == other can_hit_self = 1;
	if ((window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))){
	    currCash -= (100 - (100 * pureDoublesRune));
	}
}
//Down Special: Property Management
if (attack == AT_DSPECIAL){
	//a
	if (window == 3){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			if (!free){
				set_state(PS_IDLE);
			} else {
				set_state(PS_IDLE_AIR);
			}
		}
	}

	if (totalPropertiesExist != maxPropertiesAllowed){
		//If the max amount of properties hasn't been reached (Building Properties)
		if (window == 1){
			if (totalPropertiesExist != maxPropertiesAllowed){
				if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH)){
					if (currCash < propertyBuildCashRequired){
						window = 10;
						window_timer = 0;
						fspecialNoCashTextTimer = 60;
						sound_play(asset_get("sfx_shop_invalid"));
						move_cooldown[AT_DSPECIAL] = 60;
					}
				}
			}
			//Checking to see if all 3 properties exist yet.
			if (totalPropertiesExist != maxPropertiesAllowed && currCash >= propertyBuildCashRequired){
				if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
					//A property doesn't exist yet.
					if(!property1Exists
					|| !property2Exists
					|| !property3Exists){
						if (!property1Exists){
							createProperty(1, 0, 0);
						} else if (!property2Exists){
							createProperty(2, 0, 0);
						} else if (!property3Exists){
							createProperty(3, 0, 0);
						}
					}
				} else {
					if (currCash < propertyBuildCashRequired){//>
						window = 10;
						window_timer = 0;
						fspecialNoCashTextTimer = 60;
						sound_play(asset_get("sfx_shop_invalid"));
						move_cooldown[AT_DSPECIAL] = 60;
					}
				}
			}
		}
	}
	else
	{
	if (totalPropertiesExist == maxPropertiesAllowed){
	//If the max amount of properties has been reached (Upgrading Properties)
		if (window == 1){
			window = 4;
			window_timer = 0;
			set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 6);
		}
		if (window == 4){
			if (!touchingProperty1 && !touchingProperty2 && !touchingProperty3){
				window = 10;
				window_timer = 0;
				move_cooldown[AT_DSPECIAL] = 60;
			}
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
				if (currCash >= propertyUpgradeCashRequired){
					if (touchingProperty1 || touchingProperty2 || touchingProperty3){
						if (touchingProperty1 && property1.numberOfHouses < 5){
							upgradeProperty(1);
						} else if (!touchingProperty1 || property1.numberOfHouses >= 5){
							if (touchingProperty2 && property2.numberOfHouses < 5){
								upgradeProperty(2);
							} else if (!touchingProperty2 || property2.numberOfHouses >= 5){
								if (touchingProperty3 && property3.numberOfHouses < 5){
									upgradeProperty(3);
								} else if (!touchingProperty3 || property3.numberOfHouses >= 5){
									//print("oops");
									window = 10;
									window_timer = 0;
								}
							}
						}
					} else if (!touchingProperty1 && !touchingProperty2 && !touchingProperty3){
						//print("oops");
						window = 10;
						window_timer = 0;
					}
				} else {
					window = 10;
					window_timer = 0;
					fspecialNoCashTextTimer = 60;
					sound_play(asset_get("sfx_shop_invalid"));
					move_cooldown[AT_DSPECIAL] = 60;
				}
			} else {
				if (!touchingProperty1 && !touchingProperty2 && !touchingProperty3){
					window = 10;
					window_timer = 0;
					move_cooldown[AT_DSPECIAL] = 60;
				}
			}	
		}	
	}
}
}


//Taunt
if (attack == AT_TAUNT){
	if (window == 1){
		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
			//currCash += 1000;
		}
	}
	if (window == 3){
		if (taunt_down){
			window_timer = 1;
		}
	}
}

//--------------------------------------------

//Supersonic's Base Cast Dust Function
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
	
	case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
    case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": dlen = 21; dfx = 16; dfg = 0; break;
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

//--------------------------------------------

// Creating Property Function

#define createProperty(propertyNumber, thrown, houses)

var XSpawnCoords = x+0*spr_dir;
var YSpawnCoords = y - 4;

if (propertyNumber == 1){
	property1 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1");
	property1.propertyNumber = 1;
	property1.numberOfHouses = houses;
	property1.decayTimer = 900;
	if (property1HouseStartRune){
		property1.numberOfHouses += 1;
	}
	if (thrown == 0){
		property1.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property1.vsp = -18;
			property1.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property1.vsp = -10;
			property1.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property1.vsp = -14;
			property1.hsp = 4 * spr_dir;
		}
	}
} else if (propertyNumber == 2){
	property2 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1"); 
	property2.propertyNumber = 2;
	property2.numberOfHouses = houses;
	property2.decayTimer = 900;
	if (property1HouseStartRune){
		property2.numberOfHouses += 1;
	}
	if (thrown == 0){
		property2.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property2.vsp = -18;
			property2.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property2.vsp = -10;
			property2.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property2.vsp = -14;
			property2.hsp = 4 * spr_dir;
		}
	}
} else if (propertyNumber == 3){
	property3 = instance_create(XSpawnCoords, YSpawnCoords, "obj_article1"); 
	property3.propertyNumber = 3;
	property3.numberOfHouses = houses;
	property3.decayTimer = 900;
	if (property1HouseStartRune){
		property3.numberOfHouses += 1;
	}
	if (thrown == 0){
		property3.vsp = 12;
	} else if (thrown == 1){
		if (((left_down || up_down) && !(right_down || down_down) && spr_dir == 1) || (!(left_down || down_down) && (right_down || up_down) && spr_dir == -1)){
			property3.vsp = -18;
			property3.hsp = 0 * spr_dir;
		} else if ((!(left_down || up_down) && (right_down || down_down) && spr_dir == 1) || ((left_down || down_down) && !(right_down || up_down) && spr_dir == -1)){
			property3.vsp = -10;
			property3.hsp = 8 * spr_dir;
		} if (!left_down && !right_down & !up_down && !down_down){
			property3.vsp = -14;
			property3.hsp = 4 * spr_dir;
		}
	}
}

if (thrown == 0){
	currCash -= propertyBuildCashRequired;
}
//--------------------------------------------

// Upgrading Property Function

#define upgradeProperty(propertyNumber)

if (propertyNumber == 1){
	property1.numberOfHouses += 1;
	property1.decayTimer = 900;
}

if (propertyNumber == 2){
	property2.numberOfHouses += 1;
	property2.decayTimer = 900;
}


if (propertyNumber == 3){
	property3.numberOfHouses += 1;
	property3.decayTimer = 900;
}

sound_play(sfx_monopoly_pc_property_improve);

spawn_hit_fx(x, y - 20, 302);

currCash -= propertyUpgradeCashRequired;

//--------------------------------------------

// Removing Property Function

#define removeProperty(propertyNumber)

fspec_grabbed_property_housesNum  = 0;

if (propertyNumber == 1){
	if (instance_exists(property1)){
		spawn_hit_fx( x, y - 32, money_hit_fx_sml );
		with(property1){
			other.fspec_grabbed_property_housesNum = numberOfHouses;
		}
		//print("please work: " + string(fspec_grabbed_property_housesNum));
		instance_destroy(property1);
		property1 = noone;
	}
	//print("num of houses: " + string(fspec_grabbed_property_housesNum));
}

if (propertyNumber == 2){
	if (instance_exists(property2)){
		spawn_hit_fx( x, y - 32, money_hit_fx_sml );
		with(property2){
			other.fspec_grabbed_property_housesNum = numberOfHouses;
		}
		instance_destroy(property2);
		property2 = noone;
	}
	//print("num of houses: " + string(fspec_grabbed_property_housesNum));
}

if (propertyNumber == 3){
	if (instance_exists(property3)){
		spawn_hit_fx( x, y - 32, money_hit_fx_sml );
		with(property3){
			other.fspec_grabbed_property_housesNum = numberOfHouses;
		}
		instance_destroy(property3);
		property3 = noone;
	}
	//print("num of houses: " + string(fspec_grabbed_property_housesNum));
}



//--------------------------------------------