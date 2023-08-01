//parry.gml
//this script runs when the player parries, this can be useful for parry based interractions

//this line takes the strong charge damage into consideration, useful if you want to include that for mechanics
true_dmg = enemy_hitboxID.damage * lerp(1, 1.6, strong_charge/60);