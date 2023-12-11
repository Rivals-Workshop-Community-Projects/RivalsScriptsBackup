//Attack Meter Charging
if (BAR < 15 && hit_player_obj != self){
	BAR += 1;
}

if (BAR < 14 && hit_player_obj != self && has_rune("L")){
	BAR += 1;
}


//Hit FX

