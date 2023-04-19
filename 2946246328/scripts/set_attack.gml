
//if (attack == AT_FSPECIAL) {
//	attack = AT_DATTACK;
//}
if (attack == AT_TAUNT && down_down) {
	attack = AT_TAUNT_2;
}

if (attack == AT_NSPECIAL && free) {
	attack_end();
	attack = AT_NSPECIAL_AIR;
}

if (attack == AT_DSPECIAL && bomb_count) {
	bomb_count -= 1;
	window = 2;
	print(bomb_count)
}

if (attack == AT_USPECIAL) {
	spin_count = 2; //Set to the amount of spins
}

reset_attack_value(attack, AG_NUM_WINDOWS);
/*
if (attack == AT_FSPECIAL && !free) {
	attack = AT_NSPECIAL;
}
if (attack == AT_FSPECIAL && free) {
	attack = AT_NSPECIAL_AIR;
}
