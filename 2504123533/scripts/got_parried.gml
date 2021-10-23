//sd (This was for losing meter on getting parried, can add back later if needed)
/*
barPoints -= barAmount;
barPoints = clamp(barPoints, 0, 500);
PotionHeldDown = false;
*/



//parry stuff for projectile standards
prat_land_time = 6;
switch (my_hitboxID.attack) {
    case AT_FSTRONG:
		if (my_hitboxID.hbox_num >= 1) {
			set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 7);
			prat_land_time = 40;
		}
        break;
    case AT_DSTRONG:
		if (my_hitboxID.hbox_num >= 1) {
			set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 7);
			prat_land_time = 40;
		}	
        break;
    case AT_USTRONG:
		if (my_hitboxID.hbox_num >= 1) {
			set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 7);
			prat_land_time = 40;
		}	
        break;
    case AT_FTILT:
 		if (my_hitboxID.hbox_num >= 1) {
			set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 7);
			prat_land_time = 40;
		}	   
        break;
    case AT_UAIR:
		if (my_hitboxID.hbox_num >= 1) {
			set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 7);
			prat_land_time = 40;
		}	    
        break;
}