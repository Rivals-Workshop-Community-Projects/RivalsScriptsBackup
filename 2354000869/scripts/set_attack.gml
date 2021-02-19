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