// got_hit.gml
// call when you get hit by a player
// Use hit_player_obj to reference the player object that hit you. 
// Use hit_player to reference which player hit you
// Use enemy_hitboxID to reference the hitbox you were hit with.
// To change the knockback received, edit orig_knock

// Decreases curse tick by 1 when opponent hits Mim
with (hit_player_obj){
	if ("mimikyu_curse" in self){
		mimikyu_curse_tick = clamp(mimikyu_curse_tick - 1, 0, 3);
		mimikyu_curse = false;
	}
}