//got_hit.gml

fspecCharge = 0;
fspecStored = false;

if enemy_hitboxID.type == 1 with (hit_player_obj) {
	sansKR = max(0, sansKR - other.enemy_hitboxID.damage);
	if(sansKR == 0){
		sansKR_timer = 0;
		sansKR_player = noone;
	}
}

with(pHitBox) if player_id == other && type == 2 && attack == AT_DTILT {
	destroyed_next = true;
}