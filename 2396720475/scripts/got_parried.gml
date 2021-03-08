// got_parried.gml
// called when your hitbox is parried.
// Use hit_player_obj to reference the player object that parried your hitbox. 
// Use hit_player to reference which player parried your hitbox
// Use my_hitboxID to reference the hitbox that was parried

if (my_hitboxID.attack == AT_USPECIAL){
	if (instance_exists(needleplatform)){
		instance_destroy(needleplatform);
	}
}

if (my_hitboxID.attack == AT_FSPECIAL){
	chargedash = 0;
	usedFspecial = false;
}