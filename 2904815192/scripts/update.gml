//update.gml

//practice mode stuff
if (get_match_setting(SET_PRACTICE)){
	if (up_down && taunt_down){
		currCash += 2;
	}
}

// rune
if (passiveCashGainRune){
	if (get_gameplay_time() mod 15 == 0){
		currCash += 1;
	}
}

// altering Dream Nail Dialogue for The Knight (Reiga) if Mr Monopoly is on Monopoly City
if (isOnMonopolyCity){
	knight_compat_dream = 
		[
			"This filthy bug needs to go! It's lowering my property rent!",
			"You're in my city now! I've invested lots into the buildings here, and once that... thing goes there... hohoho, I'll be swimming in cash!",
			"Don't think you can just waltz away without giving me some rent for seeing me!"
		]
}

if (fspecialNoCashTextTimer != 0){
	fspecialNoCashTextTimer -= 1;
}
if (!free){
	if(!inJail){
		move_cooldown[AT_USPECIAL] = 0;
	}
	if (state != PS_LANDING_LAG){
		uspecial_attacked_out_of = false;
	} else if (state == PS_LANDING_LAG && !has_hit && uspecial_attacked_out_of){
		set_state(PS_PRATLAND);
		uspecial_attacked_out_of = false;
	}
}
//state stuff
switch (state){
	case PS_WALL_JUMP:
		//
		move_cooldown[AT_USPECIAL] = 0;
		if (state_timer == 3){
			sound_play(djump_sound);
			sound_play(land_sound, false, noone, 0.8, 1.6);
			sound_play(asset_get("sfx_jumpground"), false, noone, 0.8, 1.6);
		}
		if (state_timer == 0){
			if (attack == AT_USPECIAL && !dontSpawnUSpecWJvfx){
				attack = noone;
				sound_stop(sfx_smash_ult_snake_uspec_2);
				spawn_hit_fx(x, y - 100, 144);
			}
		}
		break;
	case PS_LANDING_LAG:
		//
		sound_stop(asset_get("sfx_swipe_medium2"));
		set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
		break;
	case PS_AIR_DODGE:
		//	
		if (state_timer == 0){
			if (attack == AT_USPECIAL && !dontSpawnUSpecADvfx){
				sound_stop(sfx_smash_ult_snake_uspec_2);
				spawn_hit_fx(x, y - 100, 144);
				attack = noone;
			}
		}
		break;
	case PS_WAVELAND:
		//
		move_cooldown[AT_USPECIAL] = 0;
		break;
}
//
//-----------------
//Dice Stuff
var hBoxRef = asset_get("pHitBox");
with (hBoxRef){
	if (other.id == player_id){
		if (attack == AT_NSPECIAL){
			if (dice_number_kind == 1){
				if (diceState == 2){
					other.dice1Landed = true;
				}
			}
			if (dice_number_kind == 2){
				if (diceState == 2){
					other.dice2Landed = true;
				}
			}
			if (diceState == 2){
				if (hitbox_timer == 150){
					other.killDice = true;
				}
				if (place_meeting(x,y, asset_get("pHitBox"))){
				//if (collision_rectangle(x - 60,y + 1,x + 60,y - 1, asset_get("pHitBox"), true, true )){
					var tmp_hb_id = instance_place(x,y, asset_get("pHitBox"))
					if (tmp_hb_id.player_id == player_id){
						if (tmp_hb_id.hbox_num == 1 && hbox_num == 1){
							if (tmp_hb_id.type == type){
								if (tmp_hb_id.attack == AT_NSPECIAL){
									if (tmp_hb_id.x < x){
										tmp_hb_id.x -= 18;
										x += 18;
									} else if (tmp_hb_id.x == x){
										if (tmp_hb_id.dice_number_kind > dice_number_kind){
											x -= 20;
										}
									}
								}
							}
						}
					} else {
						//
					}
				}
			}
			other.move_cooldown[AT_NSPECIAL] = 40;			
			var blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
			var blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
			var blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
			var blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
			if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
				other.killDice = true;
				sound_play(asset_get("mfx_star"));				
				destroyed = true;
				instance_destroy();
				exit;
			}
			// why do i subject myself to this
			with(other){
				if (killDice == true){
					killDice = false;
					var hBoxRef = asset_get("pHitBox");
					with (hBoxRef){
						if (other.id == player_id){
							if (attack == AT_NSPECIAL){
								destroyed = true;
							}
						}
					}
				}
			}
			with(other){
				if (dice1Landed && dice2Landed){
					var hBoxRef = asset_get("pHitBox");
					with (hBoxRef){
						if (other.id == player_id){
							if (attack == AT_NSPECIAL && type == 2 && diceState == 2 && !free && dice_number_kind == 1){
								other.diceLifetime++;
								//print(other.diceLifetime);
								if (other.diceLifetime > 80){
									//print("Why am I not dead yet");
									other.killDice = true;
									other.diceLifetime = -90;
									if (dice_number_kind == 1 && dice_number_kind != 2){
										other.calculateDoubles = true;
									}
								}
							} else if (attack == AT_NSPECIAL && diceState == 1){
								other.diceLifetime = 0;
							}
						}
					}
				}
			}
		}
	}
}
if (diceParried != 0){
	diceParried--;
	move_cooldown[AT_NSPECIAL] = 120;
}

