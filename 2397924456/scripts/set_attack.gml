///#args attack



switch(attack){
	case AT_NAIR:
	case AT_JAB:
		attack = jab_moves[jab_progress];
		reset_attack_value(attack, AG_CATEGORY);
		jab_progress = 0;
		jab_timer = 10;
		break;
}



if legion != noone{

	if (legion.sync || legion.dash_timer && legion.to_player) && !legion.badly_damaged switch(attack){
		case AT_FSPECIAL:
			attack = AT_FTHROW;
			legion.state = PS_ATTACK_AIR;
			legion.state_timer = 0;
			legion.attack = AT_EXTRA_3;
			break;
	}
	
	else switch(attack){
		case AT_FSTRONG:
			attack = AT_FSTRONG_2;
			break;
		case AT_DSTRONG:
			attack = AT_DSTRONG_2;
			break;
		case AT_USTRONG:
			attack = AT_USTRONG_2;
			break;
	}
	
	if attack == AT_USPECIAL{
		if !(legion.sync || legion.dash_timer && legion.to_player){
			attack = AT_USPECIAL_2;
		}
	}
}



if legion.badly_damaged switch(attack){
	case AT_FSTRONG_2:
	case AT_USTRONG_2:
	case AT_DSTRONG_2:
		sound_play(sfx_splatoon_click);
		break;
}



nspecial_cancel_stored = 0;



stopped_sounds = [];



user_event(13);



if attack == AT_TAUNT sound_play(sfx_astral_chain_select_1);