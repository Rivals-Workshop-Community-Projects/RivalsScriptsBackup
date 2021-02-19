//woag

///#args attack //this entirely commented line serves to not make gmedit angy

switch(attack){
	case AT_FSPECIAL:
		if !(guitar.following || guitar.state == 13) attack = AT_FSPECIAL_2;
	case AT_USPECIAL:
	case AT_DSPECIAL:
		clear_button_buffer(PC_SPECIAL_PRESSED);
		break;
}

if (attack == AT_DSPECIAL && !(guitar.following || guitar.state == 13)) attack = AT_DSPECIAL_2;



user_event(13);