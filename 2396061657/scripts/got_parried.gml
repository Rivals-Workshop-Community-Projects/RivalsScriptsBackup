// got_parried.gml
// called when your hitbox is parried.
// Use hit_player_obj to reference the player object that parried your hitbox. 
// Use hit_player to reference which player parried your hitbox
// Use my_hitboxID to reference the hitbox that was parried

// Sets current meter to 0 
if (attack == AT_FSPECIAL){
	LoveMeter = 0;
}

// Turns opponents status effects off
with (hit_player){

	if (isCandy){
		CandyCounter = 0;
		isCandy = false;
		CCheck = 0;
		candy_id = noone;
	}

	if (isBalloon){
		BalloonCounter = 0;
		isBalloon = false;
		balloon_id = noone;
	}
	
	if (isThorn){
		ThornCounter = 0;
		isThorn = false;
		thorn_id = noone;
	}
	
	if (isRibbon){
		RibbonCounter = 0;
		isRibbon = false;
		ribbon_id = noone;
	}	

}
