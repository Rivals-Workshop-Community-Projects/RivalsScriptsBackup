//set_attack
//AR

if (attack == AT_NSPECIAL && free){
    attack = AT_NSPECIAL_AIR;
}

if (attack == AT_TAUNT && get_player_color( player ) == 9 || attack == AT_TAUNT && runeF){
    attack = AT_TAUNT_2;
}
if (attack == AT_TAUNT && down_down && state!=PS_RESPAWN){
    attack = AT_TAUNT_3;
}

if (runeG && attack == AT_FTILT){
    attack = AT_EXTRA_1;
	spr_dir = spr_dir * -1;
}

/*
if (runeH && attack==JAB && window==7) {
	attack = AT_DATTACK;
	window = 2;
	window_timer = 0;
}
*/

if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(13);
	}
}