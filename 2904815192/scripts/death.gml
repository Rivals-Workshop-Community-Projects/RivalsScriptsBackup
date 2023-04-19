//death.gml

if (doublesBoostTimer != 0){
	doublesBoostTimer = 2;
}

if (attack == AT_USPECIAL){
	sound_stop(sfx_smash_ult_snake_uspec_2);
}

/*
if (currCash > 200){
	var test = currCash;
	var test2 = currCash/2;

	print(test2);
}
*/

if (instance_exists(property1)){
	property1.shouldDieInstantly = true;
}
if (instance_exists(property2)){
	property2.shouldDieInstantly = true;
}
if (instance_exists(property3)){
	property3.shouldDieInstantly = true;
}
if (!deathCashConvertRune){
	currCash = floor(currCash / 2);
} else if (deathCashConvertRune){
	var MyDamage = get_player_damage( player )
	
	currCash += MyDamage;
}