//print("nspec cooldown: " + string(move_cooldown[AT_NSPECIAL]));
//print("doubles timer: " + string(doublesBoostTimer));

if !(url == 2904815192) {
	player = -1;
}

if (calculateDoubles == true){
	calculateDoubles = false; //im very bad at coding
	//print(nspecialDice1Value);
	//print(nspecialDice2Value);
	if (nspecialDice1Value == nspecialDice2Value){
		sound_stop(sfx_monopoly_ds_doubles);
		sound_play(sfx_monopoly_ds_doubles);
		calculateDoubles = false;
		doublesCount++;
		doublesBoostTimer += doublesBoostTimerLength; // value can be changed in init
		
		if (doublesCount == 3){
			sound_stop(sfx_monopoly_ds_doubles);
			sound_play(sfx_monopoly_pc_jail);
			spawn_hit_fx(x, y - 14, 130);
			doublesBoostTimer = doublesBoostTimerLength * 1.5;
		}
	} else {
		sound_stop(sound_get("mfx_unstar"));
		sound_play(asset_get("mfx_unstar"));
		doublesCount = 0;
		doublesBoostTimer = 0;
		calculateDoubles = false;
	}
	calculateDoubles = false;
}
if (nspecialDice1Value < 1){
	nspecialDice1Value = 1;
}
if (nspecialDice2Value < 1){
	nspecialDice2Value = 1;
}
//>
if (doublesUsage == true){
	if (doublesCount == 3){
		inJail = true;
	} else {
		inJail = false;
	}
} else {
	inJail = false;
}

if (doublesBoostTimer != 0){
	if (doublesCount == 1 || doublesCount == 2){
		if (!hitpause){
			if (diceAfterimages != diceAfterimagesMaxTimer-1){
				diceAfterimages++;
			} else {
				diceAfterimages = 0;
			}
			if (diceAfterimages == 0){
				var afterimage = instance_create(x, y, "obj_article2");
				afterimage.spriteUsed = sprite_index;
				afterimage.animFrame = image_index;
				afterimage.currDir = spr_dir;
			}
		}
	}
} else {
	diceAfterimages = 0;
}

