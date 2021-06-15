// got_hit.gml
// call when you get hit by a player
// Use hit_player_obj to reference the player object that hit you. 
// Use hit_player to reference which player hit you
// Use enemy_hitboxID to reference the hitbox you were hit with.
// To change the knockback received, edit orig_knock

	usedUspecial = false;
	usedUspecial2 = 0;
	usedFspecial = false;
	chargespike = 0;
	
	
if (attack == AT_FSPECIAL){
	chargedash = 0;
	usedFspecial = false;
}


if (death_chime_sound){
	sound_stop(death_chime_sound);
	death_chime_sound = noone;
}