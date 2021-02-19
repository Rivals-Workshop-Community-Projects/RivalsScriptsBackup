if(state_cat == SC_HITSTUN){
	nairbounceHitCheck = false;
	fspecialTimer = 0;
	chiefcase = false;
	holdingTimer = 0;
	landTime = 0;
	taxiLanded = false;
	taxiAirStart = false;
	if(char_height != 44){
		char_height = 44;
	}
	setNextItem();
}

#define setNextItem
{
	r = random_func(0, numItemsAvailable, true);
	if(IDLockedIn == true && item[ID_chosen, 7] == false){
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