//got_parried.gml
//as the name suggests, this script runs when the player is parried, this can be useful for disabling effects like certain debuffs
//or redirecting the character into certain states

// //normally we would use HG_PROJECTILE_PARRY_STUN in the attack script, but that hitbox index will instantly put us in pratland,
// //this allows us to finish playing the animation first and then being put in pratland
var nm = my_hitboxID.hbox_num;
if (my_hitboxID.attack == AT_FSPECIAL && nm == 1){
	my_hitboxID.can_hit[player] = false
}
if (my_hitboxID.attack == AT_NSPECIAL && nm == 1){
	my_hitboxID.hitbox_timer = 0;
	my_hitboxID.vsp *= sign(my_hitboxID.vsp)
}
if !(my_hitboxID.attack == AT_JAB and (nm == 1 or nm == 2)) and !(attack == AT_NSPECIAL and nm == 1){ 
	lvl = 1; 
	fspecial_hud_timer = fspecial_hud_time;
}
gs[3] = false;