// Boosting Stats if You got a Double
if (doublesBoostTimer != 0){
	doublesBoostTimer--;
	doublesUsage = true;
	//move_cooldown[AT_NSPECIAL] = 4;
	if (doublesCount == 1 || doublesCount == 2){ // not jail
		//doubles stats
		doublesWalkSpeedInc = 1 * doublesCount;
		doublesDashStartSpeedInc = .45 * doublesCount;
		doublesDashSpeedInc = .6 * doublesCount;
		doublesAirAccelInc = .25 * doublesCount;
		doublesAirMaxSpeedInc = .5 * doublesCount;
		doublesLeaveGroundMaxInc = .4 * doublesCount;
		
		walk_speed = 3 + doublesDashStartSpeedInc; //keep these variables stable when not in doubles (note to myself)
		initial_dash_speed = 6.85 + doublesDashSpeedInc;
		dash_speed = 5.5 + doublesWalkSpeedInc;
		air_accel = .3 + doublesAirAccelInc;
		air_max_speed = 4.5 + doublesAirMaxSpeedInc;
		leave_ground_max = 5.2 + doublesLeaveGroundMaxInc;
	} else if (doublesCount == 3){ //jail
		//
		//jail stats
		doublesWalkSpeedInc = -.3;
		doublesDashStartSpeedInc = -.85;
		doublesDashSpeedInc = -.2;
		doublesAirAccelInc = -.1;
		doublesAirMaxSpeedInc = -.05;
		doublesLeaveGroundMaxInc = -.2;
		
		var cdAmount = 4;
		move_cooldown[AT_JAB] = cdAmount;
		move_cooldown[AT_DATTACK] = cdAmount;
		move_cooldown[AT_FTILT] = cdAmount;
		move_cooldown[AT_UTILT] = cdAmount;
		move_cooldown[AT_DTILT] = cdAmount;
		move_cooldown[AT_NAIR] = cdAmount;
		move_cooldown[AT_FAIR] = cdAmount;
		move_cooldown[AT_BAIR] = cdAmount;
		move_cooldown[AT_UAIR] = cdAmount;
		move_cooldown[AT_DAIR] = cdAmount;
		move_cooldown[AT_FSTRONG] = cdAmount;
		move_cooldown[AT_USTRONG] = cdAmount;
		move_cooldown[AT_DSTRONG] = cdAmount;
		move_cooldown[AT_NSPECIAL] = cdAmount;
		move_cooldown[AT_FSPECIAL] = cdAmount;
		move_cooldown[AT_DSPECIAL] = cdAmount;
		
		walk_speed = 3 + doublesDashStartSpeedInc; //keep these variables stable when not in doubles (note to myself)
		initial_dash_speed = 6.85 + doublesDashSpeedInc;
		dash_speed = 5.5 + doublesWalkSpeedInc;
		air_accel = .3 + doublesAirAccelInc;
		air_max_speed = 4.5 + doublesAirMaxSpeedInc;
		leave_ground_max = 5.2 + doublesLeaveGroundMaxInc;
	}
} else {
	doublesUsage = false;
	walk_speed = 3; //keep these variables stable when not in doubles (note to myself)
	initial_dash_speed = 6.85;
	dash_speed = 5.5;
	air_max_speed = 4.5;
	air_accel = .3;
	leave_ground_max = 5.2;
}

if (doublesBoostTimer == 1){
	if (doublesCount != 3){
		sound_play(asset_get("sfx_burnend"));
		spawn_hit_fx(x, y - 12, 302);
	} else if (doublesCount == 3){
		sound_play(sfx_monopoly_pc_jail_leave);
		spawn_hit_fx(x, y - 12, 304);
		doublesCount = 0;
	}
}


if (instance_exists(dice1) || instance_exists(dice2)){
	if ((instance_exists(dice1) && !instance_exists(dice2)) || (!instance_exists(dice1) && instance_exists(dice2))){
		if (instance_exists(dice1)){
			with (dice1){
				destroyed = true;
			}
		}
		if (instance_exists(dice2)){
			with (dice2){
				destroyed = true;
			}
		}
		move_cooldown[AT_NSPECIAL] = 10;
	}
}

//-----------------
//Property Stuff
if (instance_exists(property1)){
	property1Exists = 1;
	
	if (property1.numberOfHouses != 6){
		if (collision_rectangle(x-36, y-6, x+(36), y+60, property1, 0, 1)){
			//print("mario");
			touchingProperty1 = true;
		} else {
			touchingProperty1 = false;
		}
	} else {
		touchingProperty1 = false;
	}
	
} else {
	property1Exists = 0;
}

if (instance_exists(property2)){
	property2Exists = 1;
	if (property2.numberOfHouses != 6){
		if (collision_rectangle(x-36, y-6, x+(36), y+60, property2, 0, 1)){
			//print("mario 2");
			touchingProperty2 = true;
		} else {
			touchingProperty2 = false;
		}
	} else {
		touchingProperty2 = false;
	}
} else {
	property2Exists = 0;
}

if (instance_exists(property3)){
	property3Exists = 1;
	if (property3.numberOfHouses != 6){
		if (collision_rectangle(x-36, y-6, x+(36), y+60, property3, 0, 1)){
			//print("mario 3");
			touchingProperty3 = true;
		} else {
			touchingProperty3 = false;
		}
	} else {
		touchingProperty3 = false;
	}
} else {
	property3Exists = 0;
}

totalPropertiesExist = (property1Exists + property2Exists + property3Exists);
//-----------------