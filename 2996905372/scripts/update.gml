//update

//print(fspecTeleToOpponent);
//print("opp tele:" + string(fspecRuneTeleportToPlayerID));
//print("opp dec timer:" + string(fspecTPdecayTimer));

// forced platland after hitfalling an aerial out of specials
if (state == PS_LANDING_LAG){
	if (attack == AT_NAIR
	|| attack == AT_FAIR
	|| attack == AT_BAIR
	|| attack == AT_UAIR
	|| attack == AT_DAIR){
		if (fspecUsedAerialOutOfMove || uspecMoveUsedOutOfEndlag){
			//print("yeah");
			fspecUsedAerialOutOfMove = false;
			uspecMoveUsedOutOfEndlag = false;
			set_state(PS_PRATLAND);
		}
	}
}

if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
	move_cooldown[AT_USPECIAL] = 0;
	if (move_cooldown[AT_FSPECIAL] > 120){
		move_cooldown[AT_FSPECIAL] = 45;
	}
	if (state == PS_HITSTUN || state == PS_WALL_JUMP){
		move_cooldown[AT_FSPECIAL] = 0;
	}
	fspecUsedAerialOutOfMove = false;
	uspecMoveUsedOutOfEndlag = false;
}

if (move_cooldown[AT_DSPECIAL] == 1){
	spawn_hit_fx(x, y - 25, 109);
	sound_play(sfx_dbfz_teleport_end);
}

// changing outline col for storing destructo disk
if (sprite_index != sprite_get("nspecial") && sprite_index != sprite_get("nspecial_air") && nspecStoredCharge){
	var outlineCol = (sin(get_gameplay_time() * 0.1) * -50) + 50;
	var maxThreshholdForColsThatChangeOutline = 50;
	//print(outlineCol);
	if (get_player_color(player) != 7 && get_player_color(player) != 17){
		outline_color = [outlineCol * 1.67, outlineCol, 0];
	} else if (get_player_color(player) == 7){
		if (outlineCol >= maxThreshholdForColsThatChangeOutline){
			outline_color = [83, 122, 62];
		} else {
			outline_color = [35, 67, 49];
		}
	} else if (get_player_color(player) == 17){
		if (outlineCol >= maxThreshholdForColsThatChangeOutline){
			outline_color = [76*2, 53*2, 0];
		} else {
			outline_color = [76, 53, 0];
		}
	}
} else {
	if (get_player_color(player) == 7){//>
		outline_color = [35, 67, 49];
	} else if (get_player_color(player) == 17){
		outline_color = [76, 53, 0];
	} else {
		outline_color = [0, 0, 0];
	}
}
init_shader();

// rune stuff
if (comboChargeRune && nspecStoredCharge == false){
	if (comboRuneCounter != 0 && !hitpause){
		comboRuneCounter--;
	}
	if (comboRuneCounter == 1){
		comboRuneCount = 0;
	}
	
	//print("Count: " + string(comboRuneCount) + ", Timer: " + string(comboRuneCounter))
}

if (fspecTeleportToOpponentRune){
	if (fspecRuneTeleportToPlayerID != noone){
		if (hitpause){
			if ((shield_down || shield_pressed) && (attack_down || attack_pressed)){
				set_attack(AT_FSPECIAL);
				fspecTeleToOpponent = true;
			}
		}
	}
}
if (fspecTPdecayTimer != 0 && !hitpause && sprite_index != sprite_get("fspecial")){
	fspecTPdecayTimer--;
	if (fspecTPdecayTimer == 1){
		fspecRuneTeleportToPlayerID = noone;
	}
}

// strong armor rune
if (strongsArmorCounterRune){
	if (strongArmorRuneHasBeenHit && !hitpause){
		strongArmorRuneHasBeenHit = false;
		strongArmorRuneActivated = true;
		set_attack(AT_DSPECIAL);
		smash_charging = false;
		window = 5;
		window_timer = 0;
		sound_play(asset_get("sfx_absa_concentrate"));
		sound_play(asset_get("sfx_parry_success"), false, noone, 0.7, 1.15);
		sound_play(asset_get("sfx_abyss_explosion_start"), false, noone, 1, 1);
		//print(window);
		//print(window_timer);
	}
}

// setting aerial stone throw (rune)
if (free && taunt_pressed && up_down && (state == PS_IDLE_AIR || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP)){
	if (tauntStoneRune && move_cooldown[AT_EXTRA_1] == 0){
		set_attack(AT_EXTRA_1);
	}
}