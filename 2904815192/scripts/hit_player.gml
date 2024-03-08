//hit_player.gml

//if (my_hitboxID.attack == AT_WHATEVER){
//}
//again this is just here so i have it for reference

cashGainMultInc = 0;

//Jab
if (my_hitboxID.attack == AT_JAB){
	if (my_hitboxID.hbox_num == 1){
		hit_player_obj.x -= 12 * spr_dir;
	}
}

//Dash Attack
if (my_hitboxID.attack == AT_DATTACK){
	if (my_hitboxID.hbox_num == 1){
		dattackInitHitboxHit = true;
		sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 1, 1);
	}
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 1, 1.2);
	}
}

//Forward Tilt
if (my_hitboxID.attack == AT_FTILT){
	sound_play(asset_get("sfx_blow_medium1"), false, noone, 0.8, 1.2);
}

//Up Air
if (my_hitboxID.attack == AT_UAIR){
	if (my_hitboxID.hbox_num != 4){
		if (hit_player_obj.y > y && hit_player_obj.y < y - 34){
			hit_player_obj.y -= 7;
		} else if (hit_player_obj.y > y - 34 && hit_player_obj.y < y - 80){
			hit_player_obj.y += 7;
		}
		if (my_hitboxID.hbox_num == 1){
			if (hit_player_obj.y > y){
				hit_player_obj.y -= 26;
			}
		}
	}
}

//Back Air
if (my_hitboxID.attack == AT_BAIR){
	sound_play(asset_get("sfx_shovel_hit_med2"), false, noone, 0.5, 1.1);
}

//Forward Strong
if (my_hitboxID.attack == AT_FSTRONG){
	if (my_hitboxID.hbox_num < 3){//>
		sound_play(asset_get("sfx_shovel_hit_heavy1"), false, noone, 0.6, 1);
	} else {
		sound_play(asset_get("sfx_shovel_hit_light1"), false, noone, 0.6, 1);
		hit_player_obj.x = x + (82 * spr_dir);
		hit_player_obj.y = y - 14;
	}
}

//Up Strong
if (my_hitboxID.attack == AT_USTRONG){
	sound_play(asset_get("sfx_shovel_hit_heavy2"), false, noone, 1, 1);
}

//Down Strong
if (my_hitboxID.attack == AT_DSTRONG){
	if (my_hitboxID.hbox_num == 2){
		sound_play(sfx_monopoly_ds_cash);
		
		var new_hitfx = spawn_hit_fx(((my_hitboxID.x + hit_player_obj.x)/2) + (my_hitboxID.hit_effect_x * my_hitboxID.spr_dir), ((my_hitboxID.y + hit_player_obj.y)/2) + (my_hitboxID.hit_effect_y), money_hit_fx_lrg)
        new_hitfx.depth = hit_player_obj.depth - 1;
	}
}

//Neutral Special
if (my_hitboxID.attack == AT_NSPECIAL){
	//
}

//Forward Special
if (my_hitboxID.attack == AT_FSPECIAL){
	sound_play(sfx_monopoly_ds_cash);
	cashGainMultInc = -1; //-1 means that no cash is given.
}

//Up Special 2
if (my_hitboxID.attack == AT_USPECIAL_2){
	if (hit_player_obj.id == id){
		sound_play(sfx_monopoly_ds_cash);
		sound_play(sfx_monopoly_pc_jail_leave);
		spawn_hit_fx(x, y - 12, 304);
		doublesCount = 0;
		doublesBoostTimer = 0;
	} else {
		hit_player_obj.hsp = 0;
		hit_player_obj.vsp = -3;
		hit_player_obj.state = PS_IDLE_AIR;
	}
}

//Down Special
if (my_hitboxID.attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 6){
		sound_play(asset_get("sfx_war_horn"));
	} else {
		if (propertyAutoUpgradeRune){
			sound_play(asset_get("sfx_shop_buy"));
			var propertyBelongingToHitbox = my_hitboxID.propertyNumber;
			if (propertyBelongingToHitbox == 1){
				with(property1){
					if (numberOfHouses != 5){
						numberOfHouses++;
					}
				}
			} else if (propertyBelongingToHitbox == 2){
				with(property2){
					if (numberOfHouses != 5){
						numberOfHouses++;
					}
				}
			} else if (propertyBelongingToHitbox == 3){
				with(property3){
					if (numberOfHouses != 5){
						numberOfHouses++;
					}
				}
			}
		}
	}
	var propertyBelongingToHitbox = my_hitboxID.propertyNumber;
	if (propertyBelongingToHitbox == 1){
		with(property1){
			decayTimer = decayTimerMax;
		}
	}
	if (propertyBelongingToHitbox == 2){
		with(property2){
			decayTimer = decayTimerMax;
		}
	}
	if (propertyBelongingToHitbox == 3){
		with(property3){
			decayTimer = decayTimerMax;
		}
	}
}

if (doublesBoostTimer != 0){
	if (doublesCount == 1 || doublesCount == 2){
		if (doublesBoostTimer < doublesBoostTimerLength/*>*/){
			doublesBoostTimer += my_hitboxID.damage * 3;
			if (doublesBoostTimer > doublesBoostTimerLength){
				doublesBoostTimer = doublesBoostTimerLength;
			}
		}
	}
}

addCash(cashGainMultInc);

//--------------------------------------------

//Adding Cash Function

#define addCash(incCashMult)

if (doublesBoostTimer != 0 && (doublesCount == 1 || doublesCount == 2)){
	var incCashDoubles = 0.8;
	sound_play(sfx_monopoly_ds_cash, false, noone, 0.6, 1.3);
} else {
	var incCashDoubles = 0;
}

if (hit_player_obj.prev_state == PS_HITSTUN
|| hit_player_obj.prev_state == PS_HITSTUN_LAND
|| hit_player_obj.prev_state == PS_TUMBLE){
	var incHitstunOpp = 0.4;
} else {
	var incHitstunOpp = 0;
}

if (!incCashGainHitRune){
	var incHitstunOpp = 0;
}

if (cashGainMultInc != 1){
	var mario = my_hitboxID.damage;
	var cashMult = (2.4 + incCashDoubles) + ((0.8 + incHitstunOpp) * incCashGainHitRune) + (cashGainMultInc * 0.6);
} else if (cashGainMultInc == 1){
	var mario = 69420;
	var cashMult = 0;
}
currCash += floor(mario*cashMult);

//--------------------------------------------