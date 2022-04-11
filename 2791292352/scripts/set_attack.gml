if (attack == AT_TAUNT){
    if(down_down){
    attack = AT_TAUNT_2;
    } else if (up_down){
	attack = AT_EXTRA_1;
	}
}

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 2;
user_event(14);