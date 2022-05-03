//got_parried.gml

did_swap_inputs = false;

switch (my_hitboxID.attack){
	case AT_JAB:
		if (window < 6){
			window = 8
			window_timer = 0
			destroy_hitboxes();
		}
		break;
	case AT_NSPECIAL:
		vsp = -5
		hsp = 0
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
	case AT_FSPECIAL:
		vsp = 0
		hsp = 0
		destroy_hitboxes();
		set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7);
		set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 7);
		break;
	case AT_USPECIAL:
		vsp = -7
		hsp = 0
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
	case AT_DSPECIAL:
		vsp = -5
		hsp = 0
		destroy_hitboxes();
		set_state( PS_PRATFALL );
		break;
}