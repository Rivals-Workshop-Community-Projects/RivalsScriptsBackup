///#args attack // this line makes code editors not freak out for some reason

switch attack {
    case AT_DATTACK:
        if move_cooldown[AT_DATTACK] > 0 {
            clear_button_buffer(PC_ATTACK_PRESSED);
            dattack_dan_why = true;
        }
    break;
	case AT_TAUNT:
	if down_down {
	attack = AT_TAUNT_2;
	}
	if up_down {
	attack = AT_EXTRA_1;
	}
	break;
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);