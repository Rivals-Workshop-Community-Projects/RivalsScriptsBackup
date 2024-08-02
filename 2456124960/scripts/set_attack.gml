if (attack == AT_NSPECIAL && crystalOut == 1) {
	attack = AT_NSPECIAL_2;
	clear_button_buffer(PC_SPECIAL_PRESSED);
	strong_down = special_down;
}


if (attack == AT_NSPECIAL && free) {attack = AT_NSPECIAL_AIR;}
if (attack == AT_USPECIAL && !free && onPlatform == true) {attack = AT_USPECIAL_2;}
if (attack == AT_USPECIAL && !free && onPlatform == false) {attack = AT_USPECIAL_GROUND;}

if (attack == AT_TAUNT && get_player_color(player) == 22 && down_down - up_down == 0) {
	attack = AT_TAUNT_2;
}

if (attack == AT_TAUNT && down_down - up_down < 0 && has_rune("A")) {
	attack = AT_EXTRA_1;
}
