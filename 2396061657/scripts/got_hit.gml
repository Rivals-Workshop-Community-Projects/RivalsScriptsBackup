// got_hit.gml
// call when you get hit by a player
// Use hit_player_obj to reference the player object that hit you. 
// Use hit_player to reference which player hit you
// Use enemy_hitboxID to reference the hitbox you were hit with.
// To change the knockback received, edit orig_knock

// Sets current meter to 0 

if (isFspecial){
	got_hitFspecial = true;
	isFspecial = false;
}

if (enemy_hitboxID.type == 1){
	if (focus_attack){
		focus_attack = false;
		focus_armorbreak = true;
	}
}

if (focus_attack || focus_armorbreak){
	if (enemy_hitboxID.type == 2){
		LoveMeter = clamp(floor(LoveMeter + LoveStorage + (enemy_hitboxID.damage * 8)), 0, 200);
		LoveStorage = 0;
	}
}

// Turns opponents status effects off if Date Girl is in specific states
with (hit_player){
	
//	hitpause = false;
//	hitstop = 0;

	if ((other.attack == AT_DTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isCandy" in self){
			if (isCandy){
				CandyCounter = 0;
				CCheck = 0;
				candy_id = noone;
				isCandy = false;
			}
		}
	}

	if ((other.attack == AT_UTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){	
		if ("isBalloon" in self){
			if (isBalloon){
				BalloonCounter = 0;
				balloon_id = noone;
				isBalloon = false;
			}
		}
	}

	if ((other.attack == AT_FTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isThorn" in self){	
			if (isThorn){
				ThornCounter = 0;
				thorn_id = noone;
				isThorn = false;
			}
		}
	}
	
	if ((other.attack == AT_NTHROW || other.attack == AT_FSPECIAL) && (other.prev_state == PS_ATTACK_GROUND || other.prev_state == PS_ATTACK_AIR)){
		if ("isRibbon" in self){	
			if (isRibbon){
				RibbonCounter = 0;
				ribbon_id = noone;
				isRibbon = false;
			}
		}
	}
}
