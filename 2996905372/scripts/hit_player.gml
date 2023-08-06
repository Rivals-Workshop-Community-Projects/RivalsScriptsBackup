// hit_player.gml

// Up Strong
if (my_hitboxID.attack == AT_USTRONG){
	if (my_hitboxID.hbox_num == 1){
		ustrongGrabbedPlayer = hit_player_obj;
	}
}

// ki hit fx overlay
if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		//var kiVFX = spawn_hit_fx(my_hitboxID.x + (18 * my_hitboxID.spr_dir), my_hitboxID.y, kiblast_hit_sml);
		//kiVFX.depth = -20;
	} else if (my_hitboxID.hbox_num == 2){
		var kiVFX = spawn_hit_fx(hit_player_obj.x + (2 * my_hitboxID.spr_dir), my_hitboxID.y, kiblast_hit_lrg);
		//kiVFX.depth = -20;
	}
}
if (my_hitboxID.attack == AT_USTRONG){
	if (my_hitboxID.hbox_num == 3){
		var kiVFX = spawn_hit_fx(x + (4 * spr_dir), y - 132, kiblast_hit_sml);
		kiVFX.depth = -20;
	} else if (my_hitboxID.hbox_num == 2){
		var kiVFX = spawn_hit_fx(x + (4 * spr_dir), y - 132,  kiblast_hit_lrg);
		//kiVFX.depth = -20;
	}
}
if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num == 1){
		var kiVFX = spawn_hit_fx(hit_player.x, hit_player.y, kiblast_hit_lrg);
		//kiVFX.depth = -20;
	}
}
if (my_hitboxID.attack == AT_DSPECIAL){
	if (my_hitboxID.hbox_num == 1){
		var kiVFX = spawn_hit_fx(hit_player.x, hit_player.y, kiblast_hit_lrg);
		//kiVFX.depth = -20;
	}
}

// Neutral Special
if (my_hitboxID.attack == AT_NSPECIAL){
	if (my_hitboxID.hbox_num == 2){
		sound_play(asset_get("sfx_clairen_fspecial_slash"), false, noone, 1, 1.1);
		// OHKO rune
		if (destructoDiscOHKORune){
			nspecOHKOVarOppDMG = 0;
			with (hit_player_obj){
				//print(get_player_damage(player));
				other.nspecOHKOVarOppDMG = get_player_damage(player);
			}
			if (nspecOHKOVarOppDMG >= 100){
				create_hitbox( AT_NSPECIAL, 3, hit_player_obj.x, hit_player_obj.y );
			}
		}
	}
}

// Up Special
if (my_hitboxID.attack == AT_USPECIAL){
	if (my_hitboxID.hbox_num == 1){
		uspecLandedStrongHit = true;
	}
}

// stuff
if (my_hitboxID.attack == AT_NAIR
|| my_hitboxID.attack == AT_DAIR 
|| my_hitboxID.attack == AT_UAIR
|| my_hitboxID.attack == AT_FAIR
|| my_hitboxID.attack == AT_BAIR){
	if (fspecTeleportToOpponentRune){
		fspecUsedAerialOutOfMove = false;
	}
	if (uspecKiBlastRiseRune){
		uspecMoveUsedOutOfEndlag = false;
	}
	fspecRuneTeleportToPlayerID = noone;
}

// combo rune stuff
if (comboChargeRune && nspecStoredCharge == false && my_hitboxID.type == 1){
	if (comboRuneCount != 2){
		comboRuneCount++;
		comboRuneCounter = 60;
	} else if (comboRuneCount == 2){
		sound_play(asset_get("mfx_star"));
		spawn_hit_fx(x, y - 25, 109);
		nspecStoredCharge = true;
		comboRuneCount = 0;
		comboRuneCounter = 0;
	}
}

// fspec teleport stuff
if (fspecTeleportToOpponentRune){
	if (fspecRuneTeleportToPlayerID == noone && my_hitboxID.type == 1 && ((shield_down || shield_pressed) && (attack_down || attack_pressed))){
		fspecRuneTeleportToPlayerID = hit_player_obj;
		fspecTPdecayTimer = 10;
	} else {
		fspecRuneTeleportToPlayerID = noone;
		fspecTeleToOpponent = false;
	}
}

// stone throw (rune)
if (my_hitboxID.attack == AT_EXTRA_1){
	if (my_hitboxID.hbox_num == 1){
		if (my_hitboxID.hitbox_timer >= 40){
			sound_play(sfx_dbfz_blow_heavy2, false, noone, 0.5, 1);
			sound_play(sfx_smash_bros_crack, false, noone, 0.7, 1);
		}
	}
}