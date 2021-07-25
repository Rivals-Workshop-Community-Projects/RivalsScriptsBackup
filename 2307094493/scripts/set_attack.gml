
if (free && attack == AT_USPECIAL) {
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -2);
} else {
	reset_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED);
}

if (attack == AT_NSPECIAL) {
	attack = AT_NSPECIAL_AIR;
}

if (attack == AT_FSPECIAL) {
	attack = AT_FSPECIAL_AIR;
}