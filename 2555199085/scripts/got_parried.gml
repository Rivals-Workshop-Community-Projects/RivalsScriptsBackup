//
if (my_hitboxID.attack == AT_EXTRA_2) {
	plantCooldown = 120
	plantMaxCooldown = 120
	if plant[0] != -4 {
		plant[0].stateTimer = 0
		plant[0].plantState = 4
		plant[0].plantWindow = 0
		plant[0].plantWindowTimer = 0
	}
}
if (my_hitboxID.attack == AT_DATTACK) {
	hsp = 0
}



