// got_hit.gml
// call when you get hit by a player
// Use hit_player_obj to reference the player object that hit you. 
// Use hit_player to reference which player hit you
// Use enemy_hitboxID to reference the hitbox you were hit with.
// To change the knockback received, edit orig_knock

// Sets current meter to 0 
if (isFspecial){
	LoveMeter[GrappleMode] = 0;
}

// Turns opponents status effects off if Date Girl is in specific states
with (oPlayer){

	if ((other.attack == AT_DTHROW || other.attack == AT_FSPECIAL) && (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR)){
		if (isCandy){
			CandyCounter = 0;
			isCandy = false;
		}
	}

	if ((other.attack == AT_UTHROW || other.attack == AT_FSPECIAL) && (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR)){	
		if (isBalloon){
			BalloonCounter = 0;
			isBalloon = false;
		}
	}

	if ((other.attack == AT_FTHROW || other.attack == AT_FSPECIAL) && (other.state == PS_ATTACK_GROUND || other.state == PS_ATTACK_AIR)){
	
		if (isThorn){
			ThornCounter = 0;
			isThorn = false;
		}
	}
}
