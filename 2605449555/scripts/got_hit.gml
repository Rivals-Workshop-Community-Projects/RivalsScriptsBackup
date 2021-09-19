//got_hit.gml

if (CannCounterActive == true) {
    if (enemy_hitboxID.type == 2) {
        CannDSpcKB += enemy_hitboxID.kb_value; // sets launch power
	    CannDSpcDmg += enemy_hitboxID.damage; // sets damage
	    enemy_hitboxID.destroyed = true;
	    
	    CannCounterAttack = true;
    } else {
        CannDSpcKB += enemy_hitboxID.kb_value; // sets launch power
	    CannDSpcDmg += enemy_hitboxID.damage; // sets damage
	    CannDSpcMeleeHit = true;
	    CannCounteredEnemyId = hit_player_obj.id;
	    
	    
	    CannCounterAttack = true;
    }
}