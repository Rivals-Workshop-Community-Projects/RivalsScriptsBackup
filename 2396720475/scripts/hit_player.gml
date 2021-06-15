// hit_player.gml
// calle when you hit a player
// Use hit_player_obj to reference the player object that was hit. 
// Use hit_player to reference which player you hit
// Use my_hitboxID to reference the hitbox you hit them with
// To change the knockback given, edit hit_player_obj.orig_knock

if (attack == AT_FSPECIAL && window >= 3 && window <= 6){
	window = 7;
	window_timer = 0;
	chargedash = 0;
	
//	vsp = -4;
//	hsp = 5 * spr_dir;
}

if (my_hitboxID.attack = AT_DSPECIAL){
	if (instance_exists(movingbox)){
		if (movingbox.vsp < -4){
			movingbox.vsp = -10;
		}
		else {
			movingbox.vsp = -6;
		}
		movingbox.hsp = clamp((movingbox.hsp * -1) * 100, -4, 4);
	}
}

if (my_hitboxID.attack == AT_USPECIAL){
	if (instance_exists(needleplatform)){
		needleplatform.touched_player = true;
	}
}
