//Changing attacks

if (attack == AT_DSPECIAL && free){
	attack = AT_DSPECIAL_AIR;
}
if (attack == AT_NSPECIAL){
	if (move_cooldown[AT_NSPECIAL] > 0){
	attack = AT_NSPECIAL_2;
	}
}