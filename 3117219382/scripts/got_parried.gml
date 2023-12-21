//got_parried.gml
//as the name suggests, this script runs when the player is parried, this can be useful for disabling effects like certain debuffs
//or redirecting the character into certain states

// //normally we would use HG_PROJECTILE_PARRY_STUN in the attack script, but that hitbox index will instantly put us in pratland,
// //this allows us to finish playing the animation first and then being put in pratland
if (my_hitboxID.attack == AT_FSPECIAL && my_hitboxID.hbox_num == 1){
	my_hitboxID.can_hit[player] = false
}
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.vsp *= sign(my_hitboxID.vsp)
}