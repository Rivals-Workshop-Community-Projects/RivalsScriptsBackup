//update

if (attack == AT_DSPECIAL && free){
    attack = AT_DSPECIAL_AIR;
}

if (attack == AT_FSPECIAL && free && fTrigger == 0){
    attack = AT_FSPECIAL_AIR;
}

if (attack == AT_FSPECIAL && free && fTrigger == 1){
    attack = AT_FSPECIAL_2;
	fTrigger = 0;
}
