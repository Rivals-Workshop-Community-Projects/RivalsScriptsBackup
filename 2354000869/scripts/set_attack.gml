if free and attack = AT_DSPECIAL and !is_gravity_cancel {
	attack = AT_DSPECIAL_AIR
	set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
}

if free and attack = AT_FSPECIAL and !is_gravity_cancel {
	attack = AT_FSPECIAL_AIR
}

if free and attack = AT_NSPECIAL and !is_gravity_cancel {
	attack = AT_NSPECIAL_AIR
}


if attack = AT_USPECIAL{
if damboost {
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
	}
else {
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
	}
}

if attack = AT_DSPECIAL_AIR{
if damboost {
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
	}
else {
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
	set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
	}
}