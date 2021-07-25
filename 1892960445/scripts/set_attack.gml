//set_attack
if(down_down && taunt_pressed){
	if((get_player_color(player))==6){
	attack = AT_EXTRA_3;
	window = 1;
	window_timer = 1;
	}
	else{
	attack = AT_TAUNT_2;
	window = 1;
	window_timer = 1;
	}
}

if(useskins && taunt_pressed){
	attack = AT_EXTRA_1;
	window_timer = 0;
}

if(special_pressed && taunt_pressed){
	attack = AT_EXTRA_2;
	window_timer = 0;
}