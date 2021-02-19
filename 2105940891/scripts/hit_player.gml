//hit_player 

if (my_hitboxID.attack == AT_JAB || my_hitboxID.attack == AT_UTILT || my_hitboxID.attack == AT_FTILT || my_hitboxID.attack == AT_DTILT || my_hitboxID.attack == AT_DATTACK || my_hitboxID.attack == AT_NAIR || my_hitboxID.attack == AT_FAIR || my_hitboxID.attack == AT_DAIR || my_hitboxID.attack == AT_BAIR || my_hitboxID.attack == AT_UAIR){
	if (dcharge != 3){
		dcharge = dcharge + 1;
	}
	if (ucharge != 3){
		ucharge = ucharge + 1;
	}
	if (ncharge < 120) {
		if (stunTrigger > 1 || stunTrigger < 1){
			if (meterLock < 2){
				ncharge = ncharge + 6;
			}
			
			if (meterLock = 2){
				ncharge = ncharge + 4;
			}
			
			if (meterLock = 3){
				ncharge = ncharge + 2;
			}
		}
	}
}

if (my_hitboxID.attack == AT_FSTRONG || my_hitboxID.attack == AT_USTRONG || my_hitboxID.attack == AT_DSTRONG){
	if (dcharge != 3){
		dcharge = 3;
	}
	if (ucharge != 3){
		ucharge = 3;
	}
	if (ncharge < 120) {
		if (stunTrigger > 1 || stunTrigger < 1){
			if (meterLock < 2){
				ncharge = ncharge + 9;
			}
			
			if (meterLock = 2){
				ncharge = ncharge + 6;
			}
			
			if (meterLock = 3){
				ncharge = ncharge + 4;
			}
		}
	}
}

if (my_hitboxID.attack = AT_FSPECIAL || my_hitboxID.attack = AT_FSPECIAL_2 || my_hitboxID.attack = AT_DSPECIAL || my_hitboxID.attack = AT_DSPECIAL_AIR || my_hitboxID.attack = AT_NSPECIAL || my_hitboxID.attack = AT_USPECIAL || my_hitboxID.attack = AT_EXTRA_2){
	sound_play(asset_get("sfx_clairen_tip_weak"), false, noone, 0.3, 1);
}