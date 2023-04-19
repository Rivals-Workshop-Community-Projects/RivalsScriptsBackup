//Got parried - 'borrowed' this from Iroh.

/*
got_parried.gml – called when your hitbox is parried. Use hit_player_obj to reference the player object who parried your hitbox. Use hit_player to reference which player parried your hitbox (player 1, player 2, etc). Use my_hitboxID to reference the hitbox that was parried.
*/

if(attack == AT_JAB){
	dtparry_timer = 0;
}

if(attack == AT_DSPECIAL || attack == AT_DSPECIAL_AIR ){
    was_parried = true;
}

if(attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 ){
	was_parried = true;
}

if((my_hitboxID.attack == AT_DSPECIAL || my_hitboxID.attack == AT_NSPECIAL) || my_hitboxID.player_id == self){
	invince_time = 0;
	invincible = false;
}