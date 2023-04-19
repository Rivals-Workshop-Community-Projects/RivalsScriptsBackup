//Rune O Restore Health
if (has_rune("O")){
	if (my_hitboxID.attack == AT_DTHROW || my_hitboxID.attack == AT_FSPECIAL_AIR || my_hitboxID.attack == AT_FTHROW || my_hitboxID.attack == AT_USPECIAL_GROUND || my_hitboxID.attack == AT_UTHROW){
		take_damage(player, -1, -3);
	}
}
