// Muno template - [CORE] set_attack

// Edit this file only if you know what you're doing - only user_event15.gml
// contains user-defined content.



if get_attack_value(attack, AG_MUNO_ATTACK_COOLDOWN) != 0 switch (get_attack_value(attack, AG_MUNO_ATTACK_CD_SPECIAL)){
	case 1:
		move_cooldown[attack] = phone_arrow_cooldown;
		break;
	case 2:
		move_cooldown[attack] = phone_invis_cooldown;
		break;
}



if (attack == AT_TAUNT){
	if (joy_pad_idle && phone_practice && (muno_char_id != noone || phone.stage_id != noone)){ // phone
		attack = AT_PHONE;
		phone.state = (phone.state == 0) ? 1 : 6;
		phone.state_timer = 0;
	}
}