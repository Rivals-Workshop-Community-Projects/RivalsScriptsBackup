///

if (my_hitboxID.attack == AT_FSTRONG) {
    parry_lag = 70;
}    

with pHitBox {
	if player_id = other.id {
		destroyed = true 
	}
}
    
    
timestop *= 0.5




ncharge = 0
    

if my_hitboxID.type == 2 {
	parry_lag = 30 + floor(abs(x - hit_player_obj.x)/5)
}

