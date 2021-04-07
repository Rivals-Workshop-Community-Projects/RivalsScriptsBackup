//set_attack
//if attack == AT_FSPECIAL && free {
//	attack = AT_FSPECIAL_AIR;
//}

if attack == AT_NSPECIAL && has_rune("B") {
	attack = AT_NSPECIAL_2;
}

//if attack == AT_FSPECIAL && free {attack = AT_FSPECIAL_AIR}

//if attack == AT_FSPECIAL && has_rune("A") {
//	attack = AT_FSPECIAL_2;
//}

if attack == AT_FSTRONG && has_rune("D") {
	attack = AT_FSTRONG_2;
}

if attack == AT_JAB && has_rune("C") {
	attack = AT_EXTRA_2;
}

if attack == AT_FTILT && has_rune("E") {
	attack = AT_EXTRA_1;
}
