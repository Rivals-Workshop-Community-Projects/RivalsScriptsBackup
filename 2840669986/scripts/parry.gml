// parry.gml

// code to prevent broom hatter from getting parry invince from parrying her own vacuum
if (hit_player == player){
	if (enemy_hitboxID.attack == AT_DSPECIAL_2){
		invince_time = 0;
	}
}

print(hit_player);
print(player);