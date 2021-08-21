//got_parried.gml

switch (my_hitboxID.attack){
	case AT_JAB:
		if (window < 6){
			window = 7
			window_timer = 0
			destroy_hitboxes();
		}
		break;
	case AT_NSPECIAL:
		vsp = -5
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
	case AT_FSPECIAL:
		vsp = -5
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
	case AT_DSPECIAL:
		vsp = -5
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
}