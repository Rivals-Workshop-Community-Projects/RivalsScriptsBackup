// got_parried.gml
// called when your hitbox is parried.
// Use hit_player_obj to reference the player object that parried your hitbox. 
// Use hit_player to reference which player parried your hitbox
// Use my_hitboxID to reference the hitbox that was parried

// Deletes curse ticks when opponent parries Mim
with (hit_player_obj){
	if ("mimikyu_curse" in self){
		mimikyu_curse_tick = 0;
		mimikyu_curse = false;
	}
}

if (my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 1){
	if (mim_wisp != noone && instance_exists(mim_wisp)){
		mim_wisp.state = 7;
		mim_wisp.cooldown_timer = 250;
		mim_wisp.active = false;
	}
}