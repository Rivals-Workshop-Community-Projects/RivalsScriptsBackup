if attack == AT_FSPECIAL && attack != AT_FSPECIAL_AIR && free {
	attack = AT_FSPECIAL_AIR;
}

if attack == AT_NSPECIAL && attack != AT_NSPECIAL_AIR && free {
	attack = AT_NSPECIAL_AIR;
}

if attack == AT_USPECIAL && attack != AT_USPECIAL_2 && free {
	attack = AT_USPECIAL_2;
}
