if((state == PS_HITSTUN || state == PS_HITSTUN_LAND) && hitpause){
	time_rift_dmg += enemy_hitboxID.damage;
	
	if (has_rune("K") || runeK) {
	    if(instance_exists(contacthitbox)){
				contacthitbox.destroyed = true;
	    }
	}
}