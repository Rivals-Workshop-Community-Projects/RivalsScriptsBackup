if attack == AT_DSPECIAL && free {
	attack = AT_DSPECIAL_AIR;
}

if (attack == AT_NSPECIAL && instance_exists(bubble)){
	attack = AT_EXTRA_1;
}
