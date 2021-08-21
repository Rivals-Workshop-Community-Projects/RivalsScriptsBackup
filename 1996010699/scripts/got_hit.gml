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

//AI DI helper
var temp_angle = get_hitbox_angle(enemy_hitboxID);
var force = enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale;

if(force >= 9 && temp_angle >= 20 && temp_angle <= 50){
	reconsider = true;
} else {
	reconsider = false;
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