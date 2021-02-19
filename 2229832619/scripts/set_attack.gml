//set_attack

if (attack==AT_NSPECIAL&&free){
	attack = AT_NSPECIAL_AIR;
	reset_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME);
	reset_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH);
	reset_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME);
}