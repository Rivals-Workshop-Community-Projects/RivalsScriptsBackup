//The Suitcase
var tidePods = (item[11, 3] == 1 && item[2, 3] == 1 && get_player_color(player) == 22);
var lordBagel = (foodVoided);
if (attack == AT_DSPECIAL){
	setNextItem();
	breakfastRand = random_func(1, 100, true);
	if(tidePods){
		breakfastVar = 2;
		item[6, 0] = "VENI, ET DUCAM TE";
		item[6, 1] = "AMICUS MEUS";
		item[6, 2] = sprite_get("item_food2");
		item[6, 6] = "yNLYeLR4K20";
	} else if(lordBagel && !tidePods && !bagelEaten && has_rune("I")){
		breakfastVar = 3;
		item[6, 0] = "CURSED BAGEL";
		item[6, 1] = "It's unlucky!";
		item[6, 2] = sprite_get("item_lordbagel");
		item[6, 6] = "HP UP & CURSED DSPECIAL";
	} else {
		if(breakfastRand >= 81){
			breakfastVar = 1;
			item[6, 0] = "ORDINARY BAMBOO";
			item[6, 1] = "It's Bamboo!";
			item[6, 2] = sprite_get("item_bamboo");
			item[6, 6] = "HP UP+";
		} else {
			breakfastVar = 0;
			item[6, 0] = "ORDINARY CARROTS";
			item[6, 1] = "It's Breakfast!";
			item[6, 2] = sprite_get("item_carrot");
			item[6, 6] = "HP UP";
		}
		if(item[22, 7]){
			rlRand = random_func(0, rocketQuotesLength, true);
			item[22, 1] = rlQuote[rlRand];
		}
	}
}

if(attack == AT_NAIR){
	nairbounceDodgeCheck = has_airdodge;
	nairbounceJumpCheck = djumps;
}

if (item[20, 3] == 1 && (attack == AT_FAIR || attack == AT_BAIR) && (left_strong_pressed || right_strong_pressed) && free){
	if(left_strong_pressed){
		spr_dir = -1;
	} else {
		spr_dir = 1;
	}
	attack = AT_FSTRONG;
}

if(attack == AT_FSPECIAL && window == 3 && up_strong_pressed){
	attack = AT_USTRONG;
}

#define setNextItem
{
	r = random_func(0, numItemsAvailable, true);
	if(ID_chosen == 6 && IDs_available[0] != 6){
		IDLockedIn = false;
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	if(IDLockedIn == false){
		ID_chosen = IDs_available[r];
		IDLockedIn = true;
	}
	itempoolUpdated = false;
	newItemHUDRefresh = true;
}