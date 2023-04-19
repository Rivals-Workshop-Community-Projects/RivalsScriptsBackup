//Alt Sword Attacks

//Fair
if (attack == AT_FAIR && SWORD == 2){
	attack = AT_FSPECIAL_2;
}

if (attack == AT_FAIR && SWORD == 3){
	attack = AT_FSPECIAL_AIR;
}


//Nair
if (attack == AT_NAIR && SWORD == 2){
	attack = AT_USTRONG_2;
}

if (attack == AT_NAIR && SWORD == 3){
	attack = AT_UTHROW;
}


//Dspecial
if (attack == AT_DSPECIAL && window == 1 && SWORD == 2){
	attack = AT_DSPECIAL_2;
}

if (attack == AT_DSPECIAL && window == 1 && SWORD == 3){
	attack = AT_DSPECIAL_AIR;
}


//Dattack
if (attack == AT_DATTACK && SWORD == 2){
	attack = AT_USPECIAL_2;
}

if (attack == AT_DATTACK && SWORD == 3){
	attack = AT_USPECIAL_GROUND;
}


//Jab
if (attack == AT_JAB && SWORD == 2){
	attack = AT_DSTRONG_2;
}

if (attack == AT_JAB && SWORD == 3){
	attack = AT_DTHROW;
}


//Fstrong
if (attack == AT_FSTRONG && SWORD == 2){
	attack = AT_FSTRONG_2;
}

if (attack == AT_FSTRONG && SWORD == 3){
	attack = AT_FTHROW;
}



//Nspecial
if (attack == AT_NSPECIAL && ITEM == 2){
	attack = AT_EXTRA_1;
}

if (attack == AT_NSPECIAL && ITEM == 3){
	attack = AT_EXTRA_2;
}

if (attack == AT_NSPECIAL && ITEM == 4){
	attack = AT_EXTRA_3;
}

if (attack == AT_NSPECIAL && ITEM == 5){
	attack = AT_TAUNT_2;
}

if (attack == AT_NSPECIAL && ITEM == 6){
	attack = AT_NSPECIAL_2;
}

if (attack == AT_NSPECIAL && ITEM == 7){
	attack = AT_NSPECIAL_AIR;
}




